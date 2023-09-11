<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class filepenginapan extends Model
{
    protected $table='file_penginapan';
    protected $primaryKey='id';
    protected $fillable=['id_penginapan','nama_file','directory','is_cover'];

    public $timestamps = false;
}
