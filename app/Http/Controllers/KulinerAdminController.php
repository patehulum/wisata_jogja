<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\kuliner;
use App\filekuliner;

class KulinerAdminController extends Controller
{
      /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $kuliner=kuliner::orderby('id','DESC')->paginate(25);
        return view('admin.kuliner',compact('kuliner'));
    }

    public function add()
    {
        return view('admin.kulinertambah');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {

        $id = kuliner::create([
            'nama' => $request->nama,
            'nama_en' => $request->nama_en,
            'alamat'=> $request->alamat,
            'keterangan'=> $request->keterangan,
            'keterangan_en'=> $request->keterangan_en,
            'estimasi_harga'=> $request->estimasi_harga,
            'jam_oprasional'=> $request->jam_oprasional,
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

            $image->move('storage','kuliner_'.$image->getClientOriginalName());
            filekuliner::create([
                'id_kuliner' => $id,
                'nama_file' =>  'kuliner_'.$image->getClientOriginalName(),
                'is_cover' => $cover
            ]);
            $i++;
        }
        return redirect ('/kulineradmin');
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
     * @param  \App\kulineradmin  $kulineradmin
     * @return \Illuminate\Http\Response
     */
    public function show(kulineradmin $kulineradmin)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\kulineradmin  $kulineradmin
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $editkuliner = kuliner::find($id);
        return view('admin.kulineredit', ['editkuliner'=> $editkuliner]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\kulineradmin  $kulineradmin
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $editkuliner = kuliner::find($id);
        $editkuliner -> update($request -> all());
        return redirect ('/kulineradmin');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\kulineradmin  $kulineradmin
     * @return \Illuminate\Http\Response
     */
    public function delete($id)
    {
        $editkuliner = kuliner::find($id);
        $editkuliner -> delete($id);
        return redirect('/kulineradmin');
    }
}
