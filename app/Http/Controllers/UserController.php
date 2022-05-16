<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Spatie\Permission\Traits\HasRoles;

class UserController extends Controller
{
    use HasRoles;

    public function manage(Request $request)
    {
        if (empty($request->name)) {
            $user = User::all()->except(Auth::user()->id);
            return view('admin.user.manage', compact('user'));
        } else {
            $this->validate($request, [
                'email' => 'required|unique:users,email',
                'username' => 'required|unique:users,username'
            ]);

            $user = new User;
            $user->name = $request->name;
            $user->email = $request->email;
            $user->alamat = $request->alamat;
            $user->no_hp = $request->no_hp;
            $user->username = $request->username;
            $user->password = bcrypt($request->password);
            $user->save();
            $user->assignRole('admin');
            return redirect('/user/manage')->with('notif', 'Data User Berhasil Ditambah');
        }
    }
}
