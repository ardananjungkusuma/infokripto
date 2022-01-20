<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Walletcoin extends Model
{
    protected $primaryKey = 'id_wallet_coin';
    protected $table = 'wallet_coin';
    protected $fillable = ['id_jenis_coin', 'id_wallet'];
}
