@extends('admin.index')

@section('content')

<div class="col-md-9" style="background-color: #5555; border-radius: 10px; padding-top: 30px; min-height: 800px">
  <h5>Tambahkan Data Tour</h5>

  <form action="tourcreate" method="POST" enctype="multipart/form-data">
    {{csrf_field()}}
    <div class="form-group">
        <label for="exampleInputEmail1">Nama</label>
        <input name="nama" type="text" class="form-control" placeholder="Masukkan Nama tour" required="true">
    </div>

    <div class="form-group">
      <label for="exampleInputEmail1">Telpon</label>
      <input name="telpon" type="text" class="form-control" placeholder="Masukkan no. telpon" required="true">
    </div>

    <div class="form-group">
      <label for="exampleInputEmail1">e-mail</label>
      <input name="email" type="text" class="form-control" placeholder="Masukkan alamat email" required="true">
    </div>

    <div class="form-group">
      <label for="exampleInputEmail1">Masukkan Foto Anda</label>
      <br>
      <input type="file" name="file_image[]" id="image_1">
      <input type="hidden" name="qty_certificate" value="1" id="qty_certificate">
    </div>

    <div style="float: right;margin-right: 30px">
      <button type="submit" class="btn btn-primary">Save</button>
    </div>

  </form>
</div>

@endsection