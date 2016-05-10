@include('templates.header')
@if(Auth::User()->active)
<form method="post" action="/account" onsubmit="return validAccountForm();">

	<div class="large-12 columns title_columns">

		<div class="row">
			<div class="title_row">
				<h2>Upgrades & Pricing</h2>
				<p>
					Click the fields to edit
				</p>
			</div>
		</div>
	</div>

	<div class="large-12 columns bg_off_white big_padding_top">

		<div class="row upgrades_min_height">
			<div class="small-12 large-4  columns upgradeside">
				<div class="box advizzy_plus  advizzy_plus_underline wide center">
					<div class="box border_bottom advizzy_plus padded center">
						<h3 class="green_text">Advizzy Plus</h3>
					</div>
				</div>
				<div class="box padded advizzy_plus wide center">
					<p class="dark_text"><strong>$15 per month</strong></p>
					<p class="dark_text">
						3 professional help credits per month
					</p>
					<p class="dark_text">
						5 questions per week
					</p>
					<p class="dark_text">
						2 answers per week
					</p>
				</div>
			</div>
			<div class="small-12 large-8 columns upgradeinfo">

				<div class="panel bg_white padded">
					<div class="row">
						<div class="large-6 columns ">
							<h5 class="">Billing Address</h5>
							<input type="text" value="{{Auth::User()->fName}} {{Auth::User()->lName}}" name="fullName" placeholder="Full Name" />
							<input type="text" value="{{Auth::User()->address1}}" name="address1" placeholder="Address 1" />
							<input type="text" value="{{Auth::User()->address2}}" name="address2" placeholder="Address 2" />
							<input type="text" name="province" value="{{Auth::User()->province}}" placeholder="Province" />
							<input type="text" name="city" value="{{Auth::User()->city}}" placeholder="City" />
							<input type="text" name="postalCode" value="{{Auth::User()->postalCode}}" placeholder="Postal Code" />
						</div>

						<div class="large-6 columns ">
							<h5 class="">Payment Information</h5>
							<div class="payment-types">
								<img src="/img/payments/visa.png" />
								<img src="/img/payments/mastercard.png" />
								<img src="/img/payments/aa.png" />
								<img src="/img/payments/discover.png" />
							</div>
							<input type="text"  placeholder="Name on Card" />
							<input type="text"  placeholder="Card Number" />
							<h5 class="" style="
								margin-top: 49px;
								margin-bottom: 19px;
							">Expiry Date</h5>
							<!-- <span class="select2 exp-dates select2-container select2-container--default" dir="ltr" style="margin-right: 3px;">
								<span class="selection">
									<span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list"
										  aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-country-container">
										<span class="select2-selection__rendered" id="select2-exp-date-container" title="exp-date">1 - Jan</span>
										<span class="select2-selection__arrow" role="presentation">
											<b role="presentation">
											</b>
										</span>
									</span>
								</span>
								<span class="dropdown-wrapper" aria-hidden="true"></span>
							</span> -->
							<div class="expirydate">
							<select>
								<option>1 - Jan</option>
								<option>2 - Feb</option>
								<option>3 - Mar</option>
								<option>4 - Apr</option>
								<option>5 - May</option>
								<option>6 - Jun</option>
								<option>7 - Jul</option>
								<option>8 - Aug</option>
								<option>9 - Sep</option>
								<option>10 - Oct</option>
								<option>11 - Nov</option>
								<option>12 - Dec</option>
							</select>
							<select>
								<option>{{ date('Y') }}</option>
								<option>{{ date('Y', strtotime('+1 years')) }}</option>
								<option>{{ date('Y', strtotime('+2 years')) }}</option>
								<option>{{ date('Y', strtotime('+3 years')) }}</option>
								<option>{{ date('Y', strtotime('+4 years')) }}</option>
								<option>{{ date('Y', strtotime('+5 years')) }}</option>
								<option>{{ date('Y', strtotime('+6 years')) }}</option>
							</select>
							</div>
							<div class="csc">
							<input type="text" placeholder="Card Security Code" />
							<a href="" data-reveal-id="csc_modal"><img src="/img/green-question-icon.png"></a>
							</div>
						</div>

						<div class="large-12 columns">
							<input type="checkbox" name="confirm" id="confirmcheck"/><label for="confirmcheck"><span></span>I confirm I have reviewed the terms and conditions and understand .....</label>
						</div>

					</div>
				</div>
			</div>

			<div class="large-12 large-push-3  columns">
				<div class="row">
					<button class="custom_white_button margin-left-75 button-200">
						BACK
					</button>
					<input type="submit" class="button button-200 continue-button" id="continuePayments" value="CONTINUE">
				</div>
			</div>
		</div>
	</div>
</form>
<div id="csc_modal" class="reveal-modal center" data-reveal aria-labelledby="modalTitle" aria-hidden="true" role="dialog">
	<p>The last 3 digits printed on the back of your card</p>
	<img src="/img/csc.png">
	<button type="button" class="close-reveal-modal">CLOSE</button>
</div>
@endif
@include('templates.footer')