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
				<div class="box advizzy_plus padded wide center">
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

						<div class="large-12 columns upgrade_complete">
							<h5>Upgrade Complete</h5>
							<h3>Congratulations</h3>
							<p>Your new Advizzy Plus account is ready</p>
							<input type="submit" class="button" id="continuePayments" value="CONTINUE">
						</div>

					</div>
				</div>
			</div>

		</div>
	</div>
</form>
@endif
@include('templates.footer')