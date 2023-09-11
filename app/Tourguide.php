<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tourguide extends Model
{
	public $timestamps = false;
	protected $table='tourguide';
    protected $primaryKey='id';
    protected  $fillable = ['nama','telpon','email'];

    public function filetourquide()
    {
    	return $this->belongsTo('App\filetourquide','id','id_tourquide');
    }
}