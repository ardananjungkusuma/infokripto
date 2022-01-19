<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Coin extends Model
{
    protected $primaryKey = 'id_jenis_coin';
    protected $table = 'jenis_coin';
    protected $fillable = ['nama_coin', 'singkatan_coin'];
}
