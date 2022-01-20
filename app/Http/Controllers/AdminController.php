<?php

namespace App\Http\Controllers;

use App\Coin;
use App\Cwallet;
use Illuminate\Http\Request;

class AdminController extends Controller
{
    public function index()
    {
        $wallet = Cwallet::all();
        $count_wallet = $wallet->count();
        $coin = Coin::all();
        $count_coin = $coin->count();

        return view('admin.dashboard', compact('count_wallet', 'count_coin'));
    }
}
