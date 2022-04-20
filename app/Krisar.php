<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Krisar extends Model
{
    protected $primaryKey = 'id_krisar';
    protected $table = 'krisar';
    protected $fillable = ['email_pengirim', 'kategori', 'isi', 'is_resolved'];
}
