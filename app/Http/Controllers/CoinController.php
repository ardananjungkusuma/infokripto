<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CoinController extends Controller
{
    public function index()
    {
        return view('admin.coin.index')
    }
}
