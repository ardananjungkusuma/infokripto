@extends('admin.layout.master')

@section('content')
<div class="main-content">
    <div class="container-fluid">
        <div class="card">
            <div class="card-header row">
                <div class="col col-lg-12">
                    <h4>Tulis Artikel Baru</h4>
                </div>
            </div>
            <div class="card-body">
                <form action="/artikel/edit" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="form-group">
                        <label style="font-weight:bold">Judul Artikel</label>
                        <input type="text" class="form-control" name="judul" value="{{ $artikel->judul }}"
                            placeholder="Judul artikel...." required>
                    </div>
                    <div class="form-group">
                        <label style="font-weight:bold">Gambar Sampul Saat Ini, pilih gambar baru jika ingin ganti,
                            biarkan kosong jika tidak
                            (Max size 5mb)</label><br>
                        <img src="{{ asset('img_sampul/' . $artikel->gambar_sampul) }}" width="500px"><br><br>
                        <input type="file" name="gambar_sampul" class="form-control-file">
                    </div>
                    <div class="form-group">
                        <label style="font-weight:bold">Kategori (pisahkan kategori dengan tanda koma ,)(Max 5
                            kategori)</label>
                        <input type="text" class="form-control" name="kategori" value="" placeholder="Kategori">
                        <a class="btn btn-success" onclick="addKategori()"><i class="fa fa-plus"></i> Tambah
                            Kategori</a>
                        <ol>

                        </ol>
                    </div>
                    <div class="form-group">
                        <label style="font-weight:bold">Isi Artikel</label>
                        <textarea name="isi" id="isi" required>{{ $artikel->isi }}</textarea>
                    </div>
                    <br><br>
                    <button type="submit" class="btn btn-success"><i class="fa fa-pen"></i> Tambah Artikel</button>
                </form>
            </div>
        </div>
    </div>
</div>
@section('script')
<script src="//cdn.ckeditor.com/4.17.2/standard/ckeditor.js"></script>
<script>
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    CKEDITOR.replace('isi',{
        filebrowserUploadUrl: "{{ route('artikel.upload', ['_token' => csrf_token()]) }}",
        filebrowserUploadMethod: 'form'
    });
    $(document).ready(function() {
        getKategori();
    });
    function getKategori(){
        $.ajax({
            type: 'GET',
            url: `/coin/getCoinByWallet/${id_wallet}`,
            dataType: 'json',
            success: (hasil) => {
                hasil.forEach(function(item) {
                    $('#daftar_coin_support').append(`
                    <span class="idcoin${item.id_wallet_coin}">
                        ${item.nama_coin} - (${item.singkatan_coin}) |
                        <span onclick="hapusCoinDariWallet(${item.id_wallet_coin})" style="cursor: pointer;color:red"> <i class="fa fa-trash"></i> Hapus Coin</span><br>
                    </span>
                `);
                });
            }
        });
    }
    function addKategori(){
        console.log("kategori added");
    }
</script>
@endsection

@endsection