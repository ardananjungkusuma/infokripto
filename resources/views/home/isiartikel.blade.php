@extends('home.layout.master')
@section('content')
<main id="main">

    <!-- ======= Breadcrumbs Section ======= -->
    <section class="breadcrumbs">
        <div class="container">

            <div class="d-flex justify-content-between align-items-center">
                <h2 style="font-weight: bold;">{{ $artikel->judul }}
                </h2>
                <ol>
                    <li><a href="/">Home</a></li>
                    <li><a href="/">Artikel</a></li>
                    <li>{{ $artikel->judul }}</li>
                </ol>
            </div>

        </div>
    </section><!-- End Breadcrumbs Section -->

    <section class="inner-page">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <center>
                        <h2>{{ $artikel->judul }}</h2>
                        Posted : {{ $artikel->created_at->diffForHumans() }} | Author : {{ $artikel->author }}
                        <br><br>
                        @if($artikel->gambar_sampul != "noimg.jpg")
                        <img src="{{ asset('img_sampul/' . $artikel->gambar_sampul) }}" class="rounded mx-auto d-block"
                            style="max-width: 500px;width: 100%;">
                        @endif
                    </center>
                </div>
                <div class="col-lg-12 mt-2">
                    <span style="font-size: 20px">
                        {!! $artikel->isi !!}
                    </span>
                    <br><br>
                    <span>
                        <label style="font-weight: bold">Kategori : </label>
                        @foreach($category as $c)
                        {{ $c->kategori . ',' }}
                        @endforeach
                    </span>
                </div>
            </div>
        </div>
    </section>

</main><!-- End #main -->
@endsection