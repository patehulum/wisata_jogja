<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\penginapan;
use App\filepenginapan;
use App;

class PenginapanController extends Controller
{
    public function index($locale)
    {
        App::setLocale($locale);
        $penginapan=penginapan::paginate(6);
        foreach ($penginapan as $penginap) {
            $penginap->images = filepenginapan::where('id_penginapan', $penginap->id)->where('is_cover','yes')->get();
        }
       
        return view('penginapan',compact('locale','penginapan'));
    }

    public function lihat($locale,$id)
    {
        App::setLocale($locale);
        $penginapan=penginapan::where('id',$id)->first();
        $file = filepenginapan::where('id_penginapan',$id)->get();

        $viewer = (int) $penginapan->viewer + 1;
     
        penginapan::where('id',$id)->update(['viewer'=> $viewer]);

        return view('lihatpenginapan', compact('locale','penginapan','file'));
    }
}
