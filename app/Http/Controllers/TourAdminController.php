<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Tourguide;
use App\filetourquide;

class TourAdminController extends Controller
{
       /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tour=Tourguide::all();
        return view('admin.tour',compact('tour'));
    }

    public function add()
    {
        return view('admin.tourtambah');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $id = Tourguide::create([
            'nama' => $request->nama,
            'telpon' => $request->telpon,
            'email'=> $request->email
        ])->id;

        $i = 1;
        foreach($request->file('file_image') as $image) {
            if($i == 1){
                $cover='yes';
            }
            else{
                $cover='no';
            }

            $image->move('storage','tour_'.$image->getClientOriginalName());
            filetourquide::create([
                'id_tourquide' => $id,
                'nama_file' =>  'tour_'.$image->getClientOriginalName(),
                'is_cover' => $cover
            ]);
            $i++;
        }
        return redirect ('/touradmin');
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
     * @param  \App\touradmin  $touradmin
     * @return \Illuminate\Http\Response
     */
    public function show(touradmin $touradmin)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\touradmin  $touradmin
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $edittour = Tourguide::find($id);
        return view('admin.touredit', ['edittour'=> $edittour]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\touradmin  $touradmin
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $edittour = Tourguide::find($id);
        $edittour -> update($request -> all());
        return redirect ('/touradmin');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\touradmin  $touradmin
     * @return \Illuminate\Http\Response
     */
    public function delete($id)
    {
        $edittour = Tourguide::find($id);
        $edittour -> delete($id);
        return redirect('/touradmin');
    }
}
