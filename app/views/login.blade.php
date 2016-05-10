<!DOCTYPE html>

<!--  -->
<!--  -->

<html lang="en">
	<head>
		<title> ADVIZZY | Login </title>

		<meta charset="utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<link rel="stylesheet" href="css/font-awesome.min.css">
		<!-- for the icon-fonts -->
		<script src="//use.typekit.net/bgf0aai.js"></script>
		<script>
			try {
				Typekit.load();
			} catch(e) {
			}
		</script>
		<link rel="stylesheet" type="text/css" href="css/foundation.css" media="screen" />
		<link rel="stylesheet" type="text/css" href="css/normalize.css" media="screen" />
		<link rel="stylesheet" type="text/css" href="css/normalize.css" media="screen" />

		<link rel="stylesheet" type="text/css" href="css/custom_style.css" media="screen" />

		<script src="js/vendor/modernizr.js"></script>

		<link href='http://fonts.googleapis.com/css?family=Oxygen:300,700|Titillium+Web:600|Slabo+27px|PT+Sans:400,700,400italic' rel='stylesheet' type='text/css'>

	</head>

	<body>

		<!--

		IN THIS FILE
		There's no nav bar or anything, so we're just jumping from the opening of the body tag right into the page_wrapper

		For the main content of this page, I made two different copies. One is visible for medium-and-up screens,
		the other is only visible for smaller screens. This was easier than making one responsive layout.

		-->

		<div class="page_wrapper splash">
			<!-- this div covers 100% of the height MINIMUM, so the footer is ALWAYS off-page below -->
			<div class="splash_tint_overlay">

				<div class="row home-centering show-for-medium-up space_bottom">
					<!-- THIS is what will be show for MEDIUM AND UP Screens -->

					<div class="large-12 columns center mainlogowrap">
						<img src="img/logo_sm_white.png" class="mainlogo">
					</div>

					<div class="large-12 columns center titlewrap">

						<h1 class="white_text landing_title">Welcome to Advizzy.com</h1>
						<p class="white_text landing_subtitle">
							Advice, when you need it most
						</p>

					</div>
					@if(isset($errorMsg))
					<div class="large-12 columns center" style="color: #FA470D">
						{{$errorMsg}}
					</div>
					@endif
					@if(isset($successMsg))
					<div class="large-12 columns center" style="color: #21E466">
						{{$successMsg}}
					</div>
					@endif
					<div class="columns boxwrap">
						<div class="landing_form_box_big">
							<form method="post" action="/login">
								<div class="columns">
									<input type="text" tabindex="1" name="username" placeholder="Email" />
									<input type="checkbox" tabindex="4" name="remember_me" id="remember_me">
									<label for="remember_me" class="white_text bold"><span></span>Remember Me</label>
								</div>

								<div class="columns">
									<input type="password" tabindex="2" name="password" placeholder="Password" />
									<a onclick="$('.splash_tint_overlay').hide(); $('.forgotDialog').show();" class="white_text bold">Forgot your password?</a>
								</div>

								<div class="columns">
									<input tabindex="3" type="submit" value="Submit" class="button postfix">
								</div>

							</form>
						</div>
					</div>

					<div class="large-12 columns center singinlinkwrap">
						<a href="/signup" class="signinlink">Not a member? Get started <i class="fa fa-chevron-right green_link"></i></a>
					</div>

				</div>
				<!-- END OF 'MEDIUM-AND-UP' SCREENS -->

				<div class="row hide-for-medium-up">
					<!-- THIS is what will be show for MEDIUM AND UP Screens -->

					<div class="mainlogowrap">
						<img src="img/logo_sm_white.png" class="mainlogo">
					</div>

					<div class="large-12 columns center">

						<h2 class="white_text">Welcome to Advizzy.com</h2>
						<p class="white_text landing_subtitle_small">
							Advice, when you need it most
						</p>

					</div>

					<div class="large-12 columns space_bottom">
						<div class="landing_form_box_small">
							<form method="post" action="/login">
								<div class="large-12 columns">
									<input type="text" name="username" placeholder="Member Number" />
								</div>
								<div class="large-12 columns passwordwrap">
									<input type="password" name="password" placeholder="Password" />
								</div>
								<div class="large-12 columns underform">
									<div class="large-6 medium-6 small-6 columns align_left">
										<input type="checkbox" name="remember_me">
										<label for="checkbox" class="white_text bold">Remember Me</label>
									</div>
									<div class="large-6 medium-6 small-6 columns align_right">
										<a onclick="$('.splash_tint_overlay').hide(); $('.forgotDialog').show();" class="white_text bold">Forgot your password?</a>
									</div>
								</div>
								<div class="large-12 columns">
									<input type="submit" value="SIGN IN" class="button postfix">
								</div>
							</form>
						</div>
					</div>
					<div class="large-12 columns center huge_space_top notmemberwrap">
						<a href="/signup" class="white_link huge_space_top">Not a member? Get started <i class="fa fa-chevron-right green_link"></i></a>
					</div>
				</div>
				<!-- END OF 'MEDIUM-AND-UP' SCREENS -->
			</div>


			<div class="large-12 home-centering  columns big_padding_top forgotDialog" style="display: none;">
				<div class="hide-for-medium-up">
					<div class="mainlogowrap">
						<img src="img/logo_sm_white.png" class="mainlogo">
					</div>

					<div class="landing_form_box_small">
						<p class="forgotcopy"><b>Forgot your password?</b><br>Enter your email to reset your password.</p>
						<form method="post" action="/forgotPassword">
							<div class="large-12 columns">
								<input type="text" name="forgotEmail" placeholder="Email Address" />
							</div>
							<div class="large-12 columns">
								<input type="submit" value="SUBMIT" class="button postfix">
							</div>
						</form>
					</div>

					<div class="large-12 columns center huge_space_top notmemberwrap">
						<a href="/signup" class="white_link huge_space_top">Not a member? Get started <i class="fa fa-chevron-right green_link"></i></a>
					</div>
				</div>
				<div class="show-for-medium-up">
					<div class="large-12 columns center mainlogowrap">
						<img src="img/logo_sm_white.png" class="mainlogo">
					</div>

					<div class="large-12 columns center titlewrap">

						<h1 class="white_text landing_title">Welcome to Advizzy.com</h1>
						<p class="white_text landing_subtitle">
							Advice, when you need it most
						</p>

					</div>
					
					<div class="columns boxwrap">
						<div class="landing_form_box_big">
							<p class="forgotcopy"><b>Forgot your password?</b> Enter your email to reset your password.</p>
							<form method="post" action="/forgotPassword">
								<div class="columns forgotemailwrap">
									<input type="text" tabindex="1" name="forgotEmail" placeholder="Email" />
								</div>

								<div class="columns">
									<input tabindex="3" type="submit" value="Submit" class="button postfix">
								</div>

							</form>
						</div>
					</div>
					<div class="large-12 columns center singinlinkwrap">
						<a href="/signup" class="signinlink">Not a member? Get started <i class="fa fa-chevron-right green_link"></i></a>
					</div>

					
				</div>
			</div>
			@include('templates.footer')