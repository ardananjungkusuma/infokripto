<?php

namespace App\Http\Controllers;

use App\Cnetwork;
use App\Coin;
use App\Cwallet;
use App\Krisar;
use App\Webstats;
use Carbon\Carbon;
use Illuminate\Http\Request;

class AdminController extends Controller
{
    public function index()
    {
        $wallet = Cwallet::all();
        $count_wallet = $wallet->count();
        $coin = Coin::all();
        $count_coin = $coin->count();
        $cnetwork = Cnetwork::all();
        $count_cnetwork = $cnetwork->count();
        $krisar = Krisar::all();
        $count_krisar = $krisar->count();
        $webstats = Webstats::all();
        $count_webstats = $webstats->count();

        return view('admin.dashboard', compact('count_wallet', 'count_coin', 'count_cnetwork', 'count_krisar', 'count_webstats'));
    }

    public function getCountSPK($startDate, $endDate)
    {
        $endDate = strtotime($endDate);
        $endDate = strtotime("+1 day", $endDate);
        $endDateNew = date('Y-m-d', $endDate);
        $start_date = Carbon::parse($startDate)->toDateTimeString();
        $end_date = Carbon::parse($endDateNew)->toDateTimeString();
        // dd($end_date);
        $data = Webstats::whereBetween('created_at', [$start_date, $end_date])->get();
        // dd($data);
        $count_webstats = $data->count();
        echo $count_webstats;
        // dd($count_webstats);
    }
}
