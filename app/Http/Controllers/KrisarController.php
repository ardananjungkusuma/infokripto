<?php

namespace App\Http\Controllers;

use App\Krisar;
use Illuminate\Http\Request;

class KrisarController extends Controller
{
    public function index()
    {
        return view('home.krisar');
    }

    public function kirim(Request $request)
    {
        $this->validate($request, [
            'email' => 'required',
            'kategori' => 'required',
            'isi' => 'required'
        ]);

        $krisar = new Krisar;
        $krisar->email_pengirim = $request->email;
        $krisar->kategori = $request->kategori;
        $krisar->isi = $request->isi;
        $krisar->save();
        return redirect('/krisar')->with('notif', 'Kritik/Saran berhasil dikirim');
    }

    public function manage()
    {
        $krisar = Krisar::orderBy('created_at', 'DESC')->get();
        return view('admin.krisar.manage', compact('krisar'));
    }

    public function resolve($id)
    {
        Krisar::where('id_krisar', $id)->get()->first()
            ->update([
                'is_resolved' => "Resolved"
            ]);
        return redirect('/krisar/manage');
    }
}
