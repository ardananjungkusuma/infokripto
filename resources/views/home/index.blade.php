@extends('home.layout.master')
@section('content')
<!-- ======= Hero Section ======= -->
<section id="hero">

    <div class="container">
        <div class="row d-flex align-items-center"">
  <div class=" col-lg-6 py-5 py-lg-0 order-2 order-lg-1" data-aos="fade-right">
            <h1>Informasi lengkap mengenai kripto</h1>
            <h2>Menyajikan ilmu mengenai kripto dan pemilihan dompet kripto.</h2>
            <a href="/home/pilihDompet" class="btn-get-started scrollto">Pilih Dompet Kripto!</a>
        </div>
        <div class="col-lg-6 order-1 order-lg-2 hero-img" data-aos="fade-left">
            <img src="{{ asset('assets/home/img/hero-img.png') }}" class="img-fluid" alt="">
        </div>
    </div>
    </div>

</section><!-- End Hero -->

<main id="main">
    <!-- ======= Clients Section ======= -->
    <section id="clients" class="clients section-bg">
        <div class="container">
            <div class="row no-gutters clients-wrap clearfix wow fadeInUp">
                <script type="text/javascript" src="https://files.coinmarketcap.com/static/widget/coinMarquee.js">
                </script>
                <div id="coinmarketcap-widget-marquee"
                    coins="1,1027,825,1839,5426,2010,52,512,5805,4030,1958,2469,74,6636,4172,3890,7102,2" currency="IDR"
                    theme="light" transparent="true" show-symbol-logo="true"></div>
            </div>
        </div>
    </section><!-- End Clients Section -->

    <!-- ======= About Section ======= -->
    <section id="about" class="about section-bg">
        <div class="container">

            <div class="row">
                <div class="image col-xl-5 d-flex align-items-stretch justify-content-center justify-content-lg-start">
                </div>
                <div class="col-xl-7 pl-0 pl-lg-5 pr-lg-1 d-flex align-items-stretch">
                    <div class="content d-flex flex-column justify-content-center">
                        <h3 data-aos="fade-in" data-aos-delay="100">Our Features</h3>
                        <p data-aos="fade-in">
                            Fitur-Fitur yang disajikan pada website Info Kripto untuk anda.
                        </p>
                        <div class="row">
                            <div class="col-md-6 icon-box" data-aos="fade-up">
                                <i class="bx bx-wallet"></i>
                                <h4><a href="/home/pilihDompet">Pemilihan Dompet Kripto</a></h4>
                                <p>Pemilihan dan perangkingan dompet kripto dilakukan menggunakan metode SMART.
                                </p>
                            </div>
                            <div class="col-md-6 icon-box" data-aos="fade-up" data-aos-delay="100">
                                <i class="bx bx-pencil"></i>
                                <h4><a href="/content">Artikel Crypto</a></h4>
                                <p>Artikel mengenai berita mengenai cryptocurrency.
                                </p>
                            </div>
                            <div class="col-md-6 icon-box" data-aos="fade-up" data-aos-delay="200">
                                <i class="bx bx-book"></i>
                                <h4><a href="#">Ilmu Dasar Crypto</a></h4>
                                <p>Menyajikan ilmu dasar mengenai cryptocurrency.</p>
                            </div>
                            <div class="col-md-6 icon-box" data-aos="fade-up" data-aos-delay="300">
                                <i class="bx bx-money"></i>
                                <h4><a href="#">Airdrop</a></h4>
                                <p>Menyajikan informasi mengenai airdrop, anda bisa mendapatkan uang dari airdrop ini
                                    secara gratis!</p>
                            </div>
                        </div>
                    </div><!-- End .content-->
                </div>
            </div>

        </div>
    </section><!-- End About Section -->

    <!-- ======= Features Section ======= -->
    <section id="features" class="features section-bg">
        <div class="container">

            <div class="section-title">
                <h2 data-aos="fade-in">About US</h2>
            </div>

            <div class="row content">
                <div class="col-md-5" data-aos="fade-right">
                    <img src="{{ asset('assets/home/img/feature1.svg') }}" class="img-fluid" alt="">
                </div>
                <div class="col-md-7 pt-4" data-aos="fade-left">
                    <h3>Semua informasi tersaji dalam website ini.</h3>
                    <ul>
                        <li><i class="bi bi-check"></i> Aplikasi pemilihan wallet pasti aman dan terpercaya.</li>
                        <li><i class="bi bi-check"></i> Artikel berdasarkan website/sumber terpercaya</li>
                        <li><i class="bi bi-check"></i> Informasi Mengenai Airdrop </li>
                    </ul>
                </div>
            </div>
        </div>
    </section><!-- End Features Section -->
</main><!-- End #main -->
@endsection