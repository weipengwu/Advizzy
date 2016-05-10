@include('templates.header')

<!-- signup script -->

<div class="large-12 columns title_columns border_top_thin bg_white">
	<div class="row">
		<div class="title_row">
			<h2><b>Professional.</b> Impact Statement.</h2>
		</div>
	</div>
</div>

<div class="large-12 columns bg_off_white big_padding_top" id="step1">
	<div class="row">
		<div class="panel bg_white">
			<div class="row">
				<div class="large-12 columns border_bottom_thin padded topwrap">
					<div class="large-4 medium-2 columns center_cell toptitlewrap">
						<h4>Create your Profile</h4>
					</div>
					<div class="large-4 medium-5 columns">
						<form action="/linkedin/@if(Input::get('ref'))?ref={{Input::get('ref')}}@endif" method="post">
							<button type="submit" class="social_button_big">
								<div class="social_button_small li_blue_dark large-2 medium-2 columns">
									<i class="fa fa-linkedin"></i>
								</div>
								<div class="social_button_small li_blue_light rs">
									Register with LinkedIn
								</div>
							</button>
						</form>
						<form action="/facebook/@if(Input::get('ref'))?ref={{Input::get('ref')}}@endif" method="post">
							<button type="submit" class="social_button_big">
								<div class="social_button_small fb_blue_dark large-2 columns medium-2">
									<i class="fa fa-facebook"></i>
								</div>
								<div class="fb_blue_light social_button_small rs">
									Register with Facebook
								</div>
							</button>
						</form>
					</div>

					<div class="large-4 medium-5 columns">
						<form action="/google/@if(Input::get('ref'))?ref={{Input::get('ref')}}@endif" method="post">
							<button type="submit" class="social_button_big">
								<div class="social_button_small gp_red_dark large-2 medium-2 columns">
									<i class="fa fa-google-plus"></i>
								</div>
								<div class="social_button_small gp_red_light rs">
									Register with Google +
								</div>
							</button>
						</form>
						<form action="/twitter/@if(Input::get('ref'))?ref={{Input::get('ref')}}@endif" method="post">
							<button type="submit" class="social_button_big">
								<div class="social_button_small tw_blue_dark large-2 medium-2 columns">
									<i class="fa fa-twitter"></i>
								</div>
								<div class="social_button_small tw_blue_light rs">
									Register with Twitter
								</div>
							</button>
						</form>
					</div>
				</div>
				<form action="/signupProfessional" method="post" enctype="multipart/form-data">
				<div class="large-12 step1fieldswrap">
					<div class="center panelleftwrap">
						<div class="box center">
							<div class="large-12 columns center">
								<img src="img/gray_avatar_lady.png" class="user_profile_avatar space_right">
							</div>
							<div class="large-12 columns">
								<input type="hidden" name="myAvatar" id="myAvatar" value="img/gray_avatar_lady.png" />
								<button class="goToTop custom_white_button small round space_bottom space_top space_right selectavatar" data-reveal-id="avatarModal">
									Select Avatar
								</button>
							</div>
						</div>
					</div>
					<div class="fieldswrap">
						<div class="">
							<input type="text" name="fName" title="Your real name will never be shown to other members" onchange="checkFName()" onfocusout="checkFName()" id="fName" placeholder="First Name*"/>
							<div style="">
								<div class="alert fName" style="position: absolute; top: 43%; display: none; color: red;">*First name should be alphabet (a-Z)</div>
							</div>
						</div>
						<div class="">
							<input type="text" name="lName" title="Your real name will never be shown to other members" onchange="checkLName()" onfocusout="checkLName()" id="lName" placeholder="Last Name*"/>
							<div style="">
								<div class="alert lName" style="position: absolute; top: 43%; display: none; color: red;">*Last name should be alphabet (may contain spaces)</div>
							</div>
						</div>
						<div class="">
							<input type="text" name="eMail" onchange="checkInDB('eMail')" onfocusout="checkInDB('eMail')" id="eMail" placeholder="Email*"/>
							<div style="">
								<div class="alert eMail" style="display: none; position: absolute; top: 50%; color: red;">*Email already exists</div>
								<div class="alert eMailNotValid" style="display: none; position: absolute; top: 50%; color: red;">*Incorrect Email ID</div>
							</div>
						</div>
						<div class="">
							<input type="text" name="confirmEmail" onchange="checkConfirmEmail()" onfocusout="checkConfirmEmail()" id="confirmEmail" placeholder="Confirm Email*"/>
							<div style="">
								<div class="alert confirmEmail" style="position: absolute; top: 50%; display: none; color: red;">*These emails don't match. Try again?</div>
							</div>
						</div>
						<div>
							<input type="password" name="password" onchange="checkPassword()" onfocusout="checkPassword()" id="password" placeholder="Password">
							<div style="height: 78px;">
								<div class="alert password" style="position: absolute; top: 40%; display: none; color: red;">*Passwords must be at least 6 characters long and must include a number and a letter</div>
							</div>
						</div>
						<div>
							<input type="password" name="confirmpassword" onchange="checkConfirmPassword()" onfocusout="checkConfirmPassword()" id="confirmpassword" placeholder="Re-Enter Password">
							<div style="height: 78px;">
								<div class="alert confirmPass" style="position: absolute; top: 40%; display: none; color: red;">*These passwords don't match. Try again?</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="show-for-medium-up">
			<div class="large-9 medium-7 small-12 columns space_bottom left">
				Are you in the right place? If you are not a licensed or professional advisor? <a href="/signup/@if(Input::get('ref'))?ref={{Input::get('ref')}}@endif" class="dark_link"><b>Sign up here</b></a><i class="fa fa-question-circle green_text space_left"></i>
			</div>
			<input type="button" class="button right nextStep" id="11" value="Next" />
		</div>
		<div class="large-12 columns center hide-for-medium-up">
			<p>
				<i class="fa fa-question-circle fa-2x green_text space_bottom"></i>
			</p>
			<p>
				Are you in the right place? If you are not a licensed or professional advisor?
			</p>
			<p>
				<a href="/signup" class="dark_link"><b>Sign up here</b></a>
			</p>
			<input type="button" class="button right wide nextStep" id="11" value="Next" />
		</div>
	</div>
