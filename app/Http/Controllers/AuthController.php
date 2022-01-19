<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{

    public function index()
    {
        return redirect('/auth/login');
    }

    public function login(Request $request)
    {
        if (!$request->email) {
            return view('auth.login');
        } else {
            if (Auth::attempt($request->only('email', 'password'))) {
                $user = auth()->user();
                if ($user->hasRole('admin') or $user->hasRole('superadmin')) {
                    return redirect('/admin');
                }
            } else {
                return redirect('/auth/login')->with('notif', 'Invalid Email or Password!');
            }
        }
    }

    public function logout()
    {
        Auth::logout();

        return redirect('/auth/login')->with('notif', 'Successfully Logged Out!');;
    }
}
