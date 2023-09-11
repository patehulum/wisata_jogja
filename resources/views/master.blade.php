<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>KP_YUNITA</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- <link rel="manifest" href="site.webmanifest"> -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
    <!-- Place favicon.ico in the root directory -->

    <!-- CSS here -->
    <link rel="stylesheet" href="{{url('/')}}/css/bootstrap.min.css">
    <link rel="stylesheet" href="{{url('/')}}/css/owl.carousel.min.css">
    <link rel="stylesheet" href="{{url('/')}}/css/magnific-popup.css">
    <link rel="stylesheet" href="{{url('/')}}/css/font-awesome.min.css">
    <link rel="stylesheet" href="{{url('/')}}/css/themify-icons.css">
    <link rel="stylesheet" href="{{url('/')}}/css/nice-select.css">
    <link rel="stylesheet" href="{{url('/')}}/css/flaticon.css">
    <link rel="stylesheet" href="{{url('/')}}/css/gijgo.css">
    <link rel="stylesheet" href="{{url('/')}}/css/animate.css">
    <link rel="stylesheet" href="{{url('/')}}/css/slicknav.css">
    <link rel="stylesheet" href="{{url('/')}}/css/style.css">


    <link rel="stylesheet" href="{{url('/')}}/css/custom-mansory.css">
    <!-- <link rel="stylesheet" href="css/responsive.css"> -->
</head>

<body>

@include('header')

@yield('content')

<!-- footer -->
<footer class="footer">
    <div class="footer_top">
        <div class="container">
            <div class="row">
                <div class="col-xl-3 col-md-6 col-lg-3">
                    <div class="footer_widget">
                        <h3 class="footer_title">
                            @lang('destinasi.contact_us')
                        </h3>
                        <p class="footer_text">Yunita Rustania<br>
                            +62 378 478 2789
                        </p>

                    </div>
                </div>
                <div class="col-xl-3 col-md-6 col-lg-3">
                    <div class="footer_widget">
                        <h3 class="footer_title">
                            @lang('destinasi.address')
                        </h3>
                        <p class="footer_text">Dinas Pariwisata DIY. Jl. Janti KM 4, Banguntapan, Bantul, Daerah Istimewa Yogyakarta.<br>
                            (0274) 587486 </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="copy-right_text">
        <div class="container">
            <div class="footer_border"></div>
            <div class="row">
                <div class="col-xl-12">
                    <p class="copy_right text-center">
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | Project KP Yunita Rustania
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </p>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- footer -->

<!-- JS here -->
<script src="{{url('/')}}/js/vendor/modernizr-3.5.0.min.js"></script>
<script src="{{url('/')}}/js/vendor/jquery-1.12.4.min.js"></script>
<script src="{{url('/')}}/js/popper.min.js"></script>
<script src="{{url('/')}}/js/bootstrap.min.js"></script>
<script src="{{url('/')}}/js/owl.carousel.min.js"></script>
<script src="{{url('/')}}/js/isotope.pkgd.min.js"></script>
<script src="{{url('/')}}/js/ajax-form.js"></script>
<script src="{{url('/')}}/js/waypoints.min.js"></script>
<script src="{{url('/')}}/js/jquery.counterup.min.js"></script>
<script src="{{url('/')}}/js/imagesloaded.pkgd.min.js"></script>
<script src="{{url('/')}}/js/scrollIt.js"></script>
<script src="{{url('/')}}/js/jquery.scrollUp.min.js"></script>
<script src="{{url('/')}}/js/wow.min.js"></script>
<script src="{{url('/')}}/js/nice-select.min.js"></script>
<script src="{{url('/')}}/js/jquery.slicknav.min.js"></script>
<script src="{{url('/')}}/js/jquery.magnific-popup.min.js"></script>
<script src="{{url('/')}}/js/plugins.js"></script>
<script src="{{url('/')}}/js/gijgo.min.js"></script>

<!--contact js-->
<script src="{{url('/')}}/js/contact.js"></script>
<script src="{{url('/')}}/js/jquery.ajaxchimp.min.js"></script>
<script src="{{url('/')}}/js/jquery.form.js"></script>
<script src="{{url('/')}}/js/jquery.validate.min.js"></script>
<script src="{{url('/')}}/js/mail-script.js"></script>


<script src="{{url('/')}}/js/custom-mansory.js"></script>

<script src="js/main.js"></script>
<script>
    $('#datepicker').datepicker({
        iconsLibrary: 'fontawesome',
        disableDaysOfWeek: [0, 0],
        //     icons: {
        //      rightIcon: '<span class="fa fa-caret-down"></span>'
        //  }
    });
    $('#datepicker2').datepicker({
        iconsLibrary: 'fontawesome',
        icons: {
            rightIcon: '<span class="fa fa-caret-down"></span>'
        }

    });
    var timepicker = $('#timepicker').timepicker({
        format: 'HH.MM'
    });
</script>
</body>

</html>
