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
                        Recommend Category :
                        <span>
                            <span onclick="saranKategori('airdrop')" style="cursor: pointer;background-color: yellow">
                                airdrop
                            </span>,
                            <span onclick="saranKategori('edukasi')" style="cursor: pointer;background-color: yellow">
                                edukasi
                            </span>,
                            <span onclick="saranKategori('gratis')" style="cursor: pointer;background-color: yellow">
                                gratis
                            </span>,
                            <span onclick="saranKategori('modal')" style="cursor: pointer;background-color: yellow">
                                modal
                            </span>,
                            <span onclick="saranKategori('testnet')" style="cursor: pointer;background-color: yellow">
                                testnet
                            </span>
                        </span><br>
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
{{-- <script src="{{ asset('ckeditor/ckeditor.js') }}"></script> --}}
<script src="{{ asset('js/autolink/plugin.js') }}"></script>
{{-- <script src="{{ asset('js/autocomplete/plugin.js') }}"></script> --}}
<script src="{{ asset('js/textmatch/plugin.js') }}"></script>
<script>
    var id_artikel = '<?= $id_artikel ?>>'
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    CKEDITOR.replace('isi',{
        extraPlugins: 'autolink',
        filebrowserUploadUrl: "{{ route('artikel.upload', ['_token' => csrf_token()]) }}",
        filebrowserUploadMethod: 'form'
    });
    $(document).ready(function() {
        getKategori();
    });
    var jumlahKategori = 0;
    var arrayKategori = [];
    function getKategori(){
        $.ajax({
            type: 'GET',
            url: `/arcategory/artikel/${id_artikel}`,
            dataType: 'json',
            success: (hasil) => {
                hasil.forEach(function(item) {
                    jumlahKategori++;
                    arrayKategori.push(item.kategori);
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
            let inputraw = document.getElementById('inputkategori').value;
            let inputnow = inputraw.toLowerCase();
            if(arrayKategori.includes(inputnow) == false){
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
            } else {
                alert("Tidak boleh ada kategori yang sama");
                document.getElementById('inputkategori').value = '';
            }
        }else{
            alert("Jumlah kategori maksimal 5");
        }
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
    function removeItemOnce(arr, value) {
        var index = arr.indexOf(value);
        if (index > -1) {
            arr.splice(index, 1);
        }
        return arr;
    }
    function saranKategori(saran){
        if(jumlahKategori < 5){
            let inputraw = saran;
            let inputnow = saran.toLowerCase();
            if(arrayKategori.includes(inputnow) == false){
                arrayKategori.push(inputnow);
                if(inputnow == ""){
                    alert('Anda belum mengisi jenis kategori!');
                }else{
                    jumlahKategori++;
                    $('#daftar-kategori').append(`
                        <li class="kriteria${jumlahKategori}">
                            ${inputnow} - <span style="color: red;cursor: pointer" onclick="hapusKategori('kriteria${jumlahKategori}','${inputnow}')"><i class="fa fa-trash"></i> Hapus</span>
                            <input type="hidden" name="hidden_kategori[]" value="${inputnow}">
                        </li>
                        `);
                    document.getElementById('inputkategori').value = '';
                    // console.log("kategori added");
                    // console.log(jumlahKategori);
                }
                // console.log(jumlahKategori);
                // console.log(arrayKategori);
            } else {
                alert("Tidak boleh ada kategori yang sama");
                document.getElementById('inputkategori').value = '';
            }
        }else{
            alert("Jumlah kategori maksimal 5");
        }
    }
    function hapusKategori(idnya, isikategori){

        $(`.${idnya}`).remove();
        // arrayKategori.filter(item => item !== isikategori);
        removeItemOnce(arrayKategori, isikategori);
        // console.log(arrayKategori);
        jumlahKategori--;
        // console.log(jumlahKategori);
        // console.log(idKategori);
    }
</script>
@endsection

@endsection