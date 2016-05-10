@if(Auth::check() && (Auth::User()->active))

<!DOCTYPE html>

<!--  -->
<!--  -->

<html lang="en">
	<head>
		<title> ADVIZZY </title>

		<meta charset="utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<script src="//use.typekit.net/bgf0aai.js"></script>
		<script>try{Typekit.load();}catch(e){}</script>
		
		<link rel="stylesheet" href="/css/font-awesome.min.css">
		<!-- for the icon-fonts -->

		<link rel="stylesheet" type="text/css" href="/css/foundation.css" media="screen" />
		<link rel="stylesheet" type="text/css" href="/css/normalize.css" media="screen" />
		<link rel="stylesheet" type="text/css" href="/css/nouislider.css" media="screen" />

		<link rel="stylesheet" type="text/css" href="/css/custom_style.css" media="screen" />
		
		<!-- script for jquery and mask plugin -->
		<script src="/js/vendor/modernizr.js"></script>
		
		  <link href='http://fonts.googleapis.com/css?family=Oxygen:300,700|Titillium+Web:600|Slabo+27px|PT+Sans:400,700,400italic' rel='stylesheet' type='text/css'>
		
	</head>

	<body>
		<div class="page_wrapper">
			<!-- this div covers 100% of the height MINIMUM, so the footer is ALWAYS off-page below -->

			<!-- TOP-BAR is wrapped in a ROW to bring the elements to the CENTER of the page -->
			<div class="row">
				<nav class="top-bar" data-topbar role="navigation" id="top">
					<ul class="title-area">
						
						<li class="name">
							<div>
								<h1>
									<a href="/">
										<img src="/img/logo_sm.png" class="nav_logo">
										<div class="logo_slogan">
											<span id="slogan">Give advice. Get advice.</span>
										</div>
									</a>
								</h1>
							</div>
						</li>
						<li class="toggle-topbar menu-icon">
							<a href="#"><span>Menu</span></a>
						</li>
					</ul>
					<section class="top-bar-section">
						<!-- Right Nav Section -->
						<ul class="right" class="active">
						
							<li>
								<a href="#" class="advizzy_menu_link">
									<span class="topnumbers">
									  <span id="number_of_inquiries">0</span>
									</span>
										Inquiry Credits
									</a>
							</li>
							@if(Auth::User()->role != 1)
							<li>
								<a href="#" class="advizzy_menu_link">
									<!-- <span class="fa-stack fa-lg">
									  <i id="creditColor" class="fa fa-stack-2x @if(Auth::User()->credits > 0) fa-circle purple_text @else fa-circle-thin @endif"></i>
									  <i class="fa fa-stack-1x @if(Auth::User()->credits > 0) white_text @endif" id="number_of_credits">{{Auth::User()->credits}}</i>
									</span> -->
									<span class="topnumbers">
									  <span id="number_of_credits">{{Auth::User()->credits}}</span>
									</span>
									Credits
								</a>
							</li>
							@endif
							<li>
								<a data-dropdown="notificationsDrop" aria-controls="notificationsDrop" aria-expanded="false" class="advizzy_menu_link">
									<!-- <span class="fa-stack fa-lg">
									  <i id="notificationColor" class="fa fa-circle-thin fa-circle fa-stack-2x"></i>
									  <i class="fa fa-stack-1x" id="number_of_notifications">0</i>
									</span> -->
									<span class="topcirclenumbers">
									  <span id="number_of_notifications">0</span>
									</span>
									Notifications
								</a>
								<div id="notificationsDrop" data-dropdown-content class="f-dropdown content" aria-hidden="true">
									<h6 class="center"><a id="markAllAsRead" onclick="readNotification('all');">Mark All as Read</a></h6>
									<div id="notificationsDropContent">
									</div>
									<div class="large-12 columns center">
										<h6><a class="dropdown_link">See All</a></h6>
									</div>
								</div>
							</li>
							<li>
								<a href="/" class="advizzy_menu_link newsfeedlink">
									Newsfeed
								</a>
							</li>
							<li class="has-dropdown top_user_profile">
								<a href="#" class="advizzy_menu_link user_first_name_text">
									<div class="large-6 columns">
										<img src="{{Auth::User()->myAvatar}}" class="menu_avatar">
									</div>
									
									<div class="large-6 columns">
										{{ Auth::User()->fName }}
									</div>
								</a>
								<ul class="dropdown user_menu">
								  @if(Session::has('role') && (Session::get('role') == 'admin'))
								  <li><a href="/admin">Admin Panel</a></li>
								  @endif
								  <li class="active">
									  <a href="/profile" >
										  <h3 class="advizzy_purple_label center">My Profile</h3>
										  <p>All about you. Lorem ipsum dolor sit amet, consectetuer<br/>
											  adipiscing elit. Nulla tincidunt diam eu mauris. ...</p>
									  </a>
								  </li>
								  <li>
									  <a href="/account">
									  <h3 class="advizzy_purple_label center">My Account</h3>
										  <p>All about you. Lorem ipsum dolor sit amet, consectetuer<br/>
											  adipiscing elit. Nulla tincidunt diam eu mauris. ...</p>
									  </a>
								  </li>
									<li>
										<a href="/upgrades">
											<h3 class="advizzy_purple_label center">Upgrade Account</h3>
											<p>All about you. Lorem ipsum dolor sit amet, consectetuer<br/>
												adipiscing elit. Nulla tincidunt diam eu mauris. ...</p>
										</a>
									</li>
								  <li>
									  <a href="/logout" ><h3 class="advizzy_purple_label center">Sign Out</h3></a>
								  </li>
									<br style="clear:both;" />
								</ul>
							  </li>
						</ul>
					</section>
				
				</nav>
			</div> <!--  end of NAV-BAR / TOP-BAR   -->
	
		@if (!isset($hide_quote))
		<div class="quote_bar"> <!--  -->
			<div class="large-12">
				<div class="row">
				
					<div class="quote_box">
						<?php
						$quotes = array("Try to be a rainbow in someone's cloud.",
							"We cannot change the cards we are dealt, just how we play the hand.",
							"Never ruin an apology with an excuse.",
							"Adapt what is useful, reject what is useless, and add what is specifically your own.",
							"What you're supposed to do when you don't like a thing is change it. If you can't change it, change the way you think about it. Don't complain.",
							"The best way to predict your future is to create it",
							"In the end only kindness matters.",
							"Live as if you were to die tomorrow. Learn as if you were to live forever.",
							"Go in the direction of where your peace is coming from.",
							"The best kind of happiness is a habit you're passionate about.",
							"Do not complain beneath the stars about the lack of bright spots in your life.",
							"Advancement only comes with habitually doing more than you are asked.",
							"Not all of us can do great things. But we can do small things with great love."
						);
						$quoteAuthor = array ("Maya Angelou",
							"Randy Pausch",
							"Benjamin Franklin",
							"Bruce Lee",
							"Maya Angelou",
							"Abraham Lincoln",
							"Jewel",
							"Mahatma Gandhi",
							"C. JoyBell C.",
							"Shannon L. Alder",
							"Bjørnstjerne Bjørnson",
							"Gary Ryan Blair",
							"Mother Teresa"
						);
						?>
						<h4 class="quote_text">
							"<?php echo getQuote($quotes); ?>"<span class="quote_author">-<?php echo getQuote($quoteAuthor); ?></span>
						</h4>
					
					</div><!-- end of quote_box -->
				</div>
			</div>
		</div><!-- end of quote-bar -->
		@endif

