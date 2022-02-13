<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Admin Dashboard</title>
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:300,400,600,700,800" rel="stylesheet">
    <link href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css" rel="stylesheet">

    <link rel="stylesheet" href="{{ asset('assets/admin/plugins/bootstrap/dist/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/admin/plugins/fontawesome-free/css/all.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/admin/plugins/icon-kit/dist/css/iconkit.min.css') }}">
    {{-- <link rel="stylesheet" href="{{ asset('assets/admin/plugins/ionicons/dist/css/ionicons.min.css') }}"> --}}
    <link rel="stylesheet" href="{{ asset('assets/admin/plugins/perfect-scrollbar/css/perfect-scrollbar.css') }}">

    <link rel="stylesheet"
        href="{{ asset('assets/admin/plugins/datatables.net-bs4/css/dataTables.bootstrap4.min.css') }}">
    {{-- <link rel="stylesheet" href="{{ asset('assets/admin/plugins/jvectormap/jquery-jvectormap.css') }}"> --}}
    {{-- <link rel="stylesheet"
        href="{{ asset('assets/admin/plugins/tempusdominus-bootstrap-4/build/css/tempusdominus-bootstrap-4.min.css') }}">
    --}}

    {{-- <link rel="stylesheet" href="{{ asset('assets/admin/plugins/weather-icons/css/weather-icons.min.css') }}"> --}}
    {{-- <link rel="stylesheet" href="{{ asset('assets/admin/plugins/c3/c3.min.css') }}"> --}}
    {{-- <link rel="stylesheet" href="{{ asset('assets/admin/plugins/owl.carousel/dist/assets/owl.carousel.min.css') }}">
    <link rel="stylesheet"
        href="{{ asset('assets/admin/plugins/owl.carousel/dist/assets/owl.theme.default.min.css') }}"> --}}
    <link rel="stylesheet" href="{{ asset('assets/admin/dist/css/theme.min.css') }}">
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    {{-- <script src="{{ asset('assets/admin/src/js/vendor/modernizr-2.8.3.min.js') }}"></script> --}}
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <meta name="csrf-token" content="{{ csrf_token() }}">
</head>

