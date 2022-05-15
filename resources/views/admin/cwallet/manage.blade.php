@extends('admin.layout.master')
@section('content')
<div class="main-content">
    <div class="container-fluid">
        <div class="card">
            <div class="card-header row">
                <div class="col col-lg-12">
                    <h4>Tambah Data Coin & Network ({{ $wallet->nama_wallet }})</h4>
                </div>
            </div>
            <div class="card-body">
                <a href="/cwallet" class="btn btn-secondary mb-3"><i class="fa fa-arrow-left"></i>
                    Back</a>
                <div style="font-size: 15px;">
                    <label style="font-weight: bold;">Nama Aplikasi : </label>
                    <?php
                    $csrf_lur = csrf_field();
                    $id_wallet = $wallet->id_wallet; ?>
                    <a href="/cwallet/detail/{{ $id_wallet }}">{{ $wallet->nama_wallet }}</a>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="form-group">
                            <h6 style="font-weight: bold;">Pilih Coin (Ingin menambah data baru? <a href="/coin"
                                    style="color: blue;" target="_blank">Klik disini</a>)</h6>
                            <select class="form-control js-example-basic-single" id="id_jenis_coin" name="id_jenis_coin"
                                required>
                                <option value="" disabled selected>Silahkan Pilih Coin</option>
                                @foreach ($coin as $c) {
                                <option value="{{ $c->id_jenis_coin }}">
                                    {{ $c->nama_coin . " (" . $c->singkatan_coin . ")" }}</option>
                                @endforeach
                            </select>
                        </div>
                        {{-- <button class="btn btn-success" onclick="tambahCoin()" type="submit"><i class="fa fa-coins"></i>
                            Tambah Coin</button>
                        <br>
                        <br> --}}
                        <div id="list-coin">
                            <h4>Daftar Coin Support</h4>
                            <hr>
                            <div id="daftar_coin_support" style="font-size: 15px;">

                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group">
                            <h6 style="font-weight: bold;">Pilih Network (Ingin menambah data baru? <a href="/cnetwork"
                                    style="color: blue;" target="_blank">Klik disini</a>)</h6>
                            <select class="form-control js-example-basic-single" id="id_jenis_network"
                                name="id_jenis_network" required>
                                <option value="" disabled selected>Silakan Pilih Chain Network</option>
                                @foreach ($cnetwork as $cn) {
                                <option value="{{ $cn->id_jenis_network  }}">
                                    {{ $cn->nama_network . " (" . $cn->singkatan_network . ")"  }}</option>
                                @endforeach
                            </select>
                        </div>
                        {{-- <button class="btn btn-info" onclick="tambahNetwork()" type="submit"><i
                                class="fa fa-network-wired"></i> Tambah Network</button>
                        <br>
                        <br> --}}
                        <div id="list-network">
                            <h4>Daftar Network Support</h4>
                            <hr>
                            <div id="daftar_network_support" style="font-size: 15px;">

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    var id_wallet = '<?= $id_wallet ?>';
    var csrf = '<?= $csrf_lur ?>'

    $(document).ready(function() {
        $('.js-example-basic-single').select2();
        get_coin();
        get_network();

        $('#id_jenis_coin').on('change', function (e) {
            tambahCoin();
        });
        $('#id_jenis_network').on('change', function (e) {
            tambahNetwork();
        });
    });

    function get_coin() {
        $('#daftar_coin_support').html("");
        $.ajax({
            type: 'GET',
            url: `/coin/getCoinByWallet/${id_wallet}`,
            dataType: 'json',
            success: (hasil) => {
                hasil.forEach(function(item) {
                    $('#daftar_coin_support').append(`
                    <span class="idcoin${item.id_wallet_coin}">
                        ${item.nama_coin} - (${item.singkatan_coin}) |
                        <span onclick="hapusCoinDariWallet(${item.id_wallet_coin})" style="cursor: pointer;color:red"> <i class="fa fa-trash"></i> Hapus Coin</span><br>
                    </span>
                `);
                });
            }
        });
    }

    function get_network() {
        $('#daftar_network_support').html("");
        $.ajax({
            type: 'GET',
            url: `/cnetwork/getNetworkByWallet/${id_wallet}`,
            dataType: 'json',
            success: (hasildua) => {
                hasildua.forEach(function(itemdua) {
                    $('#daftar_network_support').append(`
                    <span class="idnetwork${itemdua.id_wallet_network}">
                        ${itemdua.nama_network} - (${itemdua.singkatan_network}) |
                        <span onclick="hapusNetworkDariWallet(${itemdua.id_wallet_network})" style="cursor: pointer;color:red"> <i class="fa fa-trash"></i> Hapus Network</span><br>
                    </span>
                `);
                });
            }
        });
    }

    function tambahCoin() {
        let coin = $('#id_jenis_coin').val();
        if (coin != null) {
            $.ajax({
                type:'POST',
                url:"{{ url('/cwallet/tambahNetworkWallet') }}",
                data:{id_jenis_coin: coin,id_wallet: id_wallet,  "_token": "{{ csrf_token() }}"},
                success:function(data){
                    if (data == "Failed") {
                        alert("Data yang anda masukan telah ada dalam database.");
                    }
                    get_coin();
                    document.getElementById('id_jenis_network').selectedIndex = 0;
                }
            });
        } else {
            alert("Anda belum memilih coin!");
        }
    }

    function hapusCoinDariWallet(id_wallet_coin) {
        $.get(`/cwallet/hapusCoinWallet/${id_wallet_coin}`, function(data) {
            alert("Data sukses dihapus!");
            get_coin();
        });
    }

    function tambahNetwork() {
        let network = $('#id_jenis_network').val();
        if (network != null) {
            $.ajax({
                type:'POST',
                url:"{{ url('/cwallet/tambahNetworkWallet') }}",
                data:{id_jenis_network: network,id_wallet: id_wallet, "_token": "{{ csrf_token() }}"},
                success:function(data){
                    if (data == "Failed") {
                        alert("Data yang anda masukan telah ada dalam database.");
                    }
                    get_network();
                    document.getElementById('id_jenis_network').selectedIndex = 0;
                }
            });
        } else {
            alert("Anda belum memilih network!");
        }
    }

    function hapusNetworkDariWallet(id_wallet_network) {
        $.get(`/cwallet/hapusNetworkWallet/${id_wallet_network}`, function(data) {
            alert("Data sukses dihapus!");
            get_network();
        });
    }
</script>
@endsection