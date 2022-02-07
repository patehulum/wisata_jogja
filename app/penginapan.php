<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class penginapan extends Model
{
    protected $table='penginapan';
    protected $primaryKey='id';
    protected $fillable=['nama','nama_en','alamat','category','harga','bintang','fasilitas','fasilitas_en','viewer','gambar'];

    public function filepenginapan(){
        return $this->belongsTo('App\filepenginapan','id','id_penginapan');
    }
}
