<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App;
use App\Mail\MalasngodingEmail;
use Illuminate\Support\Facades\Mail;


class KontakController extends Controller
{
	public function index($locale)
    {
    	App::setLocale($locale);
        return view('kontak',compact('locale'));
    }

    public function sendEmail(Request $request){
    	Mail::to("testing@malasngoding.com")->send(new MalasngodingEmail());

		return "Email telah dikirim";
    }
}
