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
                    <li>List Wallet</li>
                </ol>
            </div>

        </div>
    </section><!-- End Breadcrumbs Section -->

    <section class="inner-page">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h4>Berikut adalah daftar Crypto Wallet yang terdaftar pada sistem.</h4>
                    <hr>
                    <table id="table1" class="table table-striped">
                        <thead style="background-color: #213B52;color: white">
                            <tr>
                                <th>No</th>
                                <th>Nama Wallet</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $no = 1;?>
                            @foreach($wallet as $w)
                            <tr>
                                <td>{{ $no  }}</td>
                                <td>{{ $w->nama_wallet }}</td>
                                <td>
                                    <a href="/home/wallet/detail/{{ $w->id_wallet }}" class="btn btn-info m-1"><i
                                            class="fa fa-eye"></i> Detail</a>
                                    <a href="{{ $w->link_playstore }}" target="_blank" class="btn btn-secondary"><i
                                            class="fa fa-download"></i>
                                        Download</a>

                                </td>
                            </tr>
                            <?php
                                $no++; ?>
                            @endforeach
                        </tbody>
                    </table>
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
            });
</script>
@endsection