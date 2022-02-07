<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class filekuliner extends Model
{
    protected $table='file_kuliner';
    protected $primaryKey='id';
    protected $fillable=['id_kuliner','nama_file','directory','is_cover'];

    public $timestamps = false;
}
