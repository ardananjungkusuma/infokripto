@extends('home.layout.master')
@section('content')
<section id="services" class="services section-bg">
    <div class="container">
        <div class="section-title">
            <h2 data-aos="fade-in" class="aos-init aos-animate">Content</h2>
            <p data-aos="fade-in" class="aos-init aos-animate">Magnam dolores commodi suscipit. Necessitatibus eius
                consequatur ex aliquid fuga
                eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit
                suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
        </div>

        <div class="row">
            @foreach($artikel as $artikel)
            <div class="col-12 mt-3">
                <div class="card">
                    <div class="card-horizontal">
                        <div class="card-body">
                            <h4 class="card-title">{{ $artikel->judul }}</h4>
                            <p class="card-text">{!! substr($artikel->isi,0,100) !!}</p>
                        </div>
                    </div>
                    <div class="card-footer">
                        <small class="text-muted">Last updated 3 mins ago</small>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</section>
@endsection