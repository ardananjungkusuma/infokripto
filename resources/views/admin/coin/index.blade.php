@extends('admin.layout.master')
@section('content')
<div class="main-content">
    <div class="container-fluid">
        <div class="card">
            <div class="card-header row">
                <div class="col col-lg-12">
                    <h4>Manajemen Coin</h4>
                </div>
            </div>
            <div class="card-body">
                <h4>Data Coin</h4>
                @if(session('notif'))
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    {{ session('notif') }}
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                @endif
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                    <i class="fa fa-plus"></i> Tambah Data
                </button>
                <div class="row m-3">
                    <div class="col-lg-12">
                        <div class="table-responsive">
                            <table id="table1" class="table ml-1 mr-1">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Nama Coin</th>
                                        <th>Singkatan</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $no = 1;?>
                                    @foreach($data_coin as $c)
                                    <tr>
                                        <td>{{ $no  }}</td>
                                        <td>{{ $c->nama_coin }}</td>
                                        <td>{{ $c->singkatan_coin }}</td>
                                        <td>
                                            <a href="/coin/edit/{{ $c->id_jenis_coin }}" class="btn btn-warning"><i
                                                    class="fa fa-pen"></i> Edit</a>
                                            <a href="/coin/hapus/{{ $c->id_jenis_coin }}"
                                                onclick="return confirm('Apakah Anda Yakin Ingin Menghapus Data {{ $c->nama_coin }}?');"
                                                class="btn btn-danger"><i class="fa fa-trash"></i> Hapus</a>
                                        </td>
                                    </tr>
                                    <?php
                                        $no++; ?>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Tambah Data Coin</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="/coin/tambah" method="POST">
                    @if($errors->any())
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        {{ implode('', $errors->all(':message')) }}
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    @endif
                    @csrf
                    <div class="form-group">
                        <label style="font-weight: bold;">Nama Coin</label>
                        <input type="text" class="form-control" placeholder="nama" name="nama_coin" required>
                    </div>
                    <div class="form-group">
                        <label style="font-weight: bold;">Singkatan Coin</label>
                        <input type="text" class="form-control" placeholder="singkatan" name="singkatan_coin" required>
                    </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
                <button type="submit" class="btn btn-primary">Tambah Data</button>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection