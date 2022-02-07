<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\kuliner;
use App\filekuliner;
use App;

class KulinerController extends Controller
{
    public function index($locale)
    {
        App::setLocale($locale);
        $kuliner=kuliner::paginate(6);
        foreach ($kuliner as $kulin) {
            $kulin->images = filekuliner::where('id_kuliner', $kulin->id)->where('is_cover','yes')->get();
        }
       
        return view('kuliner',compact('locale','kuliner'));
    }

    public function lihat($locale,$id)
    {
        App::setLocale($locale);
        $kuliner=kuliner::where('id',$id)->first();
        $file = filekuliner::where('id_kuliner',$id)->get();

        $viewer = (int) $kuliner->viewer + 1;
     
        kuliner::where('id',$id)->update(['viewer'=> $viewer]);

        return view('lihatkuliner',compact('locale','kuliner','file'));
    }
}