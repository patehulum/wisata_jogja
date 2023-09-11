@extends('master')

@section('content')

<div class="cutter_muster">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="section_title2 text-center mb-90">
                    <h3>@lang('destinasi.culinary')</h3>
                </div>
            </div>
        </div>
        <div class="row">
            @foreach($kuliner as $kulin)
                <div class="col-xl-4 col-md-4 col-lg-4">
                    <div class="single_master">
                        <div class="thumb">
                            <img src="{{url('/storage').'/'}}@foreach($kulin->images as $image){{$image->nama_file}}@endforeach
                                 " alt="">
                        </div>
                        <div class="master_name text-center">
                            <h3>{{ $locale == 'en' ? $kulin->nama_en : $kulin->nama }}</h3>
                        <p> @lang('destinasi.operation_hour'): {{$kulin->jam_oprasional}}</p>
                        <center><a href="{{$kulin -> id}}/lihatkuliner" class="boxed-btn3">@lang('destinasi.open')</a></center>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
        <br>
        <div style="display:table; margin:0 auto;">
            {{$kuliner->links()}}
        </div>
    </div>
</div>
@stop
