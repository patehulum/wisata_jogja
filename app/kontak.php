<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class kontak extends Model
{
    protected $table='kontak';
    protected $primaryKey='id';

    public function filekkontak(){
        return $this->belongsTo('App\filekontak','id','id_kontak');
    }
}
