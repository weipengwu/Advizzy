@include('templates.header')
@if(Auth::User()->active)
<form method="post" action="/account" onsubmit="return validAccountForm();">

	<div class="large-12 columns title_columns">

		<div class="row">
			<div class="title_row">
				<h2>Upgrade Account</h2>
				<p>
					Select a Membership Level below to upgrade
				</p>
			</div>
		</div>
	</div>

	<div class="large-12 columns bg_off_white big_padding_top">

		<div class="row">
			
			<div class="small-12 small-centered large-9 columns">
				<div class="panel bg_white" style="margin-bottom:25px; padding-bottom:5px">
					<div class="row">
						<h4 style="font-weight:normal; float:left"><strong>Silver Membership</strong> Free</h4>
						<p class="light_dark_text" style="float:left; clear:left">1 Inquiry post per day
						<br>
						View 2 full nuggets of Advice</p>
						<div style="float:right; position: relative; top: 50%; transform: translateY(-50%); margin-top:10px">
							<button class="circle_button" style="font-size:25px"><strong>&#10004 </strong></button>
						</div>
					</div>
				</div>
			</div>
			
			<div class="small-12 small-centered large-9 columns">
				<div class="panel bg_white" style="margin-bottom:25px; padding-bottom:5px">
					<div class="row">
						<h4 class="advizzy_purple_label" style="float:left"><strong>Gold Membership</strong> <sup>$</sup>9 &#47; mo</h4>
						<p class="light_dark_text" style="float:left; clear:left">3 Inquiry posts per day
						<br>
						View 10 full nuggets of Advice </p>
						<div style="float:right; position: relative; top: 50%; transform: translateY(-50%); margin-top:10px">
							<button class="upgrade_button round" style="width:160px; height:50.5px"><strong>UPGRADE</strong></button>
						</div>
					</div>
				</div>
			</div>
			
			<div class="small-12 small-centered large-9 columns">
				<div class="panel bg_white" style="margin-bottom:15px; padding-bottom:5px">
					<div class="row">
						<h4 style="font-weight:normal; float:left" class="green_text"><strong>Platinum Membership</strong> <sup>$</sup>29 &#47; mo</h4>
						<p class="light_dark_text" style="float:left; clear:left">5 Inquiry posts per day
						<br>
						View ALL advice</p>
						<div style="float:right; position: relative; top: 50%; transform: translateY(-50%); margin-top:30px">
							<button class="upgrade_button round" style="width:160px; height:50.5px"><strong>UPGRADE</strong></button>
						</div>
						<p class="small_text" style="float:left; clear:left"><strong>*Inquiry posts DO NOT carry over to the next day</strong>
						<br>
						<strong>*Referral Inquiry Credits DO carry over and will stay in your account until you decide to use them.</strong></p>
					</div>
					
				</div>
			</div>
			
			<div class="row">
				<div class="small-12 large-3 columns">
					<button class="custom_white_button left space_bottom space_top space_right" style="width:160px; margin-left:122px; margin-bottom: 25px">BACK</button>
				</div>
			</div>
		</div>
	
	</div>
</form>
@endif
@include('templates.footer')