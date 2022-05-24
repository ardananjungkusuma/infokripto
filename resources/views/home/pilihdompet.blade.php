@extends('home.layout.master')
@section('externalcss')
<link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
@endsection
@section('content')
<main id="main">

    <!-- ======= Breadcrumbs Section ======= -->
    <section class="breadcrumbs">
        <div class="container">

            <div class="d-flex justify-content-between align-items-center">
                <h2 style="font-weight: bold;">Sistem Pendukung Keputusan Pemilihan Crypto Wallet dengan metode SMART
                </h2>
                <ol>
                    <li><a href="/">Home</a></li>
                    <li>SPK Crypto Wallet</li>
                </ol>
            </div>

        </div>
    </section><!-- End Breadcrumbs Section -->

    <section class="inner-page">
        <div class="container">
            {{-- if ($this->session->flashdata("found")) {
                print_r($hasil);
            } --}}
            @if(session('notif'))
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                {{ session('notif') }}
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            @endif
            <span id="begin">
            </span>
            <h5 style="font-weight: bold;">Sistem Pemilihan Crypto Wallet(eg. Trust Wallet, Slope) menggunakan <a
                    href="https://raharja.ac.id/2020/04/15/simple-multi-attribute-rating-technique-smart/"
                    target="_blank">metode SMART</a>🕵️‍♂️
            </h5>
            <div class="row">
                <hr>
                <div class="col-lg-6">
                    <p>Isikan data sesuai kebutuhan anda, <b>jika anda tidak memilih data/data kosong maka hasil dari
                            pemilihan akan dipilih secara universal</b>.</p>
                    <div class="row">
                        <div class="col-lg-10">
                            <div class="form-group mb-3">
                                <label style="font-weight: bold;"><i class="fa fa-coins"></i> Pilih Coin</label>
                                <select class="form-control js-example-basic-single" id="id_jenis_coin"
                                    name="id_jenis_coin">
                                    <option value="" disabled selected>Pilih Coin</option>
                                    @foreach ($coin as $c) {
                                    <option value="{{ $c->id_jenis_coin }}|{{ $c->nama_coin }}">
                                        {{ $c->nama_coin . " (" . $c->singkatan_coin . ")" }}</option>
                                    @endforeach
                                </select>
                            </div>
                            {{-- <button class="btn-sm btn-success mt-2 mb-2" onclick="tambahCoin()"><i
                                    class="fa fa-coins"></i> Tambah Coin</button> --}}
                            <div class="form-group mb-3">
                                <label style="font-weight: bold;"><i class="fa fa-link"></i> Pilih Chain Network
                                    (Jaringan eg: BEP20,
                                    ERC20)</label>
                                <select class="form-control js-example-basic-single" id="id_jenis_network"
                                    name="id_jenis_network">
                                    <option value="" disabled selected>Pilih Chain Network</option>
                                    @foreach ($cnetwork as $n) {
                                    <option value="{{ $n->id_jenis_network }}|{{ $n->nama_network }}">
                                        {{ $n->nama_network . " (" . $n->singkatan_network . ")" }}</option>
                                    @endforeach
                                </select>
                            </div>
                            {{-- <button class="btn-sm btn-success mt-2 mb-2" onclick="tambahNetwork()"><i
                                    class="fa fa-link"></i> Tambah Network Chain</button> --}}
                            <form action="/home/cariDompet" method="POST">
                                @csrf
                                <div class="form-group">
                                    <label style="font-weight: bold;"><i class="fa fa-store"></i> Apakah anda ingin
                                        Wallet yang support
                                        <a href="/content/fitur-nft-preview-pada-crypto-wallet-220518123824"
                                            target="_blank">Showcase/Preview
                                            NFT?</a></label>
                                    <select name="nft" class="form-control">
                                        <option value="" disabled selected>Pilih Opsi NFT</option>
                                        <option value="1">Wajib Ada</option>
                                        <option value="0">Tidak Wajib Ada</option>
                                    </select>
                                    <small>* Jika kosong dianggap tidak wajib.</small>
                                </div>
                                <span id="hidden-form-coins">

                                </span>
                                <span id="hidden-form-networks">

                                </span>
                                <center>
                                    <button class="btn-sm btn-primary mt-3 mb-3" type="submit"><i
                                            class="fa fa-search"></i>
                                        Cari Wallet</button>
                                </center>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <span id="title-res">
                        <h4 style="font-weight: bold">Data Yang Anda Pilih 📋</h4>
                    </span>
                    <span id="empty-title-res">
                        <h4>Anda belum memilih data❌</h4>
                    </span>
                    <span id="title-coin-dipilih">
                        <hr>
                        <h5>Coin</h5>
                    </span>
                    <ul id="list-coin-dipilih">

                    </ul>
                    <span id="title-network-dipilih">
                        <hr>
                        <h5>Chain Network (Jaringan eg: BEP20, ERC20)</h5>
                    </span>
                    <ul id="list-network-dipilih">

                    </ul>
                </div>
                {{-- <div class="row">
                    <div class="col-lg-12">
                        <h4 style="font-weight: bold;">📜 Cek Artikel Terbaru Kami</h4>
                        <ul>
                            @foreach($artikel as $a)
                            <li>
                                <a href="/content/{{ $a['slug'] }}">{{ $a['judul'] }}</a>
                </li>
                @endforeach
                </ul>
            </div>
        </div> --}}
        </div>

        </div>
    </section>

</main><!-- End #main -->
<script>
    $(document).ready(function() {
        $('.js-example-basic-single').select2();
        document.getElementById("title-res").style.display = "none";
        document.getElementById("title-coin-dipilih").style.display = "none";
        document.getElementById("title-network-dipilih").style.display = "none";
        toastr.options = {
        "closeButton": false,
        "debug": false,
        "newestOnTop": true,
        "progressBar": true,
        "positionClass": "toast-top-right",
        "preventDuplicates": false,
        "onclick": null,
        "showDuration": "300",
        "hideDuration": "1000",
        "timeOut": "3000",
        "extendedTimeOut": "1000",
        "showEasing": "swing",
        "hideEasing": "linear",
        "showMethod": "fadeIn",
        "hideMethod": "fadeOut"
        }
    });

    $('#id_jenis_network').on('change', function (e) {
        tambahNetwork();
    });
    
    $('#id_jenis_coin').on('change', function (e) {
        tambahCoin();
    });

    // https://stackoverflow.com/questions/3954438/how-to-remove-item-from-array-by-value
    function removeArray(arr) {
        var what, a = arguments,
            L = a.length,
            ax;
        while (L > 1 && arr.length) {
            what = a[--L];
            while ((ax = arr.indexOf(what)) !== -1) {
                arr.splice(ax, 1);
            }
        }
        return arr;
    }


    let coinArr = [];
    let netchainArr = [];

    function tambahCoin() {
        let coin = $('#id_jenis_coin').val();
        if (coin != null) {
            document.getElementById("empty-title-res").style.display = "none";
            document.getElementById("title-res").style.display = "";
            document.getElementById("title-coin-dipilih").style.display = "";

            if (coinArr.includes(coin)) {
                // alert("Data Sudah Ada Pada Daftar!");
                swal("Error!", "Data yang ada pilih sudah ada pada daftar!", "error");
            } else {
                coinArr.push(coin);
                // console.log(`Sukses tambah coin ${coin}`);
                console.log(`${coinArr}`);

                const splitCoin = coin.split("|");

                $('#list-coin-dipilih').append(`
                <li class="selectedcoin${splitCoin[0]}">
                    ${splitCoin[1]} - <span style="color: red;cursor: pointer" onclick="removeCoin('selectedcoin${splitCoin[0]}','${coin}')"><i class="fa fa-trash"></i> Hapus Coin</span>
                </li>
                `);
                $('#hidden-form-coins').append(`
                <span class="selectedcoin${splitCoin[0]}">
                    <input type="hidden" name="hidden_coin_id[]" value="${splitCoin[0]}" required>
                </span>
                `);

                // Ngosongi value select
                // document.getElementById('id_jenis_coin').selectedIndex = 0;
                toastr.success(`Berhasil Menambah Coin ${splitCoin[1]}`);
            }
        } else {
            swal("Error!", "Anda belum memilih coin!", "error");
            // alert("Anda belum memilih coin!");
        }
    }

    function removeCoin(liname, coinnya) {
        removeArray(coinArr, coinnya);
        $(`.${liname}`).remove();
        if (coinArr.length == 0 && netchainArr.length == 0) {
            document.getElementById("empty-title-res").style.display = "";
            document.getElementById("title-res").style.display = "none";
            document.getElementById("title-coin-dipilih").style.display = "none";
            document.getElementById("title-network-dipilih").style.display = "none";
        }
        // console.log(coinArr);
    }

    function tambahNetwork() {
        let network = $('#id_jenis_network').val();
        if (network != null) {
            document.getElementById("empty-title-res").style.display = "none";
            document.getElementById("title-res").style.display = "";
            document.getElementById("title-network-dipilih").style.display = "";

            if (netchainArr.includes(network)) {
                // alert("Data Sudah Ada Pada Daftar!");
                swal("Error!", "Data yang ada pilih sudah ada pada daftar!", "error");
            } else {
                netchainArr.push(network);
                // console.log(`Sukses tambah network ${network}`);
                console.log(`${netchainArr}`);

                const splitNetwork = network.split("|");

                $('#list-network-dipilih').append(`
                <li class="selectednetwork${splitNetwork[0]}">
                    ${splitNetwork[1]} - <span style="color: red;cursor: pointer" onclick="removeNetwork('selectednetwork${splitNetwork[0]}','${network}')"><i class="fa fa-trash"></i> Hapus Network</span>
                </li>
                `);

                $('#hidden-form-networks').append(`
                <span class="selectednetwork${splitNetwork[0]}">
                    <input type="hidden" name="hidden_network_id[]" value="${splitNetwork[0]}" required>
                </span>
                `);

                // Ngosongi value select
                // document.getElementById('id_jenis_network').selectedIndex = 0;

                toastr.success(`Berhasil Menambah Network ${splitNetwork[1]}`);
            }
        } else {
            swal("Error!", "Anda belum memilih chain network!", "error");
            // alert("Anda belum memilih chain network!");
        }
    }

    function removeNetwork(liname, networknya) {
        removeArray(netchainArr, networknya);
        $(`.${liname}`).remove();
        if (coinArr.length == 0 && netchainArr.length == 0) {
            document.getElementById("empty-title-res").style.display = "";
            document.getElementById("title-res").style.display = "none";
            document.getElementById("title-coin-dipilih").style.display = "none";
            document.getElementById("title-network-dipilih").style.display = "none";
        }
        // console.log(coinArr);
    }
</script>
@endsection