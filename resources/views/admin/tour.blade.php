@extends('admin.index')

@section('content')
<div class="col-md-9" style="background-color: #5555; border-radius: 10px; padding-top: 30px; min-height: 800px">
  <div class="scrollable1">
  <div class="table-responsive card shadow mb-4">
      <div class="col-6 float-right">
      <h1> Tabel Tour Guide  </h1>
      <a href="{{url('addtour')}}">
        <button type="button" class="btn btn-primary btn-sm">Tambah Data</button>
      </a>
      </div>
    <br>
    <table class="table table-bordered table-hover table-striped">
      <tr align="center">
        <th>No.</th>
        <th>Nama</th>
        <th>Telpon</th>
        <th>Email</th>
        <th class="">Action</th>
      </tr>
      <?php $angka=1; ?>
      @foreach($tour as $row)
      <tr>
        <td align="center"><?= "$angka" ?></td>
        <td>{{$row->nama}}</td>
        <td>{{$row->telpon}}</td>
        <td>{{$row->email}}</td>
        <td align="center">
          <a href="{{$row -> id}}/edittour" class="btn btn-info btn-xs">Edit</a>
          <a href="{{$row -> id}}/hapustour" class="btn btn-danger btn-xs" onclick="return confirm('yakin ingin di hapus ?')">Delete </a>
        </td>
      </tr>
      <?php $angka++; ?>
      @endforeach
    </table>
  </div>
  </div>
</div>

@endsection