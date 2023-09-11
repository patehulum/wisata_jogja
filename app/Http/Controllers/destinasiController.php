<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Destinasi;
use App\filedestinasi;
use App;

class destinasiController extends Controller
{
    public function wisata_alam($locale)
    {

        App::setLocale($locale);
        $destinasi=Destinasi::where('category','wisata_alam')->paginate(6);
        foreach ($destinasi as $wisata) {
            $wisata->images = filedestinasi::where('id_destinasi', $wisata->id)->where('is_cover','yes')->get();
        }
       
        return view('wisata_alam',compact('locale','destinasi'));
    }
    public function wisata_pantai($locale)
    {
        App::setLocale($locale);
        $destinasi=Destinasi::where('category','wisata_pantai')->paginate(6);
       foreach ($destinasi as $wisata) {
            $wisata->images = filedestinasi::where('id_destinasi', $wisata->id)->where('is_cover','yes')->get();
        }
        return view('wisata_pantai',compact('locale','destinasi'));
    }
    public function wisata_buatan($locale)
    {
        App::setLocale($locale);
        $destinasi=Destinasi::where('category','wisata_buatan')->paginate(6);
        foreach ($destinasi as $wisata) {
            $wisata->images = filedestinasi::where('id_destinasi', $wisata->id)->where('is_cover','yes')->get();
            }
        return view('wisata_buatan',compact('locale','destinasi'));
    }
    public function wisata_sejarah($locale)
    {
        App::setLocale($locale);
        $destinasi=Destinasi::where('category','wisata_sejarah')->paginate(6);
        foreach ($destinasi as $wisata) {
            $wisata->images = filedestinasi::where('id_destinasi', $wisata->id)->where('is_cover','yes')->get();
            }
        return view('wisata_sejarah',compact('locale','destinasi'));
    }
    public function wisata_museum($locale)
    {
        App::setLocale($locale);
        $destinasi=Destinasi::where('category','wisata_museum')->paginate(6);
        foreach ($destinasi as $wisata) {
            $wisata->images = filedestinasi::where('id_destinasi', $wisata->id)->where('is_cover','yes')->get();
            }
        return view('wisata_museum',compact('locale','destinasi'));
    }
    public function lihat($locale, $id)
    {
        App::setLocale($locale);
        $destinasi=Destinasi::where('id',$id)->first();
        $file = filedestinasi::where('id_destinasi',$id)->get();

        $viewer = (int) $destinasi->viewer + 1;
     
        Destinasi::where('id',$id)->update(['viewer'=> $viewer]);

        return view('lihatwisata',compact('locale','destinasi','file'));
    }

}

