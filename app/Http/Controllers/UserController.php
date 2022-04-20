<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use Spatie\Permission\Traits\HasRoles;

class UserController extends Controller
{
    use HasRoles;

    // public function manage()
    // {
    //     // TODO manajemen user
    //     $krisar = User::orderBy('created_at', 'DESC')->get();
    //     return view('admin.krisar.manage', compact('krisar'));
    // }
}
