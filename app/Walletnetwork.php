<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Walletnetwork extends Model
{
    protected $primaryKey = 'id_wallet_network';
    protected $table = 'wallet_network';
    protected $fillable = ['id_jenis_network', 'id_wallet'];
}
