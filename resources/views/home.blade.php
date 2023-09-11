@extends('master')

@section('content')
<!-- slider_area_start -->
<div class="slider_area">
    <div class="single_slider d-flex align-items-center justify-content-center slider_bg_1 overlay2">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="slider_text text-center">
                        <h3>VISIT JOGJA</h3>
                        <p>DAERAH ISTIMEWA YOGYAKARTA</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- slider_area_end -->

<!-- about_area_start -->
<div class="about_area">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-xl-6 col-lg-6 col-md-6">
                <img src="../img/about/about_lft.png">
            </div>
            <div class="col-xl-6 col-lg-6 col-md-6">
                <div class="about_info">
                    <div class="section_title mb-20px">
                        <h2 style="color: #533f03; font-style: italic">@lang('destinasi.abouttext')</h2>
                        <h2 style="color:#533f03">@lang('destinasi.text')<br>
                            PT.WAINDO SPECTERRA</h2>
                    </div>
                    <p style="text-align: justify;">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                    <a href="{{url($locale.'/tentang')}}" class="boxed-btn3" style="float: right;">Learn More</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- about_area_end -->

@stop
