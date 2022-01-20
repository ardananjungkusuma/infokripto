<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cnetwork extends Model
{
    protected $primaryKey = 'id_jenis_network';
    protected $table = 'jenis_network';
    protected $fillable = ['nama_network', 'singkatan_network'];
}
