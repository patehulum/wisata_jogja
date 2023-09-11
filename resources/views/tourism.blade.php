@extends('master')

@section('content')

<div class="cutter_muster">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="section_title2 text-center mb-90">
                    <h3>TourGuide</h3>
                </div>
            </div>
        </div>
        <div class="row">

            @foreach($tourguide as $row)
                <div class="col-xl-4 col-md-4 col-lg-4">
                    <div class="single_master">
                        <div class="thumb">
                            <img src="{{url('/storage').'/'}}@foreach($row->images as $image){{$image->nama_file}}@endforeach
                                 " alt="">
                        </div>
                        <div class="master_name text-center">
                            <h3>{{$row->nama}}</h3>
                            <p>email : {{$row->email}}</p>
                            <p>telpon : {{$row->telpon}}</p>
                            <center><a href="{{$row -> id}}/lihatour" class="boxed-btn3">Learn More</a></center>
                        </div>
                    </div>
                </div>
            @endforeach


        </div>
    </div>
    <br>
    <div style="display:table; margin:0 auto;">
        {{$tourguide->links()}}
    </div>
</div>
@stop
