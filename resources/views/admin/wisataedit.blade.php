@extends('admin.index')

@section('content')

<div class="col-md-9" style="background-color: #5555; border-radius: 10px; padding-top: 30px; min-height: 800px">
  <h5>Edit Destinasi</h5>

  <form action="updatewisata" method="POST">
    {{csrf_field()}}
    <div class="form-group">
        <label for="exampleInputEmail1">Nama Wisata dalam Bahasa Indonesia</label>
        <input name="nama" type="text" class="form-control" id="exampleInputEmail1" value="{{$editwisata -> nama}}">
    </div>

    <div class="form-group">
        <label for="exampleInputEmail1">Nama Wisata dalam Bahasa Inggris</label>
        <input name="nama_en" type="text" class="form-control" id="exampleInputEmail1" value="{{$editwisata -> nama_en}}">
    </div>

    <div class="form-group">
      <label for="exampleInputEmail1">Alamat</label>
      <input name="alamat" type="text" class="form-control" id="exampleInputEmail1" value="{{$editwisata -> alamat}}">
    </div>

    <div class="form-group">
      <label for="exampleInputEmail1">Deskripsi dalam Bahasa Indonesia</label>
      <textarea class="form-control" id="summary-ckeditor" name="deskripsi"><?php echo htmlspecialchars($editwisata -> deskripsi); ?></textarea>
    </div>

    <div class="form-group">
      <label for="exampleInputEmail1">Deskripsi dalam Bahasa Inggris</label>
      <textarea class="form-control" id="summary-ckeditor" name="deskripsi_en"><?php echo htmlspecialchars($editwisata -> deskripsi_en); ?></textarea>
    </div>

    <div class="form-group">
      <label for="exampleInputEmail1">Jam Operasional</label>
      <input name="opration_hours" type="text" class="form-control" id="exampleInputEmail1" value="{{$editwisata -> opration_hours}}">
    </div>

    <div class="form-group">
      <label for="exampleInputEmail1">Kategori</label>
      <select name="category" class="form-control" id="exampleInputEmail1">
        <option hidden value ="{{$editwisata -> category}}"> {{$editwisata -> category}} </option>
        <option value="wisata_alam">wisata_alam</option>
        <option value="wisata_pantai">wisata_pantai</option>
        <option value="wisata_museum">wisata_museum</option>
        <option value="wisata_sejarah">wisata_sejarah</option>
        <option value="wisata_buatan">wisata_buatan</option>
      </select>
    </div>

    <div style="float: right; margin-right: 30px">
      <button type="submit" class="btn btn-primary">Update</button>
    </div>

  </form>
</div>

@endsection