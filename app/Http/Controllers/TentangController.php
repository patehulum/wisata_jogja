<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App;

class TentangController extends Controller
{
	public function index($locale)
    {
    	App::setLocale($locale);
	    return view('tentang', compact('locale'));
	}   
}