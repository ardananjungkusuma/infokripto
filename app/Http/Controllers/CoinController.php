<?php

namespace App\Http\Controllers;

use App\Coin;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class CoinController extends Controller
{
    public function index()
    {
        $data_coin = Coin::all();
        return view('admin.coin.index', compact('data_coin'));
    }

    public function tambah(Request $request)
    {
        $this->validate($request, [
            'nama_coin' => 'required|unique:jenis_coin,nama_coin',
            'singkatan_coin' => 'required'
        ]);

        $coin = new Coin;
        $coin->nama_coin = $request->nama_coin;
        $coin->singkatan_coin = $request->singkatan_coin;
        $coin->save();
        return redirect('/coin')->with('notif', 'Data Coin Berhasil Ditambah');
    }

    public function edit(Request $request, $id = null)
    {
        if (!$request->nama_coin) {
            $coin = Coin::where('id_jenis_coin', $id)->get()->first();
            return view('admin.coin.edit', compact('coin'));
        } else {
            $validator = Validator::make($request->all(), [
                'nama_coin' => 'required|unique:jenis_coin,nama_coin',
                'singkatan_coin' => 'required'
            ]);

            if ($validator->fails()) {
                return redirect('/coin/edit/' . $request->id_jenis_coin)
                    ->withErrors($validator)
                    ->withInput();
            }

            $coin = Coin::where('id_jenis_coin', $request->id_jenis_coin)->get()->first()
                ->update([
                    'nama_coin' => $request->nama_coin,
                    'singkatan_coin' => $request->singkatan_coin
                ]);

            return redirect('/coin')->with('notif', 'Data Coin ' . $request->nama_coin .  ' Berhasil Diedit');
        }
    }
}
