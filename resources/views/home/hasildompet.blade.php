@extends('home.layout.master')
@section('content')
<main id="main">

    <!-- ======= Breadcrumbs Section ======= -->
    <section class="breadcrumbs">
        <div class="container">

            <div class="d-flex justify-content-between align-items-center">
                <h2 style="font-weight: bold;">Sistem Pendukung Keputusan Pemilihan Crypto Wallet dengan metode SMART
                </h2>
                <ol>
                    <li><a href="index.html">Home</a></li>
                    <li>SPK Crypto Wallet</li>
                </ol>
            </div>

        </div>
    </section><!-- End Breadcrumbs Section -->

    <section class="inner-page">
        <div class="container">
            @if(session('notif'))
            <div class="alert alert-warning alert-dismissible fade show" role="alert">
                {{ session('notif') }}
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            @endif
            <h5 style="font-weight: bold;">Pemilihan Crypto Wallet menggunakan metode SMART</h5>
            <div class="row">
                <hr>
                <div class="col-lg-12">
                    <h5>Hasil dari pemilihannya adalah sebagai berikut</h5>
                    <?php if($result[0] == 'Empty'){ ?>
                    Maaf, wallet dengan kriteria yang anda pilih tak ditemukan. <a href="" style="color: blue">Beri kami
                        kritik & saran jika berkenan.</a>
                    <?php }else{ ?>
                    <ol>
                        <?php
                        for($i=0;$i<count($result);$i++) { ?>
                        <li>
                            {{ $result[$i][1] }} (Link Download : <a style="color: blue" href="{{  $result[$i][2] }}"
                                target="_blank">Klik Disini</a>)
                        </li>
                        <?php
                            }
                            ?>
                    </ol>
                    <?php
                        }
                    ?>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <h4 style="font-weight: bold;">Artikel Terkait</h4>
                        <ul>
                            <li>Apa itu Coin?</li>
                            <li>Apa itu Network Chain?</li>
                            <li>Apa itu NFT?</li>
                        </ul>
                    </div>
                </div>
            </div>

        </div>
    </section>

</main><!-- End #main -->
@endsection