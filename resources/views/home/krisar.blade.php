@extends('home.layout.master')
@section('content')
<main id="main">

    <!-- ======= Breadcrumbs Section ======= -->
    <section class="breadcrumbs">
        <div class="container">

            <div class="d-flex justify-content-between align-items-center">
                <h2 style="font-weight: bold;">Kritik & Saran
                </h2>
                <ol>
                    <li><a href="/">Home</a></li>
                    <li><a href="/krisar">Kritik & Saran</a></li>
                </ol>
            </div>
        </div>
    </section><!-- End Breadcrumbs Section -->

    <div class="container mt-3">
        <div class="row">
            <div class="col-lg-6">
                @if(session('notif'))
                <div class="alert alert-success" role="alert">
                    {{ session('notif') }}
                </div>
                @endif
                <h6>Kritik dan saranmu sangat berharga untuk kami. Jika ada wallet yang belum ada pada website
                    silahkan kirimkan saran dibawah ini.</h6>
                <form method="POST" action="/krisar/kirim">
                    @csrf
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email address</label>
                        <input type="email" name="email" class="form-control" id="exampleInputEmail1"
                            aria-describedby="emailHelp" required placeholder="Enter email">
                        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone
                            else.</small>
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlSelect1">Kategori</label>
                        <select class="form-control" name="kategori" required>
                            <option selected disabled value="">Pilih Kategori</option>
                            <option value="Kritik">Kritik</option>
                            <option value="Saran">Saran</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlTextarea1">Isi Kritik/Saran</label>
                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="isi"></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary mt-2 mb-2">Submit</button>
                </form>
            </div>
            <div class="col-lg-6">
                <h6>Berdonasi akan membantu kami mengembangkan aplikasi ini dan membayar kebutuhan server 😁</h6>
                <ul>
                    <li>BTC : bc1q2ehsr790uvt8tsumf2wrz8g6enks8278pdpqgv</li>
                    <li>BSC : 0x60F33a638281d53F57f77497C01Af2Accf14D3F5</li>
                    <li>ETH : 0x60F33a638281d53F57f77497C01Af2Accf14D3F5</li>
                    <li>TRX/USDT : TNEJFwaSqJJ5rqqgFkeZwDTHWu9N9vMfoB</li>
                </ul>
            </div>
        </div>
    </div>

</main><!-- End #main -->
@endsection