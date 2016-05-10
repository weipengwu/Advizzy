@include('templates.header')

<div class="large-12 columns title_columns border_top_thin bg_white">
	<div class="row">
		<div class="title_row">
			<h2><b>Join Now.</b> Get Advice Today.</h2>
		</div>
	</div>
</div>

@if(isset($status) && ($status == 'verified'))
<div class="large-12 columns bg_off_white big_padding_top">
	<div class="row">
		<div class="panel bg_white padded space_top">
			<div class="row padded center">

				<div class="large-12 columns">

					<h2 class="space_top"><b>Thank You</b></h2>
					<p class="big_text space_bottom">
						for Verifying your Email
					</p>
					<p>
						Click continue to post your first question
					</p>
					<p>
						and get advice today.
					</p>
				</div>

				<div class="large-12 columns show-for-medium-up">
					<div class="large-12 columns center">
						<button class="button space_top space_bottom" onclick="verified()" type="button">
							Continue
						</button>
					</div>
				</div>

				<div class="large-12 columns hide-for-medium-up">
					<div class="large-12 columns center">
						<button class="button space_top wide space_bottom" onclick="verified()" type="button">
							Continue
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
@else
<div class="large-12 columns bg_off_white big_padding_top" id="verify">
	<div class="row">
		<div class="panel bg_white padded space_top">
			<div class="row padded center">

				<div class="large-12 columns">

					<h2 class="space_top"><b>Congratulations !</b></h2>
					<p class="big_text space_bottom">
						Signup is complete
					</p>
					<p>
						A verification email has been sent to your email address, <a title="It will redirect to {{$domainUrl = explode('@', Auth::user()->eMail)[1]}}" href="{{'http://'.$domainUrl}}">{{Auth::user()->eMail}}</a>
					</p>
					<p id="plzvrfy">
						You must verifying your email address before continuing.
					</p>
				</div>

				<div class="large-12 columns show-for-medium-up">
					@if(isset($errorMsg))
					<div class="large-12 columns center space_bottom" style="color: #FA470D">
						{{$errorMsg}}
					</div>
					@endif
					@if(isset($successMsg))
					<div class="large-12 columns center space_bottom" style="color: #21E466">
						{{$successMsg}}
					</div>
					@endif
					<!-- <div class="large-12 columns center">
						<button class="button space_top space_bottom" onclick="checkAccountVerification()" type="button">
							Continue
						</button>
					</div> -->
					<div class="large-12 columns center">
						<p class="green_text">
							<a href="/resendMail/verify">Re-send Verification Email </a> | <a onclick="$('#verify').hide(); $('#changeEmailAddress').show();"> Change my Email Address</a>
						</p>
					</div>
				</div>

				<div class="large-12 columns hide-for-medium-up">
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
					<div class="large-12 columns center">
						<button class="button space_top wide space_bottom" onclick="checkAccountVerification()" type="button">
							Continue
						</button>
					</div>

					<div class="large-12 columns center">
						<p class="green_text">
							<a href="/resendMail/verify">Re-send Verification Email</a>
						</p>
					</div>
					<div class="large-12 columns center">
						<p class="green_text">
							<a onclick="$('#verify').hide(); $('#changeEmailAddress').show();"> Change my Email Address</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="large-12 columns bg_off_white big_padding_top" id="verified">
	<div class="row">
		<div class="panel bg_white padded space_top">
			<div class="row padded center">

				<div class="large-12 columns">

					<h2 class="space_top"><b>Thank You</b></h2>
					<p class="big_text space_bottom">
						for Verifying your Email
					</p>
					<p>
						Click continue to post your first question
					</p>
					<p>
						and get advice today.
					</p>
				</div>

				<div class="large-12 columns show-for-medium-up">
					<div class="large-12 columns center">
						<button class="button space_top space_bottom" onclick="verified()" type="button">
							Continue
						</button>
					</div>
				</div>

				<div class="large-12 columns hide-for-medium-up">
					<div class="large-12 columns center">
						<button class="button space_top wide space_bottom" onclick="verified()" type="button">
							Continue
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="large-12 columns big_padding_top" id="changeEmailAddress" style="display: none;">
	<div class="row padded">
		<div class="panel signin_panel bg_white padded space_top space_left space_right" style="margin-top: 10%;max-width: 450px!important;">
			<div class="row padded center">
				<form action="/changeEmailAddress" method="post">
					<div class="large-12 columns space_top space_bottom">
						<input type="email" name="eMail" onchange="checkInDB('eMail')" onfocusout="checkInDB('eMail')" id="eMail" placeholder="Email" />
						<div style="height: 20px;">
							<div class="alert eMail" style="display: none; position: absolute; top: 50%; color: red;">*Email already exists</div>
							<div class="alert eMailNotValid" style="display: none; position: absolute; top: 50%; color: red;">*Incorrect Email ID</div>
						</div>
					</div>
					<br/>
					<div class="large-12 columns">
						<input type="submit" class="button wide" onclick="return checkInDB('eMail');" value="Continue"/>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
@endif

@include('templates.footer')