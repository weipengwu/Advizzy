@include('templates.header')
@if(Auth::User()->active)
<form method="post" action="/account" onsubmit="return validAccountForm();" id="myprofile">

	<div class="large-12 columns title_columns">

		<div class="row">
			<div class="title_row">
				<h2>Account Settings</h2>
				<p>
					Click the fields to edit
				</p>
			</div>
		</div>
	</div>

	<div class="large-12 columns bg_off_white big_padding_top">

		<div class="row">
			@if(Auth::User()->role == 1)
			<div class="small-12 large-5 large-push-7 columns">
				<!-- THIS div will appear on the RIGHT on a big screen, but get pushed to the top on a small screen -->
				<div class="box border_bottom padded wide center">
					<h3 class="dark_text">Your Personal Referral Link</h3>
				</div>
				<div class="box padded wide center">
					<p class="dark_text">
						Lorum ipsum something zendegi shim iszm nostro dei
					</p>
					<a href="/?ref={{encodeThis(Auth::User()->eMail)}}"><h5 class="green_text">{{URL::to('/')}}/?ref={{encodeThis(Auth::User()->eMail)}}</h5></a>
				</div>
			</div>
			@else
			<div class="small-12 large-5 large-push-7 columns">
				<!-- THIS div will appear on the RIGHT on a big screen, but get pushed to the top on a small screen -->
				<div class="box padded wide center">
					<p class="dark_text">Visit your <a href="/advanceAccountSettings"><b>Profile Page</b></a> to change contact preferences, certifications, and notification settings.</p>
		
				</div>
			</div>
			@endif
			<div class="small-12 large-7 large-pull-5 columns">
				<div class="panel bg_white">
					<div class="row">

						<div class="large-5 columns center">
							<div class="box center">
								<div class="large-12 columns center">
									<img src="{{Auth::User()->myAvatar}}" class="user_profile_avatar space_right">
								</div>
								<div class="large-12 columns">
									<input type="hidden" name="myAvatar" id="myAvatar" value="{{Auth::User()->myAvatar}}" />
									<button class="goToTop custom_white_button small round space_bottom space_top space_right" data-reveal-id="avatarModal">
										Select Avatar
									</button>
								</div>
							</div>
						</div>

						<div class="large-7 columns">
							<select name="designation" class="space_bottom space_top">
								<option value="" disabled selected>Prefix/Designation</option>
								<option {{(Auth::User()->designation == 'Mr') ? 'selected' : ''}} value="Mr">Mr</option>
								<option {{(Auth::User()->designation == 'Mrs') ? 'selected' : ''}} value="Mrs">Mrs</option>
								<option {{(Auth::User()->designation == 'Ms') ? 'selected' : ''}} value="Ms">Ms</option>
								<option {{(Auth::User()->designation == 'Dr') ? 'selected' : ''}} value="Dr">Dr</option>
							</select>
							<input type="text" name="fName" value="{{Auth::User()->fName}}" placeholder="First Name" />
							<input type="text" name="lName" value="{{Auth::User()->lName}}" placeholder="Last Name" />
						</div>

					</div>
				</div>

				<div class="panel bg_white padded">
					<div class="row">
						<div class="large-12 columns">
							<input type="text" value="{{Auth::User()->eMail}}" name="eMail" placeholder="Email Address" />
							<input type="text" value="{{Auth::User()->eMail2}}" name="eMail2" placeholder="Secondary Email Address" />
							<label for="secondary_email">If for any reason you can't be reached at your primary email, your secondary email may be used</label>
							<input type="text" value="{{Auth::User()->address1}}" name="address1" placeholder="Address 1" />
							<input type="text" value="{{Auth::User()->address2}}" name="address2" placeholder="Address 2" />
						</div>

						<div class="large-6 columns ">
							<input type="text" name="province" value="{{Auth::User()->province}}" placeholder="Province" />
						</div>

						<div class="large-6 columns">
							<input type="text" name="city" value="{{Auth::User()->city}}" placeholder="City" />
						</div>

						<div class="large-6 columns">
							<input type="text" name="postalCode" value="{{Auth::User()->postalCode}}" placeholder="Postal Code" />
						</div>

						<div class="large-6 columns">
							<input type="text" name="telephone" id="telephone" value="{{Auth::User()->telephone}}" placeholder="Phone Number" />
						</div>

					</div>
				</div>

				<div class="row">
					<p>
						To change your password, enter your new password in the field below:
					</p>
				</div>

				<div class="panel bg_white padded">
					<div class="row">
						<div class="large-6 columns">
							<input type="password" name="password" onchange="checkAccountPassword()" onkeyup="checkAccountPassword()" id="password" placeholder="New Password" />
						</div>
						<div class="large-6 columns">
							<input type="password" name="confirmpassword" onchange="checkAccountConfirmPassword()" onkeyup="checkAccountConfirmPassword()" id="confirmpassword" placeholder="Confirm Password" />
						</div>
					</div>
				</div>
			</div>
			@if(Auth::User()->role == 1)
			<div class="large-12 columns emaildigest">
			<div class="bg_white padded box panel">
			<div class="large-5 large-push-7 small-12 columns">
				<div class="bg_white box">
					<div class="large-12 columns">
						<h3 class="dark_text">Email Digests</h3>
					</div>
					<div class="large-12 columns">
						<div class="large-8 small-8 columns">
							<p>
								Send email of account activity once a week
							</p>
						</div>

						<div class="large-4 small-4 columns" style="text-align: center">
							<div class="switch radius">
								<input id="emailDigest" type="checkbox" name="emailDigest" {{(Auth::User()->emailDigest == 'yes') ? 'checked' : ''}} value="yes">
								<label for="emailDigest"></label>
							</div>

						</div>
					</div>
					<div class="large-12 columns">
						<h3 class="dark_text">Advice Notification</h3>
					</div>
					<div class="large-12 columns">
						<div class="large-8 small-8 columns">
							<p>
								Send an email notification every time I receive advice
							</p>
						</div>

						<div class="large-4 small-4 columns" style="text-align: center">
							<div class="switch radius">
								<input id="adviceNotification" type="checkbox" name="adviceNotification" {{(Auth::User()->adviceNotification == 'yes') ? 'checked' : ''}} value="yes">
								<label for="adviceNotification"></label>
							</div>

						</div>
					</div>
				</div>
			</div>

			<div class="large-7 large-pull-5 small-12 columns">
				<div class="bg_white box">
					<div class="large-12 columns">
						<h3 class="dark_text">Inquiries per day</h3>
						<p>
							Click the fields to edit.
						</p>
					</div>

					<div class="large-12 columns">

						<div class="large-4 columns">
							<p style="margin: 14px 0 0;">
								Limit my requests to
							</p>
						</div>
						<div class="large-2 columns">
							<!-- SHOULD AUTOMATICALLY UPDATE -->
							<input type="number" id="max_requests" value="{{Auth::User()->maxRequest}}" name="maxRequest" />
						</div>
						<div class="large-6 columns">
							<p style="margin: 14px 0 0;">
								per day.
							</p>
						</div>
					</div>
					<div class="large-12 columns">

						<!--
						NOTES ON THE SLIDER:

						This is the built-in slider for Foundation.
						The number input above (id="max_requests") is supposed to automatically show the number from the slider below.
						It doesn't work for me in FireFox, but it does work in Chrome.

						You might have to do some JavaScript / JQuery to make it work for all browsers.
						-->

						<!-- <div class="range-slider" id="inquiriesPerDay" data-slider data-options="display_selector: #max_requests; initial: {{Auth::User()->maxRequest}};">
							<span class="range-slider-handle" role="slider" tabindex="0"></span>
							<span class="range-slider-active-segment"></span>

						</div> -->
						<div id="slider">
						</div>

					</div>

				</div>
			</div>
			</div>
			</div>



			<div class="large-12 columns">
				<div class="panel bg_white padded">
					<div class="row">

						<h3 class="dark_text">Contact Preferences</h3>

						<div class="large-12 columns">
								<input id="contact_preference" value="yes" name="contactPreference" {{(Auth::User()->contactPreference == 'yes') ? 'checked' : ''}} id="contactPreference" type="checkbox">
								<label for="contact_preference"><span></span>Yes, send me news and information from Advizzy.com</label>
						</div>
					</div>
				</div>
			</div>

			@endif
			<div class="large-12 columns">
				<div class="row">
					<button class="custom_white_button">
						Cancel
					</button>
					<input type="submit" class="button" id="saveAccountSettings" value="SAVE">
				</div>
			</div>
		</div>
	</div>
	<div id="avatarModal" class="reveal-modal center" data-reveal aria-labelledby="modalTitle" aria-hidden="true" role="dialog">
		<h2 id="modalTitle" class="green_text space_bottom">Select an Avatar.</h2>
	
		<ul class="large-block-grid-4 center space_bottom avatarBox">
			<li>
				<button class="custom_white_button avatar_button_01 avatar_button" type="button"></button>
			</li>
			<li>
				<button class="custom_white_button avatar_button_02 avatar_button" type="button"></button>
			</li>
			<li>
				<button class="custom_white_button avatar_button_03 avatar_button" type="button"></button>
			</li>
			<li>
				<button class="custom_white_button avatar_button_04 avatar_button" type="button"></button>
			</li>
			<li>
				<button class="custom_white_button avatar_button_05 avatar_button" type="button"></button>
			</li>
			<li>
				<button class="custom_white_button avatar_button_06 avatar_button" type="button"></button>
			</li>
			<li>
				<button class="custom_white_button avatar_button_07 avatar_button" type="button"></button>
			</li>
			<li>
				<button class="custom_white_button avatar_button_08 avatar_button" type="button"></button>
			</li>
			<li>
				<button class="custom_white_button avatar_button_09 avatar_button" type="button"></button>
			</li>
			<li>
				<button class="custom_white_button avatar_button_10 avatar_button" type="button"></button>
			</li>
			<li>
				<button class="custom_white_button avatar_button_11 avatar_button" type="button"></button>
			</li>
			<li>
				<button class="custom_white_button avatar_button_12 avatar_button" type="button"></button>
			</li>
			@for ($i = 13; $i <= 41; $i++)
    			<li>
					<button class="custom_white_button avatar_button_{{$i}} avatar_button" type="button"></button>
				</li>
			@endfor
		</ul>
	
		<button type="button" class="button space_bottom close-reveal-modal" >
			OK
		</button>
	
	</div>
</form>
<script src="/js/nouislider.min.js"></script>
<script src="/js/wNumb.min.js"></script>
<script type="text/javascript">
	//range slider on account page
	var sliderFormat = document.getElementById('slider');

	noUiSlider.create(sliderFormat, {
		start: {{Auth::User()->maxRequest}},
		connect: 'lower',
		range: {
			'min': 0,
			'max': 100
		},
		step: 1,
		format: wNumb({
			decimals: 0
		})
	});
	var inputFormat = document.getElementById('max_requests');

	sliderFormat.noUiSlider.on('update', function( values, handle ) {
		inputFormat.value = values[handle];
	});

	inputFormat.addEventListener('change', function(){
		sliderFormat.noUiSlider.set(this.value);
	});
</script>
@endif
@include('templates.footer')