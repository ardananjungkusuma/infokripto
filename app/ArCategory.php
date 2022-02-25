<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ArCategory extends Model
{
    protected $primaryKey = 'id_arcategory';
    protected $table = 'arcategory';
    protected $fillable = ['id_artikel', 'kategori'];
}
