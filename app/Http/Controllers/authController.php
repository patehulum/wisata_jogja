<?php

namespace App\Http\Controllers;

use Auth;
use Illuminate\Http\Request;

class authController extends Controller
{
    public function login()
    {
    	return view ('auths.login');
    }

    public function postlogin(Request $request)
    {
    	if (Auth::attempt($request->only('email','password'))) 
    	{
    		return redirect('/admin');
    	}
    	return redirect('/login') -> with('gagal','email atau password salah. Silahkan masukkan kembali');
    }

    public function logout()
    {
    	Auth::logout();
    	return redirect('/login');
    }

}