@else

<!DOCTYPE html>

<!--  -->
<!--  -->

<html lang="en">
	<head>
		<title> ADVIZZY </title>
		<script src="//use.typekit.net/bgf0aai.js"></script>
		<script>try{Typekit.load();}catch(e){}</script>
		<meta charset="utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<link rel="stylesheet" href="/css/font-awesome.min.css"><!-- for the icon-fonts -->
		
	  	<link rel="stylesheet" type="text/css" href="/css/foundation.css" media="screen" />
	  	<link rel="stylesheet" type="text/css" href="/css/normalize.css" media="screen" />
	  	<link rel="stylesheet" type="text/css" href="/css/normalize.css" media="screen" />
	  	<link rel="stylesheet" type="text/css" href="/css/custom_style.css" media="screen" />
		<script src="/js/vendor/modernizr.js"></script>
		  
		  <link href='http://fonts.googleapis.com/css?family=Oxygen:300,700|Titillium+Web:600|Slabo+27px|PT+Sans:400,700,400italic' rel='stylesheet' type='text/css'>
		
	</head>

	<body>
		<div class="page_wrapper bg_off_white"><!-- this div covers 100% of the height MINIMUM, so the footer is ALWAYS off-page below -->
		
		
			<!-- TOP-BAR is wrapped in a ROW to bring the elements to the CENTER of the page -->
		<div class="large-12 columns bg_white">
			<div class="row">
				<nav class="top-bar" data-topbar role="navigation" id="top">
				
					<ul class="title-area">
						
						<li class="name">
							<div>
								<h1>
									<a href="/">
										<img src="/img/logo_sm.png" class="nav_logo">
										<div class="logo_slogan">
											<span>Give advice. Get advice.</span>
										</div>
									</a>
								</h1>
							</div>
						</li>
						<li class="toggle-topbar menu-icon">
							<a href="#"><span>Menu</span></a>
						</li>
					</ul>
					<section class="top-bar-section">
						<!-- Right Nav Section -->
						<ul class="right" class="active">
						
							<li>
								<a href="/login" class="advizzy_menu_link">Have an account? <b>Sign in</b>
								</a>
							</li>
						</ul>
					</section>
				
				</nav>
			</div> <!--  end of NAV-BAR / TOP-BAR   -->
		</div>
@endif