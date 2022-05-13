<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Info Kripto</title>
    <meta
        content="Info Kripto adalah website yang menyajikan ilmu lengkap mengenai kripto, mulai dari pemilihan wallet crypto, airdrop, testnet dan lain lain."
        name="description">

    <!-- Google Fonts -->
    <link
        href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
        rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="{{ asset('assets/home/vendor/aos/aos.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/home/vendor/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/home/vendor/bootstrap-icons/bootstrap-icons.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/home/vendor/boxicons/css/boxicons.min.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/home/vendor/glightbox/css/glightbox.min.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/home/vendor/swiper/swiper-bundle.min.css') }}" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="{{ asset('assets/home/css/style.css') }}" rel="stylesheet">

    <!-- =======================================================
    * Template Name: Bocor - v4.7.0
    * Template URL: https://bootstrapmade.com/bocor-bootstrap-template-nice-animation/
    * Author: BootstrapMade.com
    * License: https://bootstrapmade.com/license/
    ======================================================== -->

    <!-- JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />

    <!-- sweetalert -->
    <link rel="stylesheet" href="https://lipis.github.io/bootstrap-sweetalert/dist/sweetalert.css" />
    <script src="https://lipis.github.io/bootstrap-sweetalert/dist/sweetalert.js"></script>

    <link rel="stylesheet" href="{{ asset('assets/admin/plugins/fontawesome-free/css/all.min.css') }}">
</head>

<body style="display:flex; flex-direction:column; min-height:100vh;">

    <!-- ======= Header ======= -->
    <header id="header">
        <div class="container d-flex align-items-center justify-content-between">

            <div class="logo">
                <h1><a href="/">Info Kripto<span>.</span></a></h1>
            </div>

            <nav id="navbar" class="navbar">
                <ul>
                    <li><a class="nav-link scrollto active" href="/">Home</a></li>
                    <li><a class="nav-link scrollto" href="/content/category/edukasi">Ilmu & Edukasi</a></li>
                    <li><a class="nav-link scrollto" href="/content">Artikel Kripto</a></li>
                    <li><a class="nav-link scrollto" href="/content/category/airdrop">Airdrop</a></li>
                    <li class="dropdown"><a href="#"><span>Others</span> <i class="bi bi-chevron-down"></i></a>
                        <ul>
                            <li><a href="/content/category/testnet">Testnet</a></li>
                            <li><a href="#" onclick="apyCalc()">APY
                                    Calculator</a></li>
                            {{-- <li><a href="#">Drop Down 2</a></li>
                            <li><a href="#">Drop Down 3</a></li>
                            <li><a href="#">Drop Down 4</a></li> --}}
                        </ul>
                    </li>
                    <li><a class="getstarted scrollto" href="/home/pilihDompet">Pilih Dompet Kripto</a>
                    </li>
                </ul>
                <i class="bi bi-list mobile-nav-toggle"></i>
            </nav><!-- .navbar -->

        </div>
    </header><!-- End Header -->
    <div class="wrapper" style="flex:1;">
        @yield('content')
    </div>
    <!-- ======= Footer ======= -->
    <footer id="footer">
        <div class="container footer-bottom clearfix">
            <div class="copyright">
                &copy; Copyright <strong><span>Info Kripto</span></strong>. All Rights Reserved
            </div>
            {{-- <div class="credits">
                Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
            </div> --}}
            <div class="credits">
                <a href="/krisar" style="color:white">📧 Kirim Kritik dan Saran </a> | <a href="" style="color:white">❤
                    Donasi</a>
            </div>
        </div>
    </footer><!-- End Footer -->
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
            class="bi bi-arrow-up-short"></i></a>

    <!-- Vendor JS Files -->
    <script src="{{ asset('assets/home/vendor/aos/aos.js') }}"></script>
    <script src="{{ asset('assets/home/vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ asset('assets/home/vendor/glightbox/js/glightbox.min.js') }}"></script>
    <script src="{{ asset('assets/home/vendor/isotope-layout/isotope.pkgd.min.js') }}"></script>
    <script src="{{ asset('assets/home/vendor/swiper/swiper-bundle.min.js') }}"></script>

    <!-- Template Main JS File -->
    <script src="{{ asset('assets/home/js/main.js') }}"></script>
    <script>
        function apyCalc(){
            window.open('https://www.calculatestuff.com/financial/apy-calculator?display_type=popup','APY Calculator','width=700,height=700,resizable=1,scrollbars=1,toolbar=0,menubar=0');
            return false;
        }
    </script>
</body>

</html>