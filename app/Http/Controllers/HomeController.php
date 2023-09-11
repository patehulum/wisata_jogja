<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App;

class HomeController extends Controller
{
	public function index($locale)
    {
    	App::setLocale($locale);
        return view('home',compact('locale'));
    }
}
