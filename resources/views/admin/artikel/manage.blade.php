@extends('admin.layout.master')

@section('content')
<div class="main-content">
    <div class="container-fluid">
        <div class="card">
            <div class="card-header row">
                <div class="col col-lg-12">
                    <h4>Manajemen Artikel</h4>
                </div>
            </div>
            <div class="card-body">
                <h4>Daftar Artikel</h4>
                @if(session('notif'))
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    {{ session('notif') }}
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                @endif
                <a href="/artikel/tambah" class="btn btn-success"><i class="fa fa-pen"></i> Tulis Artikel</a>
                <div class="row m-3">
                    <div class="col-lg-12">
                        <div class="table-responsive">
                            <table id="table1" class="table ml-1 mr-1">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Judul Artikel</th>
                                        <th>Slug</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $no = 1;?>
                                    @foreach($artikel as $a)
                                    <tr>
                                        <td>{{ $no  }}</td>
                                        <td>{{ $a->judul }}</td>
                                        <td>{{ $a->slug }}</td>
                                        <td>
                                            <a href="/artikel/edit/{{ $a->id_artikel }}" class="btn btn-warning"><i
                                                    class="fa fa-pen"></i> Edit</a>
                                            <a href="/coin/hapus/{{ $a->id_artikel }}"
                                                onclick="return confirm('Apakah Anda Yakin Ingin Menghapus Data {{ $a->slug }}?');"
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
@endsection