</div>
<!--  POP-UP MODALS  */-->

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

<!-- step 2 signup -->
<div class="large-12 columns bg_off_white big_padding_top" id="step12">
	<div class="row">
		<div class="panel bg_white padded space_top">
					<div class="row">

						<div class="large-4 medium-4 columns center_cell">
							<h3>Choose areas of practice</h3>
						</div>
							<div class="large-4 medium-4 columns center">

								<h4 class="space_top space_bottom">Main Category</h4>

								<select class="option_box" multiple="multiple" id="areas" size=10 name="areas">
									<option class="boxed_option" value="1">All Areas</option>
									<option class="boxed_option" value="2">Area</option>
									<option class="boxed_option" value="3">Area</option>
									<option class="boxed_option" value="4">Area</option>
									<option class="boxed_option" value="5">Area</option>
									<option class="boxed_option" value="6">Area</option>
									<option class="boxed_option" value="7">Area</option>
									<option class="boxed_option" value="8">Area</option>

								</select>

							</div>

							<div class="large-4 medium-4 columns center">

								<h4 class="space_top space_bottom">Sub Category</h4>

								<select class="option_box" multiple="multiple" id="sub_categories" size=10 name="sub_categories">
									<option class="boxed_option" value="1">All Sub Categories</option>
									<option class="boxed_option" value="2">Sub Category</option>
									<option class="boxed_option" value="3">Sub Category</option>
									<option class="boxed_option" value="4">Sub Category</option>
									<option class="boxed_option" value="5">Sub Category</option>
									<option class="boxed_option" value="6">Sub Category</option>
									<option class="boxed_option" value="7">Sub Category</option>
									<option class="boxed_option" value="8">Sub Category</option>
								</select>
							</div>
					</div>
				</div>
		<div class="show-for-medium-up">
			<button type="button" id="12" class="custom_white_button left backStep">
				Back
			</button>
			<input type="button" class="button right nextStep" id="12" value="Next" />
		</div>
		<div class="large-12 columns center hide-for-medium-up">
			<input type="button" id="12" class="button wide space_bottom nextStep" value="Next" />
			<button type="button" id="12" class="custom_white_button space_bottom wide backStep">
				Back
			</button>
		</div>
	</div>
</div>

<!-- step 3 signup -->

