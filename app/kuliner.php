<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class kuliner extends Model
{
    protected $table='kuliner';
    protected $primaryKey='id';
    protected $fillable=['nama','nama_en','alamat','keterangan','keterangan_en','estimasi_harga','jam_oprasional','viewer','gambar'];

    public function filekuliner(){
        return $this->belongsTo('App\filekuliner', 'id', 'id_kuliner');
    }
}