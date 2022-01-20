@extends('admin.layout.master')
@section('content')
<div class="main-content">
    <div class="container-fluid">
        <div class="card">
            <div class="card-header row">
                <div class="col col-lg-12">
                    <h4>Detail Data ({{ $dw->nama_wallet }})</h4>
                </div>
            </div>
            <div class="card-body">
                <div style="font-size: 15px;">
                    <label style="font-weight: bold;color:crimson;float:right">Data terakhir diupdate tanggal :
                        {{ date("d-m-Y", strtotime($dw->last_update_data)) }}
                    </label>
                </div>
                <a href="/cwallet" class="btn btn-secondary"><i class="fa fa-arrow-left"></i>
                    Back</a><br><br>
                <div style="font-size: 15px;">
                    <label style="font-weight: bold;">Nama Aplikasi : </label>
                    {{ $dw->nama_wallet }}
                </div>
                <div style="font-size: 15px;">
                    <label style="font-weight: bold;">Ukuran Aplikasi : </label>
                    {{ $dw->ukuran_aplikasi }} Mb
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
                    <label style="font-weight: bold;">Apakah ada fitur NFT Showcase? : </label>
                    <?php
                    if ($dw->nft_showcase == 1) {
                        echo "Ada";
                    } else {
                        echo "Tidak ada";
                    }
                    ?>
                </div>
                <div style="font-size: 15px;">
                    <label style="font-weight: bold;">Rating Aplikasi (Playstore) : </label>
                    {{ $dw->rating }}
                </div>
                <div style="font-size: 15px;">
                    <label style="font-weight: bold;">Platform Support : </label>
                    {{ $dw->platform_support }}
                </div>
                <div style="font-size: 15px;">
                    <label style="font-weight: bold;">Total User Install : </label>
                    {{ number_format($dw->total_user_install, 0, ',', '.')  }}+
                </div>
                <div style="font-size: 15px;">
                    <label style="font-weight: bold;">Link Google Playstore : </label>
                    <a target="_blank" href="{{ $dw->link_playstore  }}" style="color: blue;font-weight: bold">Klik
                        Disini</a>
                </div>
                <hr>
                <div class="row">
                    <div class="col-lg-3 m-2">
                        <h4>List Coin Support</h4>
                        <hr>
                        <div class="table-responsive">
                            <table id="table1" class="table ml-1 mr-1">
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
                    <div class="col-lg-3 m-2">
                        <h4>List Network Support</h4>
                        <hr>
                        <div class="table-responsive">
                            <table id="table2" class="table ml-1 mr-1">
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
</div>
@endsection