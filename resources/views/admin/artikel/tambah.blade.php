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
                <form action="/artikel/tambah" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="form-group">
                        <label>Judul Artikel</label>
                        <input type="text" class="form-control" name="judul" placeholder="Judul artikel...." required>
                    </div>
                    <div class="form-group">
                        <label>Gambar Sampul (Max size 5mb)</label>
                        <input type="file" name="gambar_sampul" class="form-control-file">
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
                        <label>Isi Artikel</label>
                        <textarea name="isi" id="isi" required></textarea>
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
{{-- <script src="{{ asset('ckeditor/ckeditor.js') }}"></script> --}}
<script src="{{ asset('js/autolink/plugin.js') }}"></script>
<script src="{{ asset('js/autocomplete/plugin.js') }}"></script>
<script src="{{ asset('js/textmatch/plugin.js') }}"></script>
<script>
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
    var jumlahKategori = 0;
    var arrayKategori = [];
    function addKategori(){
        if(jumlahKategori < 5){
            let inputraw = document.getElementById('inputkategori').value;
            let inputnow = inputraw.toLowerCase();
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