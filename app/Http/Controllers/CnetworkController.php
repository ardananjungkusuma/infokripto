<?php

namespace App\Http\Controllers;

use App\Cnetwork;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class CnetworkController extends Controller
{
    public function index()
    {
        $data_cnetwork = Cnetwork::orderBy('nama_network')->get();
        return view('admin.cnetwork.index', compact('data_cnetwork'));
    }

    public function tambah(Request $request)
    {
        $this->validate($request, [
            'nama_network' => 'required|unique:jenis_network,nama_network',
            'singkatan_network' => 'required'
        ]);

        $cnetwork = new Cnetwork;
        $cnetwork->nama_network = $request->nama_network;
        $cnetwork->singkatan_network = $request->singkatan_network;
        $cnetwork->save();
        return redirect('/cnetwork')->with('notif', 'Data Chain Network Berhasil Ditambah');
    }

    public function edit(Request $request, $id = null)
    {
        if (!$request->nama_network) {
            $cnetwork = Cnetwork::where('id_jenis_network', $id)->get()->first();
            return view('admin.cnetwork.edit', compact('cnetwork'));
        } else {
            $validator = Validator::make($request->all(), [
                'nama_network' => 'required|unique:jenis_network,nama_network',
                'singkatan_network' => 'required'
            ]);

            if ($validator->fails()) {
                return redirect('/cnetwork/edit/' . $request->id_jenis_network)
                    ->withErrors($validator)
                    ->withInput();
            }

            $cnetwork = Cnetwork::where('id_jenis_network', $request->id_jenis_network)->get()->first()
                ->update([
                    'nama_network' => $request->nama_network,
                    'singkatan_network' => $request->singkatan_network
                ]);

            return redirect('/cnetwork')->with('notif', 'Data Chain Network ' . $request->nama_network .  ' Berhasil Diedit');
        }
    }

    public function hapus($id)
    {
        Cnetwork::where('id_jenis_network', $id)->delete();
        return redirect('/cnetwork')->with('notif', 'Sukses Menghapus Chain Network!');
    }

    public function getNetworkByWallet($id)
    {
        $result = DB::table('wallet_network')
            ->join('jenis_network', 'wallet_network.id_jenis_network', '=', 'jenis_network.id_jenis_network')
            ->where('wallet_network.id_wallet', $id)->get();
        echo json_encode($result);
    }
}
