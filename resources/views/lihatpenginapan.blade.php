@extends('master')

@section('content')

<div class="cutter_muster">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="section_title2 text-center mb-90">
                    <h3>@lang('destinasi.lodging_details')</h3>
                </div>
            </div>
        </div>
        <div class="row">
            <!-- image -->            
            <div class="container-fluid">
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
                <div class="col-xl-12 col-md-12 col-lg-12"><br><br><br><br>
                    <h2 style="text-align: center;">{{$locale=='en' ? $penginapan->nama_en : $penginapan->nama}}</h2>
                    <h4 style="text-align: center;">@lang('destinasi.address') : {{$penginapan->alamat}}</h4>
                    <h4 style="text-align: center;">@lang('destinasi.category') : {{$penginapan->category}}</h4>
                    <h4 style="text-align: center;">@lang('destinasi.rating') : {{$penginapan->bintang}}</h4>
                    <h3>@lang('destinasi.fasilitas')</h3>
                    <p style="text-align: justify;">{!!$locale=='en' ? $penginapan->fasilitas_en: $penginapan->fasilitas!!}</p>
                </div>
            </div>
        </div>
    </div>
</div>

@stop
