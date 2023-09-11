<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\filetourquide;
use App\Tourguide;
use App;

class TourGuideController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($locale)
    {
        App::setLocale($locale);
        $tourguide=Tourguide::paginate(6);
        foreach ($tourguide as $row) {
            $row->images = filetourquide::where('id_tourquide', $row->id)->where('is_cover','yes')->get();
        }
        return view('tourism',compact('locale','tourguide'));
    }

    public function lihat($locale,$id)
    {
        App::setLocale($locale);
        $look=Tourguide::where('id',$id)->first();
        $file = filetourquide::where('id_tourquide',$id)->get();

        return view('lihattour',compact('locale','look','file'));
    }
}