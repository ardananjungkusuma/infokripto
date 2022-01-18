@extends('admin.layout.master')
@section('content')
<div class="main-content">
    <div class="container-fluid">
        <div class="card">
            <div class="card-header row">
                <div class="col col-lg-12">
                    <h4>Manajemen Crypto Wallet</h4>
                </div>
            </div>
            <div class="card-body">
                <h4>Data Crypto Wallet</h4>
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
                                        <th>Nama Wallet</th>
                                        <th>Ukuran Aplikasi</th>
                                        <th>Rating</th>
                                        <th>Total Install</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $no = 1;
                                    ?>
                                    @foreach($data_cwallet as $cw)
                                    <tr>
                                        <td>{{ $no }}</td>
                                        <td>{{ $cw->nama_wallet }}</td>
                                        <td>{{ $cw->ukuran_aplikasi }} Mb</td>
                                        <td>{{ $cw->rating }}</td>
                                        <td>{{ number_format($cw->total_user_install, 0, ',', '.')  }}+</td>
                                        <td>
                                            <a href="/cwallet/tambahCoinDanNetwork/{{ $cw->id_wallet }}"
                                                class="btn btn-success"><i class="fa fa-clipboard"></i> Manage Coin &
                                                Network</a>
                                            <a href="/cwallet/detail/{{ $cw->id_wallet }}" class="btn btn-info"><i
                                                    class="fa fa-info"></i> Detail</a>
                                            <a href="/cwallet/edit/{{ $cw->id_wallet }}" class="btn btn-warning"><i
                                                    class="fa fa-pen"></i> Edit</a>
                                            <a href="/cwallet/hapus/{{ $cw->id_wallet }}"
                                                onclick="return confirm('Apakah Anda Yakin Ingin Menghapus Data {{ $cw->nama_wallet }}?');"
                                                class="btn btn-danger"><i class="fa fa-trash"></i> Hapus</a>
                                        </td>
                                    </tr>
                                    <?php
                                        $no++;
                                    ?>
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
                <h5 class="modal-title" id="exampleModalLabel">Tambah Data Crypto Wallet</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="/cwallet/tambah" method="POST">
                    @csrf
                    <div class="form-group{{ $errors->has('nama_wallet') ? ' has-error' : '' }}">
                        <label style="font-weight: bold;">Nama Aplikasi</label>
                        <input type="text" class="form-control" placeholder="Nama" name="nama_wallet" required>
                        @if($errors->has('nama_wallet'))
                        <span class="help-block">{{ $errors->first('nama_wallet') }}</span>
                        @endif
                    </div>
                    <div class="form-group">
                        <label style="font-weight: bold;">Ukuran Aplikasi (Satuan mb)</label>
                        <input type="text" class="form-control" placeholder="0" name="ukuran_aplikasi" required>
                    </div>
                    <div class="form-group">
                        <label style="font-weight: bold;">NFT Showcase</label>
                        <select class="form-control" name="nft_showcase" required>
                            <option value="" disabled selected>Pilih Opsi Dibawah</option>
                            <option value="1">Ada</option>
                            <option value="0">Tidak Ada</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label style="font-weight: bold;">Rating</label>
                        <input type="text" class="form-control" placeholder="0" name="rating" required>
                    </div>
                    <div class="form-group">
                        <label style="font-weight: bold;">Jumlah Platform Support</label>
                        <input type="number" class="form-control" placeholder="0" name="platform_support" required>
                    </div>
                    <div class="form-group">
                        <label style="font-weight: bold;">Total User Install</label>
                        <input type="number" class="form-control" placeholder="0" name="total_user_install" required>
                    </div>
                    <div class="form-group">
                        <label style="font-weight: bold;">Tanggal Data Diambil</label>
                        <input type="date" class="form-control" name="last_update_data" required>
                    </div>
                    <div class="form-group">
                        <label style="font-weight: bold;">Link Playstore</label>
                        <input type="text" class="form-control" placeholder="Link Playstore" name="link_playstore"
                            required>
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