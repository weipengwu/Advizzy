@extends('layouts.outside')
@section('content')

	<div class="splash_tint_overlay">

		<div class="row home-centering show-for-medium-up space_bottom">
			<!-- THIS is what will be show for MEDIUM AND UP Screens -->

			<div class="large-12 columns center mainlogowrap">
				<img src="/img/logo_sm_white.png" class="mainlogo">
			</div>

			<div class="large-12 columns center titlewrap">

				
				<p class="white_text landing_subtitle">
					Enter a new Password below to continue:
				</p>

			</div>

			<div class=" boxwrap">
				<div class="landing_form_box_big">

					<form action="/resetPassword" method="post">
						<input type="hidden" name="reset" value="{{ $resetCode }}">
						<div class="columns">
							<input type="password" name="password" onchange="checkPassword()" onfocusout="checkPassword()" id="password" placeholder="Password">
							<div style="height: 78px;">
								<div class="alert password" style="position: absolute; top: 40%; display: none; color: red;">*Passwords must be at least 6 characters long and must include a number and a letter</div>
							</div>
						</div>

						<div class="columns">
							<input type="password" name="confirmpassword" onchange="checkConfirmPassword()" onfocusout="checkConfirmPassword()" id="confirmpassword" placeholder="Re-Enter Password">
							<div style="height: 78px;">
								<div class="alert confirmPass" style="position: absolute; top: 40%; display: none; color: red;">*These passwords don't match. Try again?</div>
							</div>
						</div>

						<div class="columns">
							<input type="submit" class="button wide" onclick="return checkConfirmPassword();" value="Continue"/>
						</div>

					</form>

					
				
				</div>
			</div>
		</div>
	</div>

@stop
	