@extends('admin.index')

@section('content')

<div class="col-md-9" style="background-color: #5555; border-radius: 10px; padding-top: 30px; min-height: 800px">
  <h5>Ubah data penginapan</h5>

  <form action="updatepenginapan" method="POST">
    {{csrf_field()}}
    <div class="form-group">
        <label for="exampleInputEmail1">Nama tempat penginapan dalam Bahasa Indonesia</label>
        <input name="nama" type="text" class="form-control" id="exampleInputEmail1" value="{{$editpenginapan -> nama}}">
    </div>

    <div class="form-group">
        <label for="exampleInputEmail1">Nama tempat penginapan dalam Bahasa Inggris</label>
        <input name="nama_en" type="text" class="form-control" id="exampleInputEmail1" value="{{$editpenginapan -> nama_en}}">
    </div>

    <div class="form-group">
      <label for="exampleInputEmail1">Alamat</label>
      <input name="alamat" type="text" class="form-control" id="exampleInputEmail1" value="{{$editpenginapan -> alamat}}">
    </div>

    <div class="form-group">
      <label for="exampleInputEmail1">Ketegory</label>
      <input name="category" type="text" class="form-control" id="exampleInputEmail1" value="{{$editpenginapan -> category}}">
    </div>

    <div class="form-group">
      <label for="exampleInputEmail1">Kategori</label>
      <select name="category" class="form-control" required="true">
        <option hidden value ="{{$editpenginapan -> category}}"> {{$editpenginapan -> category}} </option>
        <option value="Hotel">Hotel</option>
        <option value="Villa">Villa</option>
        <option value="Apartemen">Apartemen</option>
        <option value="Backpacker">Backpacker</option>
      </select>
    </div>

    <div class="form-group">
      <label for="exampleInputEmail1">Harga</label>
      <input name="harga" type="text" class="form-control" id="exampleInputEmail1" value="{{$editpenginapan -> harga}}">
    </div>

    <div class="form-group">
      <label for="exampleInputEmail1">Bintang</label>
      <input name="bintang" type="text" class="form-control" id="exampleInputEmail1" value="{{$editpenginapan -> bintang}}">
    </div>

    <div class="form-group">
      <label for="exampleInputEmail1">Fasilitas</label>
      <textarea class="form-control" id="summary-ckeditor" name="fasilitas"><?php echo htmlspecialchars($editpenginapan -> fasilitas); ?></textarea>
    </div>

    <div class="form-group">
      <label for="exampleInputEmail1">Fasilitas</label>
      <textarea class="form-control" id="summary-ckeditor" name="fasilitas_en"><?php echo htmlspecialchars($editpenginapan -> fasilitas_en); ?></textarea>
    </div>


    <div style="float: right;margin-right: 30px">
      <button type="submit" class="btn btn-primary">Save</button>
    </div>

  </form>
</div>

@endsection