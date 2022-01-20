@extends('admin.layout.master')

@section('content')
<div class="main-content">
    <div class="container-fluid">
        <div class="card">
            <div class="card-header row">
                <div class="col col-lg-12">
                    <h4>Edit Data ({{ $dw->nama_wallet }})</h4>
                </div>
            </div>
            <div class="card-body">
                <div style="font-size: 15px;">
                    <label style="font-weight: bold;color:crimson;float:right">Data terakhir diupdate tanggal :
                        {{ date("d-m-Y", strtotime($dw->last_update_data)) }}
                    </label>
                </div>
                <form action="/cwallet/edit" method="POST">
                    @csrf
                    <div class="form-group">
                        <input type="hidden" value="{{ $dw->id_wallet  }}" name="id_wallet" required>
                        <label style="font-weight: bold;">Nama Aplikasi</label>
                        <input type="text" class="form-control" placeholder="Nama" value="{{ $dw->nama_wallet }}"
                            name="nama_wallet" required>
                    </div>
                    <div class="form-group">
                        <label style="font-weight: bold;">Ukuran Aplikasi (Satuan mb)</label>
                        <input type="text" class="form-control" placeholder="0" value="{{ $dw->ukuran_aplikasi  }}"
                            name="ukuran_aplikasi" required>
                    </div>
                    <div class="form-group">
                        <label style="font-weight: bold;">NFT Showcase</label>
                        <select class="form-control" name="nft_showcase" required>
                            <option @if ($dw->nft_showcase == "1") {{ 'selected="selected"' }} @endif value="1">Ada
                            </option>
                            <option @if ($dw->nft_showcase == "0") {{ 'selected="selected"' }} @endif value="0">Tidak
                                Ada</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label style="font-weight: bold;">Rating</label>
                        <input type="text" class="form-control" placeholder="0" value="{{ $dw->rating }}" name="rating"
                            required>
                    </div>
                    <div class="form-group">
                        <label style="font-weight: bold;">Jumlah Platform Support</label>
                        <input type="number" class="form-control" placeholder="0" value="{{ $dw->platform_support }}"
                            name="platform_support" required>
                    </div>
                    <div class="form-group">
                        <label style="font-weight: bold;">Total User Install</label>
                        <input type="number" class="form-control" placeholder="0" value="{{ $dw->total_user_install }}"
                            name="total_user_install" required>
                    </div>
                    <div class="form-group">
                        <label style="font-weight: bold;">Tanggal Data Diambil</label>
                        <input type="date" class="form-control" name="last_update_data"
                            value="{{ $dw->last_update_data }}" required>
                    </div>
                    <div class="form-group">
                        <label style="font-weight: bold;">Link Playstore</label>
                        <input type="text" class="form-control" placeholder="Link Playstore"
                            value="{{ $dw->link_playstore }}" name="link_playstore" required>
                    </div>
                    <a href="/cwallet" class="btn btn-secondary"><i class="fa fa-arrow-left"></i>
                        Back</a>
                    <button class="btn btn-primary" type="submit"><i class="fa fa-pen"></i> Edit Data</button>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection