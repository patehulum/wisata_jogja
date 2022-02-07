@extends('master')

@section('content')

<div class="cutter_muster">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="section_title2 text-center mb-90">
                    <h3>@lang('destinasi.culinary_details')</h3>
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
                    <h2 style="text-align: center;">{{$locale=='en' ? $kuliner->nama_en : $kuliner->nama}}</h2>
                    <h4 style="text-align: center;">@lang('destinasi.address') : {{$kuliner->alamat}}</h4>
                    <h4 style="text-align: center;">@lang('destinasi.operation_hour') : {{$kuliner->jam_oprasional}}</h4>
                    <h4 style="text-align: center;">@lang('destinasi.estimated_price') : {{$kuliner->estimasi_harga}}</h4>
                    <h3>@lang('destinasi.Description')</h3>
                    <p style="text-align: justify;">{!!$locale=='en' ? $kuliner->keterangan_en: $kuliner->keterangan!!}</p></p>
                </div>
            </div>
            <br>
        </div>
    </div>
</div>

@stop
