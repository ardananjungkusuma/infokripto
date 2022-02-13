<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Artikel extends Model
{
    protected $primaryKey = 'id_artikel';
    protected $table = 'artikel';
    protected $fillable = ['slug', 'judul', 'gambar_sampul', 'isi'];
}
