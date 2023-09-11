<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>KP_YUNITA</title>
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

<body>
	<div class="navbar navbar-fixed-top" style="width:100%; padding-bottom: 0px;">
		<div class="container-fluid">			
			<a class="brand" href="{{url('dasboard')}}">KP_YUNITA Administrator </a>
			<ul class="nav pull-right justify-content-center">
				<li class="nav-user dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">
					<img src="img/about/yunitacans.jpg" class="nav-avatar" />
					<b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="{{url('logout')}}">Logout</a></li>
					</ul>
				</li>
			</ul>
			<!-- /.nav-collapse -->
		</div>
		<!-- /navbar-inner -->
	</div>
	<!-- /navbar -->

	<div class="wrapper" style="background-image: url(img/banner/banner.png); background-attachment: fixed;">
		<div class="container">
			<div class="row">
				<div class="col-md-3" style="height: auto;">
					<div class="sidebar">
						<ul class="widget widget-menu unstyled">
							<li class="active"><a href="{{url('admin')}}"><i class="menu-icon icon-dashboard"></i>Dashboard </a></li>
							<li><a href="{{url('wisataadmin')}}"><i class="menu-icon icon-bullhorn"></i>Detail Destinasi </a></li>
							<li><a href="{{url('kulineradmin')}}"><i class="menu-icon icon-bullhorn"></i>Detail Kuliner </a></li>
							<li><a href="{{url('penginapanadmin')}}"><i class="menu-icon icon-bullhorn"></i>Detail Penginapan </a></li>
							<li><a href="{{url('touradmin')}}"><i class="menu-icon icon-bullhorn"></i>Detail Tour Guide </a></li>
						</ul>
					</div>
					<!--/.sidebar-->
				</div>
				<!--/.span3-->

				@yield('content')

			</div>
		</div>
		<!--/.container-->
	</div>
	<!--/.wrapper-->
		
	<!-- footer -->
	<footer class="footer">
		<div class="copy-right_text">
			<div class="container">
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

<script src="//cdn.ckeditor.com/4.13.1/standard/ckeditor.js"></script>
<script>
    CKEDITOR.replace( 'summary-ckeditor' );
</script>
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