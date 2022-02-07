<!-- header-start -->
<header>
    <div class="header-area " style="background: #4A3600;">
        <div id="sticky-header" class="main-header-area">
            <div class="container-fluid p-0">
                <div class="row align-items-center no-gutters">
                    <div class="col-xl-2 col-lg-4 col-md-3">
                        <div class="logo-img">
                            <a href="{{url($locale.'/home')}}">
                                <img style="width: 175px;" src="{{url('/')}}/img/logo.png" alt="">
                            </a>
                        </div>
                    </div>
                    <div class="col-xl-10 col-lg-8 col-md-9">
                        <div class="main-menu d-none d-lg-block">
                            <nav>
                                <ul id="navigation">
                                    <li><a href="{{url($locale.'/home')}}">@lang('destinasi.home_1')</a></li>
                                    <li><a href="#">@lang('destinasi.destination')</a>
                                        <ul class="submenu">
                                            <li><a href="{{url($locale.'/wisata-alam')}}">@lang('destinasi.natural_tourist')</a></li>
                                            <li><a href="{{url($locale.'/wisata-pantai')}}">@lang('destinasi.beach_tourist')</a></li>
                                            <li><a href="{{url($locale.'/wisata-museum')}}">@lang('destinasi.museum_tourist')</a></li>
                                            <li><a href="{{url($locale.'/wisata-sejarah')}}">@lang('destinasi.historical_tourist')</a></li>
                                            <li><a href="{{url($locale.'/wisata-buatan')}}">@lang('destinasi.artificial_tourist')</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="{{url($locale.'/kuliner')}}">@lang('destinasi.culinary_1')</a></li>
                                    <li><a href="{{url($locale.'/penginapan')}}">@lang('destinasi.lodging_1')</a></li>
                                    <li><a href="{{url($locale.'/maps')}}">@lang('destinasi.tourism_map')</a></li>
                                    <li><a href="{{url($locale.'/tourism')}}">@lang('destinasi.tour_guide')</a></li>
                                    <li><a href="{{url('en').'/'.request()->segment(count(request()->segments()))}}" style="margin-right: -15px">EN</a></li>

                                    <li><a href="{{url('id').'/'.request()->segment(count(request()->segments()))}}">| ID</li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="mobile_menu d-block d-lg-none"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- header-end -->
