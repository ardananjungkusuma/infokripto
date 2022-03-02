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
                <h4>Daftar Gambar pada Artikel</h4>
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
                                        <th>Nama</th>
                                        <th>Gambar</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $no = 1;?>
                                    @foreach(File::glob(public_path('images').'/*') as $path)
                                    <tr>
                                        <td>{{ $no  }}</td>
                                        <td>
                                            <?php
                                                $filenya = pathinfo($path)['filename'] . "." . pathinfo($path)['extension'];
                                                ?>
                                            {{ pathinfo($path)['filename'] . "." . pathinfo($path)['extension'] }}
                                        </td>
                                        <td>
                                            <a href="{{ str_replace(public_path(), '', $path) }}" target="_blank">
                                                <img width="200" src="{{ str_replace(public_path(), '', $path) }}">
                                            </a>
                                        </td>
                                        <td>
                                            <a class="btn btn-primary" onclick="checkGambar(`{{ $filenya }}`)">Check</a>
                                            <span id="deletebutton">

                                            </span>
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
<script>
    function checkGambar(filenya){
        console.log('msuk');
        const nama_file = filenya;
        var isinya;
        var empty;
        var status = 0;
        $.ajax({
            type: 'GET',
            url: `/artikel/getAll`,
            dataType: 'json',
            success: (hasil) => {
                hasil.forEach(function(item) {
                    isinya = item.isi;
                    const check = isinya.includes(nama_file);
                    if(check == true){
                        isinya = `<a href="/content/${item.slug}">Link to post</a>`;
                        status += 1;
                    } else{
                        empty = `<a href="/content/${item.slug}" class="btn btn-danger">Delete</a>`;
                        status += 0;
                    }
                });
            }
        });
        console.log(status);
        if(status > 0){
            $('#deletebutton').append(isinya);
        } else {
            $('#deletebutton').append(empty);
        }
    }
</script>
@endsection