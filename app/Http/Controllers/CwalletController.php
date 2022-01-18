<?php

namespace App\Http\Controllers;

use App\Cwallet;
use Illuminate\Http\Request;

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
            'nama_wallet' => 'required',
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
        $data_cwallet = Cwallet::find($id);
        return view('admin.cwallet.detail', compact('data_cwallet'));
    }
}
