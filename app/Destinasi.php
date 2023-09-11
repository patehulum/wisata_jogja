<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Destinasi extends Model
{							
    protected $table='destinasi';
    protected $primaryKey='id';
    protected $fillable=['nama','nama_en','alamat','deskripsi','deskripsi_en','opration_hours','category','viewer','gambar'];

    public function filedestinasi(){
        return $this->belongsTo('App\filedestinasi','id','id_destinasi');
    }
}