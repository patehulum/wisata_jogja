@extends('admin.index')

@section('content')

<div class="col-md-9" style="background-color: #5555; border-radius: 10px; padding-top: 30px; min-height: 800px">
  <h5>Ubah data Tour</h5>

  <form action="updatetour" method="POST">
    {{csrf_field()}}
    <div class="form-group">
        <label for="exampleInputEmail1">Nama</label>
        <input name="nama" type="text" class="form-control" value="{{$edittour -> nama}}">
    </div>

    <div class="form-group">
      <label for="exampleInputEmail1">Telpon</label>
      <input name="telpon" type="text" class="form-control" value="{{$edittour -> telpon}}">
    </div>

    <div class="form-group">
      <label for="exampleInputEmail1">e-mail</label>
      <input name="email" type="text" class="form-control" value="{{$edittour -> email}}">
    </div>

    <div style="float: right;margin-right: 30px">
      <button type="submit" class="btn btn-primary">Save</button>
    </div>

  </form>
</div>

@endsection