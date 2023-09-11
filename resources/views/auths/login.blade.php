<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Login Admin - Yunita</title>

  <!-- <link rel="manifest" href="site.webmanifest"> -->
  <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
  <!-- Place favicon.ico in the root directory -->

  <!-- CSS here -->
  <link rel="stylesheet" href="{{url('/')}}/css/bootstrap.min.css">
  <link rel="stylesheet" href="{{url('/')}}/css/theme.css">
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
  <!-- <link rel="stylesheet" href="css/responsive.css"> -->

</head>

<body class="bg-gradient-primary" style="background-image: url(img/banner/banner.png); background-attachment: fixed;">

  <div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">
    	@if(session('gagal'))
	    <div class="alert alert-danger" role="alert">
	      {{session('gagal')}}
	    </div>
  	 @endif

      <div class="col-xl-10 col-lg-12 col-md-9">
        <div class="o-hidden border-0 shadow-lg my-5 ">
          <div class="p-0" style="background-color: #5555">
            <!-- Nested Row within Card Body -->
            <div class="row justify-content-center">
              <div class="col-lg-6 ">
                <div class="p-5">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4" style="color: #ffff">Halaman Login Admin</h1>
                  </div>
                  <form class="user" action="postlogin" method="POST">
                  	{{csrf_field()}}
                    <div class="form-group">
                      <input name="email" type="email" class="form-control form-control-user"  aria-describedby="emailHelp" placeholder="Enter Email Address...">
                    </div>
                    <div class="form-group">
                      <input name="password" type="password" class="form-control form-control-user" placeholder="Password...">
                    </div>
                    <button class="btn btn-primary btn-user btn-block">
                      Login
                    </button>
                    <hr>                   
                  </form>

                </div>
              </div>
            </div>
        </div>    

    </div>

  </div>

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
