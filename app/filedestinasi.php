<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class filedestinasi extends Model
{
    protected $table='file_destinasi';
    protected $primaryKey='id';
    protected $fillable=['id_destinasi','nama_file','directory','is_cover'];

    public $timestamps = false;
}