<div class="large-12 columns bg_off_white big_padding_top" id="step13">
	<div class="row">
		<div class="panel bg_white space_top padded">
			<div class="row">
				<div class="large-12 columns border_bottom_thin">
					<h4 class="dark_text">Tell us more about yourself</h4>
				</div>
				<div class="large-12 columns space_left space_right space_top space_bottom">
					<textarea class="space_left space_right space_top" rows="6" name="tell_us_more" id="tell_us_more" placeholder="In 250 characters or less, describe how you help people" maxlength="250"></textarea>
					<div class="large-6 large-push-6 columns align_right">
						<p class="light_dark_text right"><span id="remainingCharacters">250</span> of 250 characters remaining</p>
					</div>

					<div class="large-6 large-pull-6 columns">
						<a href=""><label class="left underline space_left space_bottom">Here are some examples to help you get started</label></a>
					</div>
				</div>
			</div>
		</div>
		<div class="show-for-medium-up">
			<button type="button" id="13" class="custom_white_button left backStep">
				Back
			</button>
			<input type="button" class="button right nextStep" id="13" value="Next" />
		</div>
		<div class="large-12 columns center hide-for-medium-up">
			<input type="button" id="13" class="button wide space_bottom nextStep" value="Next" />
			<button type="button" id="13" class="custom_white_button space_bottom wide backStep">
				Back
			</button>
		</div>
	</div>
</div>
<!-- step 4 signup -->

<div class="large-12 columns bg_off_white big_padding_top" id="step14">
	<div class="row">
		<div class="panel bg_white space_top padded">
			<div class="row">
				<div class="large-12 columns space_bottom">
					<div class="large-12 columns border_bottom_thin">
						<h4 class="dark_text">Certifications and Licenses</h4>
					</div>
					<div class="large-12 columns space_left space_right space_top space_bottom">
						<p>Upload your certifications and licenses. Upload your certifications and licenses.</p>
					</div>
					<div class="large-6 columns">
						<div class="panel bg_off_white">
							<h5 class="light_dark_text" id="whow_filename">/path/to/image.jpg</h5>
						</div>
					</div>
					<div class="large-3 columns">
						<button type="button" id="chooseFile" class="custom_white_button">CHOOSE FILE</button>
					</div>
					<div class="large-3 columns">
						<button type="button" id="uploadFile" class="button">UPLOAD FILE</button>
					</div>
				</div>
				<div class="large-12 columns" id="uploadedDoc">
					<input type="hidden" name="uploadedFiles" id="uploadedFiles" />
					<input type="hidden" name="uploadedFilesName" id="uploadedFilesName" />
					<p class="dark_text space_bottom">Uploaded Documents</p>
					<div id="output" class="space_bottom"></div>
				</div>
			</div>
		</div>
		<div class="show-for-medium-up">
			<button type="button" id="14" class="custom_white_button left backStep">
				Back
			</button>
			<input type="button" id="14" class="button right nextStep" value="Next" />
		</div>
		<div class="large-12 columns center hide-for-medium-up">
			<input type="button" id="14" class="button wide space_bottom nextStep" value="Next" />
			<button type="button" id="14" class="custom_white_button space_bottom wide backStep">
				Back
			</button>
		</div>
	</div>
</div>

<!-- step 5 signup -->

<div class="large-12 columns bg_off_white big_padding_top" id="step15">
	<div class="row">
		<div class="panel bg_white padded space_top">
			<div class="row padded">
				<div class="large-12 columns border_bottom_thin show-for-medium-up">
					<h4 class="left">Terms of Use</h4>
				</div>
				<div class="large-12 columns border_bottom_thin hide-for-medium-up">
					<h4>Terms of Use</h4>
				</div>
				<div class="large-12 columns">
					<div class="panel bg_off_white space_top">
						<p class="justify">
							Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?
						</p>
					</div>
					<label class="space_bottom">By clicking "I agree" below you are confirming that you have read and accept the Terms and Conditions above</label>
					<label style="font-size: 1rem;" for="agree_to_terms"><input required type="checkbox" name="agree_to_terms" id="agree_to_terms" /> I agree to the terms of use</label>
				</div>
			</div>
		</div>
		<input type="hidden" id="referedBy" name="referedBy" value="{{Input::get('ref')}}" />
		<div class="show-for-medium-up">
			<button type="button" id="15" class="custom_white_button left backStep">
				Back
			</button>
			<input type="submit" id="15" class="button right" value="Next" />
		</div>
		<div class="large-12 columns center hide-for-medium-up">
			<input type="submit" id="15" class="button wide space_bottom" value="Next" />
			<button type="button" id="15" class="custom_white_button space_bottom wide backStep">
				Back
			</button>
		</div>
	</div>
</div>
<br style="clear:both">

</form>

@include('templates.footer')