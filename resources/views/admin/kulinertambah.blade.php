@extends('admin.index')

@section('content')

<div class="col-md-9" style="background-color: #5555; border-radius: 10px; padding-top: 30px; min-height: 800px">
  <h5>Tambahkan Kuliner</h5>

  <form action="kulinercreate" method="POST" enctype="multipart/form-data">
    {{csrf_field()}}
    <div class="form-group">
        <label for="exampleInputEmail1">Nama Kuliner dalam Bahasa Indonesia</label>
        <input name="nama" type="text" class="form-control" placeholder="Masukkan Nama kuliner" required="true">
    </div>

    <div class="form-group">
        <label for="exampleInputEmail1">Nama Kuliner dalam Bahasa Inggris</label>
        <input name="nama_en" type="text" class="form-control" placeholder="Masukkan Nama kuliner" required="true">
    </div>

    <div class="form-group">
      <label for="exampleInputEmail1">Alamat</label>
      <input name="alamat" type="text" class="form-control" placeholder="Masukkan Alamat" required="true">
    </div>

    <div class="form-group">
      <label for="exampleInputEmail1">Keterangan dalam Bahasa Indonesia</label>
      <textarea class="form-control" id="summary-ckeditor" name="keterangan" placeholder="Masukkan Keterangan" required="true"></textarea>
    </div>

    <div class="form-group">
      <label for="exampleInputEmail1">Keterangan dalam Bahasa Inggris</label>
      <textarea class="form-control" id="summary-ckeditor" name="keterangan_en" placeholder="Masukkan Keterangan" required="true"></textarea>
    </div>

    <div class="form-group">
      <label for="exampleInputEmail1">Jam Operasional</label> 
      <input name="jam_oprasional" type="text" class="form-control" placeholder="Masukkan Waktu (contoh 08:00-13:30)" required="true">
    </div>

    <div class="form-group">
      <label for="exampleInputEmail1">Estimasi Harga</label>
      <input name="estimasi_harga" type="text" class="form-control" placeholder="Masukkan harga (contoh Rp.25.000 - Rp.500.000)" required="true">
    </div>
    
    <div class="form-group">
      <input type="file" name="file_image[]" id="image_1">
      <input type="hidden" name="qty_certificate" value="1" id="qty_certificate">
       <h5>
    <span  id="button-remove-cert" class="btn btn-sm btn-danger display-4 add" onclick="remove()">Remove</span>
        <span  id="button-add-cert" class="btn btn-sm btn-primary display-4 add" onclick="add()">Add</span>
    </h5>
    </div>

    <div style="float: right;margin-right: 30px">
      <button type="submit" class="btn btn-primary">Save</button>
    </div>

  </form>
</div>

<script type="text/javascript">
  function add(){

        $("#button-remove-cert").css('display','');

        var last_number = $("#qty_certificate").val();


        var next_number = parseInt(last_number) + 1;
        var url = "{{url('assets')}}/assets/validate_career_apply_file.js";
        var html_data = "<input type='file' name='file_image[]' placeholder='Sertifikat' class='form-control display-7 ' value='' id='file_sertifikat"+next_number+"'>";

        $(html_data).insertBefore( "#qty_certificate" );
        $("#qty_certificate").val(next_number);

        if(next_number == 10){
            $("#button-add-cert").remove();
        }
    }

    function remove(){
        var last_number = $("#qty_certificate").val();


        var prev_number = parseInt(last_number) - 1;
        
        $("#file_sertifikat"+last_number).remove();
        $("#qty_certificate").val(prev_number);

        if(prev_number == 1){
            $("#button-remove-cert").css('display','none');
        }
    }
    
</script>

@endsection