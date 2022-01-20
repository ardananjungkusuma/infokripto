<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cwallet extends Model
{
    protected $primaryKey = 'id_wallet';
    protected $table = 'crypto_wallet';
    protected $fillable = ['nama_wallet', 'ukuran_aplikasi', 'nft_showcase', 'rating', 'platform_support', 'total_user_install', 'link_playstore'];
}
