@extends('admin.layout.master')
@section('content')
<div class="main-content">
    <div class="container-fluid">
        <div class="row clearfix">
            <div class="col-lg-3 col-md-6 col-sm-12">
                <div class="widget">
                    <div class="widget-body">
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="state">
                                <h6>Crypto Wallet Terdaftar</h6>
                                <h2>{{ $count_wallet }}</h2>
                            </div>
                            <div class="icon">
                                <i class="fa fa-wallet"></i>
                            </div>
                        </div>
                        <small class="text-small mt-10 d-block">Total Crypto Wallet yang ada didatabase.</small>
                    </div>
                    <div class="progress progress-sm bg-danger">
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12">
                <div class="widget">
                    <div class="widget-body">
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="state">
                                <h6>Coin Terdaftar</h6>
                                <h2>{{ $count_coin }}</h2>
                            </div>
                            <div class="icon">
                                <i class="fa fa-coins"></i>
                            </div>
                        </div>
                        <small class="text-small mt-10 d-block">Total Coin yang ada didatabase.</small>
                    </div>
                    <div class="progress progress-sm bg-success">
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12">
                <div class="widget">
                    <div class="widget-body">
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="state">
                                <h6>Network Chain Terdaftar</h6>
                                {{-- <h2><?= $jumlahnetwork->jumlahnetwork ?></h2> --}}
                            </div>
                            <div class="icon">
                                <i class="ik ik-box"></i>
                            </div>
                        </div>
                        <small class="text-small mt-10 d-block">Total Network Chain yang ada didatabase.</small>
                    </div>
                    <div class="progress progress-sm bg-warning">
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12">
                <div class="widget">
                    <div class="widget-body">
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="state">
                                <h6>Pemilihan</h6>
                                <h2>..</h2>
                            </div>
                            <div class="icon">
                                <i class="fa fa-think-peaks"></i>
                            </div>
                        </div>
                        <small class="text-small mt-10 d-block">Total Comments</small>
                    </div>
                    <div class="progress progress-sm bg-info">
                    </div>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="card-header row">
                <div class="col col-lg-12">
                    <h4>Dashboard</h4>
                </div>
            </div>
            <div class="card-body">
                <h4>Selamat datang, {{ Auth::user()->name }}.</h4>
            </div>
        </div>
    </div>
</div>
@endsection