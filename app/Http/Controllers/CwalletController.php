<?php

namespace App\Http\Controllers;

use App\Cwallet;
use App\Walletcoin;
use App\Walletnetwork;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class CwalletController extends Controller
{
    public function index()
    {
        $data_cwallet = Cwallet::all();
        return view('admin.cwallet.index', compact('data_cwallet'));
    }

    public function tambah(Request $request)
    {
        $this->validate($request, [
            'nama_wallet' => 'required|unique:crypto_wallet,nama_wallet',
            'ukuran_aplikasi' => 'required',
            'nft_showcase' => 'required',
            'rating' => 'required',
            'platform_support' => 'required',
            'last_update_data' => 'required',
            'total_user_install' => 'required',
            'link_playstore' => 'required',
        ]);

        $cwallet = new Cwallet;
        $cwallet->nama_wallet = $request->nama_wallet;
        $cwallet->ukuran_aplikasi = $request->ukuran_aplikasi;
        $cwallet->nft_showcase = $request->nft_showcase;
        $cwallet->rating = $request->rating;
        $cwallet->platform_support = $request->platform_support;
        $cwallet->total_user_install = $request->total_user_install;
        $cwallet->last_update_data = $request->last_update_data;
        $cwallet->link_playstore = $request->link_playstore;
        $cwallet->save();
        return redirect('/cwallet')->with('notif', 'Data Crypto Wallet Berhasil Ditambah');
    }

    public function detail($id)
    {
        $dw = Cwallet::find($id);
        $jumlahcoin = Walletcoin::where('id_wallet', $id)->count();
        $jumlahnetwork = Walletnetwork::where('id_wallet', $id)->count();
        $coindata = DB::table('wallet_coin')
            ->join('jenis_coin', 'wallet_coin.id_jenis_coin', '=', 'jenis_coin.id_jenis_coin')->get();
        $networkdata = DB::table('wallet_network')
            ->join('jenis_network', 'wallet_network.id_jenis_network', '=', 'jenis_network.id_jenis_network')->get();
        return view('admin.cwallet.detail', compact('dw', 'jumlahcoin', 'jumlahnetwork', 'coindata', 'networkdata'));
    }

    public function edit(Request $request, $id = null)
    {
        if (!$request->nama_wallet) {
            $dw = Cwallet::find($id);
            return view('admin.cwallet.edit', compact('dw'));
        } else {
            $validator = Validator::make($request->all(), [
                'nama_wallet' => 'required',
                'ukuran_aplikasi' => 'required',
                'nft_showcase' => 'required',
                'rating' => 'required',
                'platform_support' => 'required',
                'last_update_data' => 'required',
                'total_user_install' => 'required',
                'link_playstore' => 'required',
            ]);

            if ($validator->fails()) {
                return redirect('/cwallet/edit/' . $request->id_wallet)
                    ->withErrors($validator)
                    ->withInput();
            }

            $coin = Cwallet::find($request->id_wallet)
                ->update([
                    'nama_wallet' => $request->nama_wallet,
                    'ukuran_aplikasi' => $request->ukuran_aplikasi,
                    'nft_showcase' => $request->nft_showcase,
                    'rating' => $request->rating,
                    'platform_support' => $request->platform_support,
                    'last_update_data' => $request->last_update_data,
                    'total_user_install' => $request->total_user_install,
                    'link_playstore' => $request->link_playstore,
                ]);

            return redirect('/cwallet')->with('notif', 'Data Wallet ' . $request->nama_wallet .  ' Berhasil Diedit');
        }
    }

    public function hapus($id)
    {
        Cwallet::find($id)->delete();
        return redirect('/cwallet')->with('notif', 'Sukses Menghapus Crypto Wallet!');
    }
}
