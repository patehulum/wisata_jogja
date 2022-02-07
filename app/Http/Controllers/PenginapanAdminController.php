<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\penginapan;
use App\filepenginapan;

class PenginapanAdminController extends Controller
{
       /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $penginapan=penginapan::orderby('id','DESC')->paginate(25);
        return view('admin.penginapan',compact('penginapan'));
    }

     public function lihat($locale,$id)
    {
        App::setLocale($locale);
        $penginapan=penginapan::where('id',$id)->first();
        $file = filepenginapan::where('id_penginapan',$id)->get();

        $viewer = (int) $penginapan->viewer + 1;
     
        penginapan::where('id',$id)->update(['viewer'=> $viewer]);

        return view('lihatpenginapan',compact('locale','destinasi','file'));
    }

    public function add()
    {
        return view('admin.penginapantambah');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $id = penginapan::create([
            'nama' => $request->nama,
            'nama_en' => $request->nama_en,
            'alamat'=> $request->alamat,
            'category'=> $request->category,
            'harga'=> $request->harga,
            'bintang'=> $request->bintang,
            'fasilitas'=> $request->fasilitas,
            'fasilitas_en'=> $request->fasilitas_en,
            'updated_at'=> date('Y-m-d H:i:s'),
            'created_at'=> date('Y-m-d H:i:s')
        ])->id;

        $i = 1;
        foreach($request->file('file_image') as $image) {
            if($i == 1){
                $cover='yes';
            }else{
                $cover='no';
            }

            $image->move('storage','penginapan_'.$image->getClientOriginalName());
            filepenginapan::create([
                'id_penginapan' => $id,
                'nama_file' => 'penginapan_'.$image->getClientOriginalName(),
                'directory' => $request->category,
                'is_cover' => $cover
            ]);
            $i++;
        }
        return redirect ('/penginapanadmin');
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
     * @param  \App\penginapanadmin  $penginapanadmin
     * @return \Illuminate\Http\Response
     */
    public function show(penginapanadmin $penginapanadmin)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\penginapanadmin  $penginapanadmin
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $editpenginapan = penginapan::find($id);
        return view('admin.penginapanedit', ['editpenginapan'=> $editpenginapan]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\penginapanadmin  $penginapanadmin
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $editpenginapan = penginapan::find($id);
        $editpenginapan -> update($request -> all());
        return redirect ('/penginapanadmin');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\penginapanadmin  $penginapanadmin
     * @return \Illuminate\Http\Response
     */
    public function delete($id)
    {
        $editpenginapan = penginapan::find($id);
        $editpenginapan -> delete($id);
        return redirect('/penginapanadmin');
    }

}
