<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Webstats extends Model
{
    const UPDATED_AT = null;
    protected $primaryKey = 'id_stats';
    protected $table = 'web_stats';
    protected $fillable = ['status'];
}
