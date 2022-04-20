@extends('admin.layout.master')
@section('content')
<div class="main-content">
    <div class="container-fluid">
        <div class="card">
            <div class="card-header row">
                <div class="col col-lg-12">
                    <h4>Manajemen Kritik Saran</h4>
                </div>
            </div>
            <div class="card-body">
                <h4>Data Kritik Saran</h4>
                @if(session('notif'))
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    {{ session('notif') }}
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                @endif
                <div class="row m-3">
                    <div class="col-lg-12">
                        <div class="table-responsive">
                            <table id="table1" class="table ml-1 mr-1">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Issued Date</th>
                                        <th>Email</th>
                                        <th>Kategori</th>
                                        <th>Status</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $no = 1;?>
                                    @foreach($krisar as $k)
                                    <tr>
                                        <td>{{ $no  }}</td>
                                        <td>{{ date("d-m-Y", strtotime($k['created_at']))  }}</td>
                                        <td>{{ $k->email_pengirim }}</td>
                                        <td>{{ $k->kategori }}</td>
                                        @if($k->is_resolved == "Not Resolved Yet")
                                        <td style="background-color: #FFC4A0">
                                            {{ $k->is_resolved }}
                                        </td>
                                        @else
                                        <td style="background-color: #c9fba4">
                                            {{ $k->is_resolved }}
                                        </td>
                                        @endif
                                        <td>
                                            <button type="button" class="btn btn-info" data-toggle="modal"
                                                data-target="#myModal{{ $k->id_krisar }}"><i class="fa fa-eye"></i>
                                                Detail Krisar</button>
                                            <a href="/krisar/resolve/{{ $k->id_krisar }}"
                                                onclick="return confirm('Apakah Kritik & Saran sudah terselsaikan?');"
                                                class="btn btn-success"><i class="fa fa-check"></i> Resolve Krisar</a>
                                        </td>
                                    </tr>
                                    <div class="modal fade" id="myModal{{ $k->id_krisar }}" tabindex="-1" role="dialog"
                                        aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLongTitle">Isi
                                                        {{ $k->kategori }}</h5>
                                                    <button type="button" class="close" data-dismiss="modal"
                                                        aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    <h5>
                                                        {{ $k->isi }}
                                                    </h5>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary"
                                                        data-dismiss="modal">Close</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
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