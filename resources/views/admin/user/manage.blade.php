@extends('admin.layout.master')
@section('content')
<div class="main-content">
    <div class="container-fluid">
        <div class="card">
            <div class="card-header row">
                <div class="col col-lg-12">
                    <h4>Manajemen User</h4>
                </div>
            </div>
            <div class="card-body">
                <h4>Data User</h4>
                @if(session('notif'))
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    {{ session('notif') }}
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                @endif
                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                    <i class="fa fa-plus"></i> Tambah User
                </button>
                <div class="row m-3">
                    <div class="col-lg-12">
                        <div class="table-responsive">
                            <table id="table1" class="table ml-1 mr-1">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Nama</th>
                                        <th>Email</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $no = 1;?>
                                    @foreach($user as $u)
                                    <tr>
                                        <td>{{ $no  }}</td>
                                        <td>{{ $u->name }}</td>
                                        <td>{{ $u->email }}</td>
                                        <td>
                                            <button type="button" class="btn btn-info" data-toggle="modal"
                                                data-target="#myModal{{ $u->id }}"><i class="fa fa-eye"></i>
                                                Detail User</button>
                                        </td>
                                    </tr>
                                    <div class="modal fade" id="myModal{{ $u->id }}" tabindex="-1" role="dialog"
                                        aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLongTitle">Detail User</h5>
                                                    <button type="button" class="close" data-dismiss="modal"
                                                        aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    <h5>
                                                        Nama : {{ $u->name }}<br>
                                                        Alamat : {{ $u->alamat }}<br>
                                                        Nomor HP : {{ $u->no_hp }}<br>
                                                        Username : {{ $u->username }}<br>
                                                        Email : {{ $u->email }}<br>
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
                <!-- Modal -->
                <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
                    aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Tambah User</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <form action="/user/manage" method="POST" enctype="multipart/form-data">
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
                                        <label style="font-weight: bold;">Nama</label>
                                        <input type="text" class="form-control" name="name" required>
                                    </div>
                                    <div class="form-group">
                                        <label style="font-weight: bold;">Alamat</label>
                                        <input type="text" class="form-control" name="alamat" required>
                                    </div>
                                    <div class="form-group">
                                        <label style="font-weight: bold;">NO HP</label>
                                        <input type="text" class="form-control" name="no_hp" required>
                                    </div>
                                    <div class="form-group">
                                        <label style="font-weight: bold;">Username</label>
                                        <input type="text" class="form-control" name="username" required>
                                    </div>
                                    <div class="form-group">
                                        <label style="font-weight: bold;">Email</label>
                                        <input type="email" class="form-control" name="email" required>
                                    </div>
                                    <div class="form-group">
                                        <label style="font-weight: bold;">Password</label>
                                        <input type="password" class="form-control" name="password" required>
                                    </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-primary">Save changes</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection