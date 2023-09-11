@extends('admin.index')

@section('content')

<div class="col-md-9" style="background-color: #5555; border-radius: 10px; padding-top: 30px; min-height: 800px">

  <h5>Edit Kuliner</h5>

  <form action="updatekuliner" method="POST">
    {{csrf_field()}}
    <div class="form-group">
        <label for="exampleInputEmail1">Nama Kuliner dalam Bahasa Indonesia</label>
        <input name="nama" type="text" class="form-control" id="exampleInputEmail1" value="{{$editkuliner -> nama}}">
    </div>

    <div class="form-group">
        <label for="exampleInputEmail1">Nama Kuliner dalam Bahasa Inggris</label>
        <input name="nama_en" type="text" class="form-control" id="exampleInputEmail1" value="{{$editkuliner -> nama_en}}">
    </div>

    <div class="form-group">
      <label for="exampleInputEmail1">Alamat</label>
      <input name="alamat" type="text" class="form-control" id="exampleInputEmail1" value="{{$editkuliner -> alamat}}">
    </div>

    <div class="form-group">
      <label for="exampleInputEmail1">Keterangan dalam Bahasa Indonesia</label>
      <textarea class="form-control" id="summary-ckeditor" name="keterangan"><?php echo htmlspecialchars($editkuliner -> keterangan); ?></textarea>
    </div>

    <div class="form-group">
      <label for="exampleInputEmail1">Keterangan dalam Bahasa Inggris</label>
      <textarea class="form-control" id="summary-ckeditor" name="keterangan_en"><?php echo htmlspecialchars($editkuliner -> keterangan_en); ?></textarea>
    </div>
    
    <div class="form-group">
      <label for="exampleInputEmail1">Jam Oprasional</label>
      <input name="jam_oprasional" type="text" class="form-control" id="exampleInputEmail1" value="{{$editkuliner -> jam_oprasional}}">
    </div>

    <div class="form-group">
      <label for="exampleInputEmail1">Estimasi Harga</label>
      <input name="estimasi_harga" type="text" class="form-control" id="exampleInputEmail1" value="{{$editkuliner -> estimasi_harga}}">
    </div>

    <div style="float: right; margin-right: 30px">
      <button type="submit" class="btn btn-primary">Update</button>
    </div>

  </form>
</div>

@endsection