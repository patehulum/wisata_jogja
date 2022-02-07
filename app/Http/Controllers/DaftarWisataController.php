<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Destinasi;
use App\filedestinasi;

class DaftarWisataController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $daftarwisata=Destinasi::orderby('id','DESC')->paginate(25);
        return view('admin.wisata',compact('daftarwisata'));
    }

    public function add()
    {
        return view('admin.wisatatambah');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {   

        $id = Destinasi::create([
            'nama' => $request->nama,
            'nama_en'=> $request->nama_en,
            'alamat'=> $request->alamat,
            'deskripsi'=> $request->deskripsi,
            'deskripsi_en'=> $request->deskripsi_en,
            'opration_hours'=> $request->opration_hours,
            'category'=> $request->category,
            'updated_at'=> date('Y-m-d'),
            'created_at'=> date('Y-m-d')
        ])->id;

        $i = 1;
        foreach($request->file('file_image') as $image) {
            if($i == 1){
                $cover='yes';
            }
            else{
                $cover='no';
            }

            $image->move('storage','destinasi_'.$image->getClientOriginalName());
            filedestinasi::create([
                'id_destinasi' => $id,
                'nama_file' =>  'destinasi_'.$image->getClientOriginalName(),
                'directory' => $request->category,
                'is_cover' => $cover
            ]);
            $i++;
        }
        return redirect ('/wisataadmin');

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
     * @param  \App\DaftarWisata  $daftarWisata
     * @return \Illuminate\Http\Response
     */
    public function show(DaftarWisata $daftarWisata)
    {
        //$daftarwisata=DaftarWisata::all();
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\DaftarWisata  $daftarWisata
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $editwisata = Destinasi::find($id);
        return view('admin.wisataedit', ['editwisata'=> $editwisata]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\DaftarWisata  $daftarWisata
     * @return \Illuminate\Http\Response
     */

    public function update(Request $request, $id)
    {
        $editwisata = Destinasi::find($id);
        $editwisata -> update($request -> all());
        return redirect ('/wisataadmin');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\DaftarWisata  $daftarWisata
     * @return \Illuminate\Http\Response
     */
    public function delete($id)
    {
        $editwisata = Destinasi::find($id);
        $editwisata -> delete($id);
        return redirect('/wisataadmin');
    }
}
