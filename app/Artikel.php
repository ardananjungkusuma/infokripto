<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Artikel extends Model
{
    protected $primaryKey = 'id_artikel';
    protected $table = 'artikel';
    protected $fillable = ['slug', 'judul', 'gambar_sampul', 'isi'];

    public static function categoryFilter($name)
    {
        $artikel = DB::table('artikel')
            ->join('arcategory', 'artikel.id_artikel', '=', 'arcategory.id_artikel')
            ->where('arcategory.kategori', $name)
            ->orderBy('artikel.updated_at', 'desc')
            ->select('artikel.*', 'arcategory.kategori')
            ->paginate(15);
        return $artikel;
    }
}
