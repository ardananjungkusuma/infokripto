@extends('admin.layout.master')
@section('content')
<div class="main-content">
    <div class="container-fluid">
        <div class="card">
            <div class="card-header row">
                <div class="col col-lg-12">
                    <h4>Edit Data ({{  $coin->nama_coin }})</h4>
                </div>
            </div>
            <div class="card-body">
                @if($errors->any())
                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    {{ implode('', $errors->all(':message')) }}
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                @endif
                <form action="/coin/edit" method="POST">
                    @csrf
                    <div class="form-group">
                        <input type="hidden" value="{{ $coin->id_jenis_coin  }}" name="id_jenis_coin" required>
                        <label style="font-weight: bold;">Nama Coin</label>
                        <input type="text" class="form-control" placeholder="Nama" value="<?= $coin->nama_coin ?>"
                            name="nama_coin" required>
                    </div>
                    <div class="form-group">
                        <label style="font-weight: bold;">Singkatan Coin</label>
                        <input type="text" class="form-control" placeholder="0" value="<?= $coin->singkatan_coin ?>"
                            name="singkatan_coin" required>
                    </div>
                    <a href="/coin" class="btn btn-secondary"><i class="fa fa-arrow-left"></i> Back</a>
                    <button class="btn btn-primary" type="submit"><i class="fa fa-pen"></i> Edit Data</button>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection