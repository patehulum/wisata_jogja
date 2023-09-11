@extends('admin.index')

@section('content')

<div class="col-md-9" style="background-color: #5555; border-radius: 10px; padding-top: 30px; min-height: 800px">
  <div class="scrollable1">
  <div class="table-responsive card shadow mb-4">
      <div class="col-6 float-right"> 
      <h1> Destinasi Wisata  </h1>
      <a href="{{url('addwisata')}}" style="text-align: center;">
        <button type="button" class="btn btn-primary btn-sm">Tambah Data</button>
      </a>
      </div>
      <div style="display:table; margin:0 auto;">
       <center>1 - 25 dari sekian Destinasi Wisata </center> 
  </div>
      <br>
    <table class="table table-bordered table-hover table-striped">
     
      @foreach($daftarwisata as $row)
      <tr>
        <td align="center">{{$loop->iteration}}</td>
        <td>
          {{$row->nama}} <br>
          {!! substr($row->deskripsi,0,150) !!}......... 
          <a href="{{url('id/destinasi/'.$row->id.'/lihatwisata')}}">lihat</a>
        </td>
        <td>author</td>
        <td>{{$row->viewer}}</td>
        <td>{{$row->created_at}}</td>
        <td align="center">
          <a href="{{$row -> id}}/editwisata" class="btn btn-info btn-xs">Edit</a>
          <a href="{{$row -> id}}/hapuswisata" class="btn btn-danger btn-xs" onclick="return confirm('yakin ingin di hapus ?')">Delete </a>
        </td>
      </tr>
      @endforeach
    </table>
  </div>
  <div style="display:table; margin:0 auto;">
            {{$daftarwisata->links()}}
  </div>
  </div>
</div>

@endsection