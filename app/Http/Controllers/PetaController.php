<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App;


class PetaController extends Controller
{
	public function index($locale)
    {
    	App::setLocale($locale);
        return view('maps',compact('locale'));
    }
}
