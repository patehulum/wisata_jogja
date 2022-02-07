@extends('master')

@section('content')

<div class="cutter_muster">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="section_title2 text-center mb-90">
                    <h3> @lang('destinasi.natural_tourist_destination') </h3>
                </div>
            </div>
        </div>
        <div class="row">
            @foreach($destinasi as $wisata)
            <div class="col-xl-4 col-md-4 col-lg-4">
                <div class="single_master">
                    <div class="thumb">
                        <img src="{{url('/storage').'/'}}@foreach($wisata->images as $image){{$image->nama_file}}@endforeach
                                 " alt="">
                    </div>
                    <div class="master_name text-center">
                        <h3>{{ $locale == 'en' ? $wisata->nama_en : $wisata->nama }}</h3>
                        <p> @lang('destinasi.operation_hour'): {{$wisata->opration_hours}}</p>
                        <center><a href="{{$wisata -> id}}/lihatwisata" class="boxed-btn3">@lang('destinasi.open')</a></center>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
        <br>
        <div style="display:table; margin:0 auto;">
            {{$destinasi->links()}}
        </div>
    </div>
</div>

    @stop
