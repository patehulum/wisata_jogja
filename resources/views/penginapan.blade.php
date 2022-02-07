@extends('master')

@section('content')

    <div class="cutter_muster">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="section_title2 text-center mb-90">
                        <h3>@lang('destinasi.lodging')</h3>
                    </div>
                </div>
            </div>
            <div class="row">
                @foreach($penginapan as $penginap)
                    <div class="col-xl-4 col-md-4 col-lg-4">
                        <div class="single_master">
                            <div class="thumb">
                            <img src="{{url('/storage').'/'}}@foreach($penginap->images as $image){{$image->nama_file}}@endforeach
                                 " alt="">
                            </div>
                            <div class="master_name text-center">
                                <h3>{{ $locale == 'en' ? $penginap->nama_en : $penginap->nama }}</h3>
                                <p> @lang('destinasi.address'): {{$penginap->alamat}}</p>
                                <center><a href="{{$penginap -> id}}/lihatpenginapan" class="boxed-btn3">@lang('destinasi.open')</a></center>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
        <br>
        <div style="display:table; margin:0 auto;">
            {{$penginapan->links()}}
        </div>
    </div>
@stop
