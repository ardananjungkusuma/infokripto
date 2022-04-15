<?php

namespace App\Http\Controllers;

use App\ArCategory;
use App\Artikel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;

class ArtikelController extends Controller
{
    public function index()
    {
        $artikel = Artikel::orderBy('updated_at', 'DESC')->get();
        return view('admin.artikel.manage', compact('artikel'));
    }

    public function content(Request $request, $slug = null)
    {
        if ($slug === null) {
            if (!$request->search_article) {
                $artikel = Artikel::orderBy('updated_at', 'DESC')->paginate(20);
                return view('home.daftarartikel', compact('artikel'));
            } else {
                $artikel = Artikel::where('judul', 'LIKE', '%' . $request->search_article . '%')->paginate(20);
                return view('home.daftarartikel', compact('artikel'));
            }
        } else {
            $artikel = Artikel::where('slug', $slug)->get()->first();
            $category = ArCategory::where('id_artikel', $artikel->id_artikel)->get();
            // dd($category);
            // echo (empty($artikel));
            if (empty($artikel)) {
                abort(404);
            } else {
                return view('home.isiartikel', compact('artikel', 'category'));
            }
            // print_r($artikel);
        }
    }

    public function tambah(Request $request)
    {
        if (!$request->judul) {
            return view('admin.artikel.tambah');
        } else {
            $validator = Validator::make($request->all(), [
                'judul' => 'required',
                'isi' => 'required',
                'gambar_sampul' => 'mimes:jpg,png,jpeg|max:5100'
            ]);

            if ($validator->fails()) {
                return redirect('/artikel/tambah')
                    ->withErrors($validator)
                    ->withInput();
            }

            $pathUpload = 'img_sampul';

            $id = DB::select("SHOW TABLE STATUS LIKE 'artikel'");
            $next_id = $id[0]->Auto_increment;

            $ar = new Artikel;
            $ar->judul = $request->judul;
            $ar->slug = Str::slug($request->judul) . '-' . date('ymdhis');
            $ar->author = Auth::user()->name;

            if ($request->hasFile('gambar_sampul')) {
                $image = str_replace(" ", "", $request->file('gambar_sampul')->getClientOriginalName());

                $nama_file = date('dmYHis') . "_" . $image;

                $request->file('gambar_sampul')->move($pathUpload, $nama_file);

                $ar->gambar_sampul = $nama_file;
            } else {
                $ar->gambar_sampul = "noimg.jpg";
            }

            $ar->isi = $request->isi;
            $ar->save();

            if ($request->hidden_kategori !== null) {
                for ($count = 0; $count < count($request->hidden_kategori); $count++) {
                    $cat = new ArCategory;
                    $cat->id_artikel = $next_id;
                    $cat->kategori = $request->hidden_kategori[$count];
                    $cat->save();
                }
            }
            return redirect('/artikel')->with('notif', 'Artikel Baru Berhasil Ditambah');
        }
    }

    public function edit(Request $request, $slug = null)
    {
        if (!$request->judul) {
            $artikel = Artikel::where('slug', $slug)->get()->first();
            // dd($kategori);
            return view('admin.artikel.edit', compact('artikel'));
        } else {
            $validator = Validator::make($request->all(), [
                'judul' => 'required',
                'isi' => 'required',
                'gambar_sampul' => 'mimes:jpg,png,jpeg|max:5100'
            ]);

            if ($validator->fails()) {
                return redirect('/artikel/tambah')
                    ->withErrors($validator)
                    ->withInput();
            }

            $pathUpload = 'img_sampul';
            $pathOld = 'img_sampul/';

            $artikel = Artikel::where('id_artikel', $request->id_artikel)->get()->first()
                ->update([
                    'judul' => $request->judul,
                    // 'slug' => Str::slug($request->judul) . '-' . date('ymdhis'),
                    'isi' => $request->isi
                ]);

            if (isset($request->hapusgambarsampul)) {
                if ($request->sampul_old != "noimg.jpg") {
                    unlink($pathOld . $request->sampul_old);

                    $artikel = Artikel::where('id_artikel', $request->id_artikel)->get()->first()
                        ->update([
                            'gambar_sampul' => "noimg.jpg"
                        ]);
                }
            } else {
                if ($request->hasFile('gambar_sampul')) {
                    if ($request->sampul_old != "noimg.jpg") {
                        unlink($pathOld . $request->sampul_old);
                    }
                    $image = str_replace(" ", "", $request->file('gambar_sampul')->getClientOriginalName());

                    $nama_file = date('dmYHis') . "_" . $image;

                    $request->file('gambar_sampul')->move($pathUpload, $nama_file);

                    $artikel = Artikel::where('id_artikel', $request->id_artikel)->get()->first()
                        ->update([
                            'gambar_sampul' => $nama_file
                        ]);
                }
            }

            if ($request->hidden_kategori !== null) {
                for ($count = 0; $count < count($request->hidden_kategori); $count++) {
                    $cat = new ArCategory;
                    $cat->id_artikel = $request->id_artikel;
                    $cat->kategori = $request->hidden_kategori[$count];
                    $cat->save();
                }
            }
            return redirect('/artikel')->with('notif', 'Artikel Baru Berhasil Ditambah');
        }
    }

    public function upload(Request $request)
    {
        if ($request->hasFile('upload')) {
            $originName = $request->file('upload')->getClientOriginalName();
            $fileName = pathinfo($originName, PATHINFO_FILENAME);
            $extension = $request->file('upload')->getClientOriginalExtension();
            $fileName = $fileName . '_' . time() . '.' . $extension;

            $request->file('upload')->move(public_path('images'), $fileName);

            $CKEditorFuncNum = $request->input('CKEditorFuncNum');
            $url = asset('images/' . $fileName);
            $msg = 'Image uploaded successfully';
            $res = "<script>window.parent.CKEDITOR.tools.callFunction($CKEditorFuncNum, '$url','$msg')</script>";
            @header('Content-type: text/html; charset=utf-8');
            echo $res;
        }
    }

    public function hapus($slug)
    {
        $artikel = Artikel::where('slug', $slug)->get()->first();
        $src =  $artikel->isi;
        $sampul = $artikel->gambar_sampul;
        // echo $sampul;
        if ($sampul != 'noimg.jpg') {
            // echo "delete img";
            unlink('img_sampul/' . $sampul);
        }
        preg_match_all('~src="([^"]+)~', $src, $matches);
        $links = $matches[1];
        if (count($links) > 0) {
            // $imgArr = [];
            for ($i = 0; $i < count($links); $i++) {
                $image_path = parse_url($links[$i], PHP_URL_PATH);
                $ip = substr($image_path, 1);
                unlink($ip);
                // array_push($imgArr, $ip);
            }
        }
        $artikel->delete();
        return redirect('/artikel')->with('notif', 'Sukses Hapus Data Artikel');
        // print_r($imgArr);
    }

    public function gambarmanage()
    {
        return view('admin.artikel.gambarmanage');
    }

    public function getAll()
    {
        $artikel = Artikel::all();
        echo json_encode($artikel);
    }
}
