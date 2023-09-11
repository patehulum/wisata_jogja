@extends('master')

@section('content')

<div class="cutter_muster">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="section_title2 text-center mb-90">
                    <h3>@lang('destinasi.travel_details')</h3>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="container-fluid">
            <!-- image -->
                <div class="grid">
                    <div class="grid-sizer"></div>
                        @foreach($file as $data)
                        <div class="grid-item">
                          <img src="{{url("")}}/storage/{{$data->nama_file}}" />
                        </div>
                        @endforeach 
                    </div>
                </div>
                <!-- endimage -->
                <div class="col-xl-12 col-md-12 col-lg-12">
                    <h2 style="text-align: center;">{{$locale=='en' ? $destinasi->nama_en : $destinasi->nama}}</h2>
                    <h4 style="text-align: center;">@lang('destinasi.address') : {{$destinasi->alamat}}</h4>
                    <h4 style="text-align: center;">@lang('destinasi.operation_hour') : {{$destinasi->opration_hours}}</h4>
                    <h3>@lang('destinasi.Description')</h3>
                    <p style="text-align: justify;">{!!$locale=='en' ? $destinasi->deskripsi_en: $destinasi->deskripsi!!}</p>
                </div>
            </div>
        </div>
    </div>
</div>

@stop
