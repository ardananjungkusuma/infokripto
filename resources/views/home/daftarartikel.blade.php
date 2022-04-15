@extends('home.layout.master')
@section('content')
<section id="services" class="services section-bg">
    <div class="section-title">
        <h2 data-aos="fade-in" class="aos-init aos-animate">Artikel Kripto</h2>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-11">
                <form class="form-inline" method="POST" action="/content">
                    @csrf
                    <input class="form-control mr-sm-2" name="search_article" type="search"
                        placeholder="🔍 Cari judul artikel" aria-label="Search">
            </div>
            <div class="col-lg-1">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form>
            </div>
            <div class="col-lg-12">
                @if($artikel->isEmpty())
                <div class="d-flex flex-column">
                    <div class="p-2 mt-2 bg-white shadow p-3 rounded">
                        Sorry the article you search was not found! 😥🔍
                    </div>
                </div>
                @else
                <div class="d-flex flex-column">
                    @foreach($artikel as $a)
                    <div class="p-2 mt-2 bg-white shadow p-3 rounded" style="cursor: pointer;"
                        onclick="window.open('/content/{{ $a['slug'] }}')">
                        <span style="font-weight: bold">
                            {{ $a['judul'] }}
                        </span>
                        <br>
                        <?= substr(strip_tags($a['isi']),0,150) ?>..... <a target="_blank"
                            href="/content/{{ $a['slug'] }}">Read More</a><br>
                        <span style="margin-left: auto;font-weight: lighter">Posted :
                            {{ date("d-m-Y", strtotime($a['updated_at']->toDateString())) }} |
                            {{ $a['updated_at']->diffForHumans() }}</span>
                    </div>
                    @endforeach
                </div>
                @endif
                <br>
                {!! $artikel->links() !!}
            </div>
        </div>
    </div>
</section>
@endsection