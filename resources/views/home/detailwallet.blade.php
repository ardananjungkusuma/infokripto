@extends('home.layout.master')
@section('externalcss')
<link href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css" rel="stylesheet">
<link rel="stylesheet" href="{{ asset('assets/admin/plugins/datatables.net-bs4/css/dataTables.bootstrap4.min.css') }}">
@endsection
@section('content')
<main id="main">

    <!-- ======= Breadcrumbs Section ======= -->
    <section class="breadcrumbs">
        <div class="container">

            <div class="d-flex justify-content-between align-items-center">
                <h2 style="font-weight: bold;">List Wallet Terdaftar Pada Sistem
                </h2>
                <ol>
                    <li><a href="/">Home</a></li>
                    <li><a href="/home/listWallet">List Wallet</a></li>
                    <li>Detail {{ $dw->nama_wallet }}</li>
                </ol>
            </div>

        </div>
    </section><!-- End Breadcrumbs Section -->

    <section class="inner-page">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h4>Detail Data ({{ $dw->nama_wallet }})</h4>
                    <hr>
                    <div class="card-body">
                        <div style="font-size: 15px;">
                            <label style="font-weight: bold;">Nama Aplikasi : </label>
                            {{ $dw->nama_wallet }}
                        </div>
                        <div style="font-size: 15px;">
                            <label style="font-weight: bold;">Jumlah Network Chain Support : </label>
                            {{ $jumlahnetwork }} Chain
                        </div>
                        <div style="font-size: 15px;">
                            <label style="font-weight: bold;">Jumlah Coin Support : </label>
                            {{ $jumlahcoin }} Coin
                        </div>
                        <div style="font-size: 15px;">
                            <label style="font-weight: bold;">Link Google Playstore : </label>
                            <a target="_blank" href="{{ $dw->link_playstore  }}"
                                style="color: blue;font-weight: bold">Klik
                                Disini</a>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-lg-5 m-1">
                                <h4>List Coin Support</h4>
                                <hr>
                                <div class="table-responsive">
                                    <table id="table1" class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>Coin</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($coindata as $c)
                                            <tr>
                                                <td>{{ $c->nama_coin }} ({{ $c->singkatan_coin }})</td>
                                            </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="col-lg-5 m-1">
                                <h4>List Network Support</h4>
                                <hr>
                                <div class="table-responsive">
                                    <table id="table2" class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>Chain</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($networkdata as $n)
                                            <tr>
                                                <td>{{ $n->nama_network }} ({{ $n->singkatan_network }})
                                                </td>
                                            </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </section>

</main><!-- End #main -->
@endsection
@section('externaljs')
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
<script>
    $(document).ready(function() {
                $('#table1').DataTable();
                $('#table2').DataTable();
                $('#table3').DataTable();
            });
</script>
@endsection