<body>
    <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

    <div class="wrapper">
        <header class="header-top" header-theme="light">
            <div class="container-fluid">
                <div class="d-flex justify-content-between">
                    <div class="top-menu d-flex align-items-center">
                        <button type="button" class="btn-icon mobile-nav-toggle d-lg-none"><span></span></button>
                        <span id="navbar-fullscreen" class="nav-link"></span>
                    </div>
                    <div class="top-menu d-flex align-items-center">
                        <div class="dropdown">
                            <a class="dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false"><i class="fa fa-user"></i>
                                {{ Auth::user()->name }}</a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="profile.html"><i class="ik ik-user dropdown-icon"></i>
                                    Profile</a>
                                <a class="dropdown-item" href="#"><i class="ik ik-settings dropdown-icon"></i>
                                    Settings</a>
                                <a class="dropdown-item" href="#"><span class="float-right"><span
                                            class="badge badge-primary">6</span></span><i
                                        class="ik ik-mail dropdown-icon"></i> Inbox</a>
                                <a class="dropdown-item" href="#"><i class="ik ik-navigation dropdown-icon"></i>
                                    Message</a>
                                <a class="dropdown-item" href="{{ asset('') }}auth/logout"><i
                                        class="ik ik-power dropdown-icon"></i> Logout</a>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </header>
        <div class="page-wrap">
            <div class="app-sidebar colored">
                <div class="sidebar-header">
                    <a class="header-brand" href="{{ asset('') }}admin">
                        <span class="text">Info Kripto.</span>
                    </a>
                    <!-- <button type="button" class="nav-toggle"><i data-toggle="expanded" class="ik ik-toggle-right toggle-icon"></i></button> -->
                    <button id="sidebarClose" class="nav-close"><i class="ik ik-x"></i></button>
                </div>

                <div class="sidebar-content">
                    <div class="nav-container">
                        <nav id="main-menu-navigation" class="navigation-main">
                            <div class="nav-lavel">Main Menu</div>
                            <div class="nav-item active">
                                <a href="{{ asset('') }}admin"><i class="fa fa-chart-bar"></i><span>Dashboard</span></a>
                            </div>
                            <div class="nav-item">
                                <a href="{{ asset('') }}cwallet"><i class="fa fa-wallet"></i><span>Manajemen Crypto
                                        Wallet</span></a>
                            </div>
                            <div class="nav-item">
                                <a href="{{ asset('') }}coin"><i class="fa fa-coins"></i><span>Manajemen
                                        Coin</span></a>
                            </div>
                            <div class="nav-item">
                                <a href="{{ asset('') }}cnetwork"><i class="ik ik-box"></i><span>Manajemen
                                        Chain</span></a>
                            </div>
                            <div class="nav-lavel">Other Menu</div>
                            <div class="nav-item has-sub">
                                <a href="#"><i class="fa fa-pen"></i><span>Artikel</span></a>
                                <div class="submenu-content">
                                    <a href="{{ asset('') }}artikel" class="menu-item">Daftar Artikel</a>
                                    <a href="{{ asset('') }}artikel/tambah" class="menu-item">Tulis Artikel</a>
                                </div>
                            </div>
                            <div class="nav-item">
                                <a href="{{ asset('') }}users"><i class="ik ik-users"></i><span>Manajemen
                                        User</span></a>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
            @yield('content')
            <footer class="footer">
                <div class="w-100 clearfix">
                    <span class="text-center text-sm-left d-md-inline-block">Copyright © <?= date('Y') ?> Info Kripto.
                        All Rights Reserved.</span>
                    <!-- <span class="float-none float-sm-right mt-1 mt-sm-0 text-center">Crafted with <i class="fa fa-heart text-danger"></i> by <a href="http://lavalite.org/" class="text-dark" target="_blank">Lavalite</a></span> -->
                </div>
            </footer>
        </div>
    </div>


    <script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    <script>
        $(document).ready(function() {
                    $('#table1').DataTable();
                    $('#table2').DataTable();
                    $('#table3').DataTable();
                });
    </script>
    <script src="{{ asset('assets/admin/plugins/popper.js/dist/umd/popper.min.js') }}"></script>
    <script src="{{ asset('assets/admin/plugins/bootstrap/dist/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('assets/admin/plugins/perfect-scrollbar/dist/perfect-scrollbar.min.js') }}"></script>

    {{-- <script src="{{ asset('assets/admin/plugins/screenfull/dist/screenfull.js') }}"></script> --}}
    {{-- <script src="{{ asset('assets/admin/plugins/jvectormap/jquery-jvectormap.min.js') }}"></script>
    <script src="{{ asset('assets/admin/plugins/jvectormap/tests/assets/jquery-jvectormap-world-mill-en.js') }}">

    </script> --}}
    {{-- <script src="{{ asset('assets/admin/plugins/moment/moment.js') }}"></script> --}}
    {{-- <script
        src="{{ asset('assets/admin/plugins/tempusdominus-bootstrap-4/build/js/tempusdominus-bootstrap-4.min.js') }}">
    </script> --}}
    {{-- <script src="{{ asset('assets/admin/plugins/d3/dist/d3.min.js') }}"></script> --}}
    {{-- <script src="{{ asset('assets/admin/plugins/c3/c3.min.js') }}"></script> --}}
    {{-- <script src="{{ asset('assets/admin/js/tables.js') }}"></script> --}}
    {{-- <script src="{{ asset('assets/admin/js/widgets.js') }}"></script> --}}
    {{-- <script src="{{ asset('assets/admin/js/charts.js') }}"></script> --}}
    <script src="{{ asset('assets/admin/dist/js/theme.min.js') }}"></script>
    @yield('script')
</body>

</html>