@extends('admin.layout.master')
@section('content')
<div class="main-content">
    <div class="container-fluid">
        <div class="card">
            <div class="card-header row">
                <div class="col col-lg-12">
                    <h4>Edit Data Chain Network ({{  $cnetwork->nama_network }})</h4>
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
                <form action="/cnetwork/edit" method="POST">
                    @csrf
                    <div class="form-group">
                        <input type="hidden" value="{{ $cnetwork->id_jenis_network  }}" name="id_jenis_network"
                            required>
                        <label style="font-weight: bold;">Nama Chain Network</label>
                        <input type="text" class="form-control" placeholder="Nama"
                            value="{{ $cnetwork->nama_network  }}" name="nama_network" required>
                    </div>
                    <div class="form-group">
                        <label style="font-weight: bold;">Singkatan Chain Network</label>
                        <input type="text" class="form-control" placeholder="0"
                            value="{{ $cnetwork->singkatan_network }}" name="singkatan_network" required>
                    </div>
                    <a href="/cnetwork" class="btn btn-secondary"><i class="fa fa-arrow-left"></i> Back</a>
                    <button class="btn btn-primary" type="submit"><i class="fa fa-pen"></i> Edit Data</button>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection