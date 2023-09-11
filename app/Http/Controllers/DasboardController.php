<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;

class DasboardController extends Controller
{
      /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user=User::all();
        return view('admin.dasboard', compact('user'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\dasboard  $dasboard
     * @return \Illuminate\Http\Response
     */
    public function show(dasboard $dasboard)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\dasboard  $dasboard
     * @return \Illuminate\Http\Response
     */
    public function edit(dasboard $dasboard)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\dasboard  $dasboard
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, dasboard $dasboard)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\dasboard  $dasboard
     * @return \Illuminate\Http\Response
     */
    public function destroy(dasboard $dasboard)
    {
        //
    }
}
