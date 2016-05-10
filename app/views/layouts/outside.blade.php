<!DOCTYPE html>

<!--  -->
<!--  -->

<html lang="en">
	<head>
		<title> ADVIZZY | Login </title>

		<meta charset="utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<link rel="stylesheet" href="/css/font-awesome.min.css">
		<!-- for the icon-fonts -->
		<script src="//use.typekit.net/bgf0aai.js"></script>
		<script>
			try {
				Typekit.load();
			} catch(e) {
			}
		</script>
		<link rel="stylesheet" type="text/css" href="/css/foundation.css" media="screen" />
		<link rel="stylesheet" type="text/css" href="/css/normalize.css" media="screen" />
		<link rel="stylesheet" type="text/css" href="/css/normalize.css" media="screen" />

		<link rel="stylesheet" type="text/css" href="/css/custom_style.css" media="screen" />

		<script src="/js/vendor/modernizr.js"></script>

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

			@yield('content')

		</div>

		@include('layouts.sections.footer')