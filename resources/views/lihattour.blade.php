@extends('master')

@section('content')

<div class="cutter_muster">
    <div class="container">
            <div class="col-xl-12">
                <div class="section_title2 text-center mb-90">
                    <h3>Detail Tourguide</h3>
                </div>
            </div>
        <div class="row">
            <div class="container-fluid">
                <!-- image -->  
                <div class="row justify-content-center">
                    @foreach($file as $data)
                      <img src="{{url("")}}/storage/{{$data->nama_file}}" />
                    @endforeach  
                </div>
                <br>
                <!-- endimage -->
                <div class="col-xl-12 col-md-12 col-lg-12">
                    <div style="text-align: center;">
                        <h2 style="display: inline;">{{$look->nama}}, </h2>
                        <h4>Telpon : {{$look->telpon}}</h4>
                        <h4>Alamat E-mail : {{$look->email}}</h4>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@stop
