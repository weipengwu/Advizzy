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
		<script>
			try {
				Typekit.load();
			} catch(e) {
			}
		</script>

		<link rel="stylesheet" href="css/font-awesome.min.css">
		<!-- for the icon-fonts -->

		<link rel="stylesheet" type="text/css" href="css/foundation.css" media="screen" />
		<link rel="stylesheet" type="text/css" href="css/normalize.css" media="screen" />
		<link rel="stylesheet" type="text/css" href="css/normalize.css" media="screen" />

		<link rel="stylesheet" type="text/css" href="css/custom_style.css" media="screen" />

		<script src="js/vendor/modernizr.js"></script>

		<link href='http://fonts.googleapis.com/css?family=Oxygen:300,700|Titillium+Web:600|Slabo+27px:400,700,400italic' rel='stylesheet' type='text/css'>

	</head>

	<body>
		<div class="page_wrapper">
			<!-- this div covers 100% of the height MINIMUM, so the footer is ALWAYS off-page below -->
			<a name="top"></a>

			<!-- TOP-BAR is wrapped in a ROW to bring the elements to the CENTER of the page -->
			<div class="large-12 columns border_bottom_thin">
				<div class="row">
					<nav class="top-bar" data-topbar role="navigation">

						<ul class="title-area">

							<li class="name">
								<div>
									<a href="" class="purple_text"><img src="img/logo_sm.png" class="nav_logo">ADMIN</a>
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
									<a data-dropdown="drop4" aria-controls="drop4" aria-expanded="false" class="advizzy_menu_link"> <img src="{{Auth::User()->myAvatar}}" class="menu_avatar space_right">Admin</a>
									<div id="drop4" data-dropdown-content class="f-dropdown content" aria-hidden="true">

										<div class="dropdown_box">
											<h6><a href="/profile" class="purple_link">My Profile</a></h6>
											<p class="dark_text">
												All about you. dnumbers and signs; and each time according to conditions and emergencie
											</p>
										</div>
										<div class="dropdown_box">
											<h6><a href="/account" class="purple_link">My Account</a></h6>
											<p class="dark_text">
												All about you. through its previous mode of composition
											</p>
										</div>
										<div class="dropdown_box">
											<h6><a href="" class="purple_link">Upgrade Account</a></h6>
											<p class="dark_text">
												All about you. through its previous mode of composition
											</p>
										</div>
										<div class="large-12 columns center">
											<h6><a href="/logout" class="dropdown_link">Sign Out</a></h6>
										</div>
									</div>
								</li>

							</ul>
						</section>

					</nav>
				</div>
				<!--  end of NAV-BAR / TOP-BAR   -->
			</div>

			<div class="large-12 columns bg_off_white border_bottom_thin">

				<!--
				I'm using tabs here again.
				And there is another case of "tabs within tabs,"
				since the "users" tab holds its own sub-tabs of flagged/suspended/new users
				-->

				<div class="row no_pad_top no_pad_bottom no_marg_top no_marg_bottom">
					<div class="large-12 columns space_bottom no_pad_top no_pad_bottom center no_marg_top no_marg_bottom">

						<ul class="tabs fifty_nine_tabs no_pad_top no_pad_bottom no_marg_top no_marg_bottom" data-tab>

							<li class="large-3 small-3 columns center fifty_nine_tab">
								<a href="#dashboard_tab" class="center wide"> <h6 class="space_right no_pad_left more_padding_right">Dashboard</h6> </a>
							</li>

							<li class="large-3 small-3 columns center fifty_nine_tab">
								<a href="#users_tab" class="center wide"> <h6>Users</h6> </a>
							</li>

							<li class="large-3 small-3 columns center fifty_nine_tab">
								<a href="#reports_tab" class="center wide"> <h6>Reports</h6> </a>
							</li>

							<li class="large-3 small-3 columns center fifty_nine_tab">
								<a href="#posts_tab" class="center wide"> <h6>Posts</h6> </a>
							</li>
						</ul>

					</div>
				</div>
			</div>