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
                    <?php
                    $id_artikel =  $artikel->id_artikel 
                    ?>
                    <div class="form-group">
                        <label style="font-weight:bold">Judul Artikel</label>
                        <input type="text" class="form-control" name="judul" value="{{ $artikel->judul }}"
                            placeholder="Judul artikel...." required>
                        <input type="hidden" name="id_artikel" value="{{ $artikel->id_artikel  }}" required>
                        <input type="hidden" name="sampul_old" value="{{ $artikel->gambar_sampul  }}" required>
                    </div>
                    <div class="form-group">
                        <label style="font-weight:bold">Gambar Sampul Saat Ini, pilih gambar baru jika ingin ganti,
                            biarkan kosong jika tidak
                            (Max size 5mb)</label><br>
                        <img src="{{ asset('img_sampul/' . $artikel->gambar_sampul) }}" width="500px"><br><br>
                        <input type="file" name="gambar_sampul" class="form-control-file"><br>
                        Ingin Mengosongi gambar sampul? <input type="checkbox" name="hapusgambarsampul" value="hapus">
                        Ya
                    </div>
                    <div class="form-group">
                        <label style="font-weight:bold">Kategori(Max 5 kategori)</label>
                        <input type="text" class="form-control" id="inputkategori" value="" placeholder="Kategori">
                        <a class="btn btn-success" onclick="addKategori()"><i class="fa fa-plus"></i> Tambah
                            Kategori</a>
                        <br><br>
                        <ul id="daftar-kategori">

                        </ul>
                    </div>
                    <div class="form-group">
                        <label style="font-weight:bold">Isi Artikel</label>
                        <textarea name="isi" id="isi" required>{{ $artikel->isi }}</textarea>
                    </div>
                    <br><br>
                    <button type="submit" class="btn btn-success"><i class="fa fa-pen"></i> Edit Artikel</button>
                </form>
            </div>
        </div>
    </div>
</div>
@section('script')
<script src="//cdn.ckeditor.com/4.17.2/standard/ckeditor.js"></script>
<script>
    var id_artikel = '<?= $id_artikel ?>>'
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
    var jumlahKategori = 0;
    function getKategori(){
        $.ajax({
            type: 'GET',
            url: `/arcategory/artikel/${id_artikel}`,
            dataType: 'json',
            success: (hasil) => {
                hasil.forEach(function(item) {
                    jumlahKategori++;
                    $('#daftar-kategori').append(`
                    <li class="kriteria${jumlahKategori}">
                        ${item.kategori} - <span style="color: red;cursor: pointer" onclick="hapusKategoriYgUdhAda('kriteria${jumlahKategori}|${item.id_arcategory}')"><i class="fa fa-trash"></i> Hapus</span>
                    </li>
                `);
                });
            }
        });
    }
    function addKategori(){
        if(jumlahKategori < 5){
            let inputnow = document.getElementById('inputkategori').value;
            if(inputnow == ""){
                alert('Anda belum mengisi jenis kategori!');
            }else{
                jumlahKategori++;
                $('#daftar-kategori').append(`
                    <li class="kriteria${jumlahKategori}">
                        ${inputnow} - <span style="color: red;cursor: pointer" onclick="hapusKategori('kriteria${jumlahKategori}')"><i class="fa fa-trash"></i> Hapus</span>
                        <input type="hidden" name="hidden_kategori[]" value="${inputnow}">
                    </li>
                    `);
                document.getElementById('inputkategori').value = '';
                // console.log("kategori added");
                // console.log(jumlahKategori);
            }
        }else{
            alert("Jumlah kategori maksimal 5");
        }
    }
    function hapusKategori(idnya){
        jumlahKategori--;
        $(`.${idnya}`).remove();
        // console.log(jumlahKategori);
        // console.log(idKategori);
    }
    function hapusKategoriYgUdhAda(idnya){
        jumlahKategori--;
        const splitdata = idnya.split("|");
        // console.log(splitdata[0]);
        // console.log(splitdata[1]);

        $(`.${splitdata[0]}`).remove();

        $.get(`/arcategory/artikel/hapus/${splitdata[1]}`, function(data) {
            console.log("deleted");
        });
    }
</script>
@endsection

@endsection