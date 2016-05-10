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
			<div class="small-12 large-4  columns">
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
			<div class="small-12 large-8 columns">

				<div class="panel bg_white padded">
					<div class="row">
						<div class="large-12 columns billing_info">
							<h3>Confirm Payment Information</h3>
						</div>
						<div class="large-6 columns billing_info">
							<h5 >Billing Address</h5>
							<p>
								John Doe
							</p>
							<p>
								52 Someplace Rd
							</p>
							<p>
								Suite 200
							</p>
							<p>
								Ontario
							</p>
							<p>
								Toronto
							</p>

							<p>
								Postal Code
							</p>
						</div>

						<div class="large-6 columns billing_info ">
							<h5 class="">Payment Information</h5>
							<p>
								John Doe
							</p>
							<p>
								41510 xxxx xxxx
							</p>
							<h5 class="">Expiry Date</h5>
							<p>
								January, 2015
							</p>
							<p style="margin-bottom:20px;">
								XXX
							</p>
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
@endif
@include('templates.footer')