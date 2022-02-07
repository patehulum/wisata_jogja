@extends('admin.index')

@section('content')

<div class="col-md-9" style="background-color: #5555; border-radius: 10px; padding-top: 30px; min-height: 800px">
  <div class="scrollable1">
  <div class="table-responsive card shadow mb-4">
      <div class="col-6 float-right">
      <h1> Tabel Kuliner  </h1>
      <a href="{{url('addkuliner')}}" style="text-align: center;">
        <button type="button" class="btn btn-primary btn-sm">Tambah Data</button>
      </a>
      </div>
      <div style="display:table; margin:0 auto;">
       <center>1 - 25 dari sekian kuliner </center> 
  </div>
     <br>
    <table class="table table-bordered table-hover table-striped">
      
      @foreach($kuliner as $row)
      <tr>
        <td align="center">{{$loop->iteration}}</td>
        <td>{{$row->nama}} <br>
            {!! substr($row->keterangan,0,150) !!}......... 
            <a href="{{url('id/'.$row->id.'/lihatkuliner')}}">lihat</a></td>
        <td>author</td>
        <td>{{$row->viewer}}</td>
        <td>{{$row->created_at}}</td>        
        <td align="center">
          <a href="{{$row -> id}}/editkuliner" class="btn btn-info btn-xs">Edit</a>
          <a href="{{$row -> id}}/hapuskuliner" class="btn btn-danger btn-xs" onclick="return confirm('yakin ingin di hapus ?')">Delete </a></td>
      </tr>      
      @endforeach
    </table>
  </div>
  </div>
</div>

@endsection