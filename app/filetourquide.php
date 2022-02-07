<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class filetourquide extends Model
{
    protected $table='file_tourquide';
    protected $primaryKey='id';
    protected $fillable=['id_tourquide','nama_file','is_cover'];

    public $timestamps = false;
}
