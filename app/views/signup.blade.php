@include('templates.header')

<!-- signup script -->

<div class="large-12 columns title_columns border_top_thin bg_white">
	<div class="row">
		<div class="title_row signuptitlewrap">
			<h2><b>Join Now.</b> Get Advice Today.</h2>
		</div>
	</div>
</div>

<div class="large-12 columns bg_off_white big_padding_top stepcontainer" id="step1">
	<div class="row">
		<div class="panel bg_white">
			<div class="row">
				<div class="large-12 columns border_bottom_thin padded topwrap">
					<div class="large-4 medium-2 columns center_cell toptitlewrap">
						<h4>Create your Profile</h4>
						<h5 class="mobile">Register With</h5>
					</div>
					<div class="columns socialbuttonwrap">
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
				<form action="signup" method="post" enctype="multipart/form-data">
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
							<input class="hastt" type="text" name="fName" title="Your real name will never be shown to other members" onchange="checkFName()" onfocusout="checkFName()" id="fName" placeholder="First Name*"/>
							<div class="errorwrap">
								<div class="alert fName">*First name should be alphabet (a-Z)</div>
							</div>
						</div>
						<div class="">
							<input class="hastt" type="text" name="lName" title="Your real name will never be shown to other members" onchange="checkLName()" onfocusout="checkLName()" id="lName" placeholder="Last Name*"/>
							<div class="errorwrap">
								<div class="alert lName">*Last name should be alphabet (may contain spaces)</div>
							</div>
						</div>
						<div class="">
							<input type="text" name="eMail" onchange="checkInDB('eMail')" onfocusout="checkInDB('eMail')" id="eMail" placeholder="Email*"/>
							<div class="errorwrap">
								<div class="alert eMail">*Email already exists</div>
								<div class="alert eMailNotValid">*Incorrect Email Address</div>
							</div>
						</div>
						<div class="">
							<input type="text" name="confirmEmail" onchange="checkConfirmEmail()" onfocusout="checkConfirmEmail()" id="confirmEmail" placeholder="Confirm Email*"/>
							<div class="errorwrap">
								<div class="alert confirmEmail">*These emails don't match. Try again?</div>
							</div>
						</div>
						<div class="">
							<input type="text" name="telephone" onchange="checkTelephone()" onfocusout="checkTelephone()" id="telephone" placeholder="Telephone"/>
							<div class="errorwrap">
								<div class="alert telephone">*Not a valid Telephone</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="panel bg_white padded space_top">
			<div class="row">
				<div class="large-12 step1fieldswrap bottom">
					<div class="center panelleftwrap">
						<h4>Create a Username and Password</h4>
					</div>
					<div class="fieldswrap">
						<div class="">
							<input class="hastt" type="text" name="uName" title="should be unique and minimum three characters long" onchange="checkInDB('uName')" onfocusout="checkInDB('uName')" id="uName" placeholder="Username*">
							<div class="errorwrap">
								<div class="alert uName">*Username already exists</div>
								<div class="alert uNameNotValid">*Incorrect Username (required - must contain only letters, numbers, periods and underscores)</div>
							</div>
						</div>
						<div class="">
							<div>
								
							</div>
							
						</div>
						<!-- <div class="large-6 medium-6 columns center">
							<button type="button" class="custom_white_button small round space_bottom"  id="suggestUsername" onclick="createUserName(this);">
								Suggest a Username <i class="fa fa-undo"></i>
							</button>
						</div> -->
						<div class="">
							<input type="password" name="password" onchange="checkPassword()" onfocusout="checkPassword()" id="password" placeholder="Password*">
							<div class=""></div>
						</div>
						<div class="">
							<input type="password" name="confirmpassword" onchange="checkConfirmPassword()" onfocusout="checkConfirmPassword()" id="confirmpassword" placeholder="Re-Enter Password*">
							<div class="errorwrap">
								<div class="alert confirmPass">*These passwords don't match. Try again?</div>
							</div>
						</div>
						<div class="passwordnote">
							Passwords must be at least 6 characters long and must include a number and a letter
						</div>
					</div>
					<div class="finalwords">
						<label id="requiredMark">
							<span>Fields with an * must be filled in.</span>
						</label>
						<label id="yearOldL">
							<input type="checkbox" name="yearOld" id="yearOld"/><label for="yearOld"><span></span>I confirm that I am over the age of 13</label>
						</label>

					</div>
				</div>
			</div>
		</div>
		<div class="formfooter">
			<input type="button" class="button right nextStep" id="1" value="Next" />
			<div class="">
				Are you a licensed or professional advisor? <a href="/signupProfessional/@if(Input::get('ref'))?ref={{Input::get('ref')}}@endif" class="dark_link"><b>Sign up here</b></a>
			</div>
			
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

<div class="large-12 columns bg_off_white big_padding_top stepcontainer" id="step2" style="display: block;">
	<div class="row">
		<div class="panel bg_white padded space_top">
			<div class="row">
				<div class="row space_left space_right">
					<div class="large-12 columns space_left space_right border_bottom_thin padded">
						<h3>Create your Company Account</h3>
					</div>
				</div>
				<div class="large-12 columns space_top">
					<div class="large-4 medium-4 columns center_cell border_right_thin show-for-medium-up">
						<img src="img/logo_default.png"/>
						<br/>
						<button type="button" class="custom_white_button round space_top space_bottom">
							Upload Photo
						</button>
					</div>
					<div class="large-4 medium-4 columns center_cell hide-for-medium-up">
						<img src="img/logo_default.png"/>
						<br/>
						<button type="button" class="custom_white_button round space_top space_bottom">
							Upload Photo
						</button>
					</div>
					<div class="large-8 medium-8 columns">
						<div class="large-6 medium-6 columns">
							<input type="text" name="company_name" id="company_name" placeholder="Company Name">
						</div>
						<div class="large-6 medium-6 columns">
							<input type="text" name="website" id="website" placeholder="Website">
						</div>
						<div class="large-6 medium-6 columns">
							<input type="text" name="address3" id="address" placeholder="Address">
						</div>
						<div class="large-6 medium-6 columns">
							<input type="text" name="city1" id="city1" placeholder="City">
						</div>
						<div class="large-6 medium-6 columns">
							<input type="text" name="province1" id="province1" placeholder="Province">
						</div>
						<div class="large-6 medium-6 columns">
							<input type="text" name="telephone1" id="telephone1" placeholder="Telephone">
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="show-for-medium-up">
			<div class="large-9 medium-7 small-12 columns space_bottom left">
				Are you a licensed or professional advisor? <a href="/signupProfessional" class="dark_link"><b>Sign up here</b></a><i class="fa fa-question-circle green_text space_left"></i>
			</div>

			<input type="button" id="2" class="button right nextStep" value="Next" />
		</div>
		<div class="large-12 columns center hide-for-medium-up">
			<p>
				<i class="fa fa-question-circle fa-2x green_text space_bottom"></i>
			</p>
			<p>
				Are you a licensed or professional advisor?
			</p>
			<p>
				<a href="/signupProfessional" class="dark_link"><b>Sign up here</b></a>
			</p>
			<input type="button" class="button right wide nextStep" id="2" value="Next" />
		</div>
	</div>
</div>

<!-- step 3 signup -->

<div class="large-12 columns bg_off_white big_padding_top stepcontainer" id="step3">
	<div class="row">
		<div class="panel bg_white">
			<div class="row">
				<div class="large-12 columns padded topwrap">
					
					<div class="large-12 step1fieldswrap">
						<div class="center panelleftwrap">
							<div class="box center">
								<div class="large-4 medium-2 columns center_cell toptitlewrap">
									<h4>Tell us a bit about yourself so that you can get the most relevant advice from your community</h3>
								</div>
							</div>
						</div>
						<div class="fieldswrap">
							<div class="genderwrap">
								<div class="">
									<h6 class="left padding_top">Gender</h6>
								</div>
								<input type="hidden" id="gender" name="gender" value="Male" />
								<div class="">
									<button type="button" value="Male" class="button left small gender">
										Male
									</button>
								</div>
								<div class="">
									<button type="button" value="Female" class="unselected button small padded_less space_right gender">
										Female
									</button>
								</div>
							</div>
							<div class="">
								<input type="text" class="datepicker margin_less" name="dob" id="dob" placeholder="Date of Birth mm/dd/yyyy">
							</div>
							<div class="">
								<input type="text" class="margin_less" name="city" id="city" placeholder="City">
							</div>
							<div class="">
		
								<?php $countries =  Config::get('static.countries');?>
								<?php $careerPositions =  Config::get('static.careerPosition');?>
								<?php $incomeLevels =  Config::get('static.incomeLevel');?>
								<?php $educationLevels =  Config::get('static.educationLevel');?>
								<?php $familyOrientations =  Config::get('static.familyOrientation');?>
								<?php $ethnics =  Config::get('static.ethnic');?>
								<?php $industries =  Config::get('static.industry');?>
								
								<select name="country" id="country">
									<option value="" selected>Country</option>
									@foreach($countries as $code => $country)
										<option value="{{$code}}">{{$country}}</option>
									@endforeach
									<option>Unspecified</option>
								</select>
								<div class="errorwrap"></div>
							</div>
							<div class="">
								<select name="incomeLevel" id="incomeLevel">
									<option value="" selected>Income Level</option>
									@foreach($incomeLevels as $code => $incomeLevel)
										<option value="{{$code}}">{{$incomeLevel}}</option>
									@endforeach
									<option>Unspecified</option>
								</select>
								<div class="errorwrap"></div>
							</div>
							<div class="">
								<select name="educationLevel" id="educationLevel">
									<option value="" selected>Education Level</option>
									@foreach($educationLevels as $code => $educationLevel)
										<option value="{{$code}}">{{$educationLevel}}</option>
									@endforeach
									<option>Unspecified</option>
								</select>
								<div class="errorwrap"></div>
							</div>
							<div class="">
								<select name="familyOrientation" id="familyOrientation">
									<option value="" selected>Relationship Status</option>
									@foreach($familyOrientations as $code => $familyOrientation)
										<option value="{{$code}}">{{$familyOrientation}}</option>
									@endforeach
									<option>Unspecified</option>
								</select>
								<div class="errorwrap"></div>
							</div>
							<div class="">
								<select name="careerPosition" id="careerPosition">
									<option value="" selected>Career Position</option>
									@foreach($careerPositions as $code => $careerPosition)
										<option value="{{$code}}">{{$careerPosition}}</option>
									@endforeach
									<option>Unspecified</option>
								</select>
								<div class="errorwrap"></div>
							</div>
							<div class="">
								<select name="ethnic" id="ethnic">
									<option value="" selected>Ethnic Background</option>
									@foreach($ethnics as $code => $ethnic)
										<option value="{{$ethnic}}">{{$ethnic}}</option>
									@endforeach
									<option>Unspecified</option>
								</select>
								<div class="errorwrap"></div>
							</div>
							<div class="">
								<select name="industry" id="industry">
									<option value="" selected>Industry</option>
									@foreach($industries as $code => $industry)
										<option value="{{$industry}}">{{$industry}}</option>
									@endforeach
									<option>Unspecified</option>
								</select>
								<div class="errorwrap"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="show-for-medium-up">
			<button type="button" id="3" class="custom_white_button left backStep">
				BACK
			</button>
			<input type="button" class="button right nextStep" id="3" value="Next" />
		</div>
		<div class="large-12 columns center hide-for-medium-up">
			<input type="button" id="3" class="button wide space_bottom nextStep" value="Next" />
			<button type="button" id="3" class="custom_white_button space_bottom wide backStep">
				BACK
			</button>
		</div>
	</div>
</div>
<!-- step 4 signup -->

<div class="large-12 columns bg_off_white big_padding_top stepcontainer" id="step4">
	<div class="row">
		<div class="panel bg_white">
			<div class="row">
				<div class="large-12 columns padded topwrap">
					<div class="large-12 step1fieldswrap">
						<div class="center panelleftwrap">
							<div class="box center">
								<div class="large-4 medium-2 columns center_cell toptitlewrap">
									<h4>Tell us a bit about yourself so that you can get the most relevant advice from your community</h3>
								</div>
							</div>
						</div>
						<div class="fieldswrap">
							<input type="hidden" name="hobby" id="hobby" />
							<input type="hidden" name="goals" id="goals" />
							<?php $hobbies =  Config::get('static.hobbies');?>
							<?php $goals =  Config::get('static.goals');?>
							<div class="">
								<h4 class="space_top space_bottom">Hobbies</h4>
								<select class="noselect2 option_box" multiple="multiple" style="overflow-y: scroll;" size="22" name="hobbies" id="hobbies">
									@foreach($hobbies as $code => $hobbyGrp)
										<optgroup style="margin-left: 5%!important;" label="{{$code}}">
											@foreach($hobbyGrp as $hCode => $hobby)
												<option style="margin-left: -6%!important;" class="boxed_option" id="{{$hCode}}" value="{{$hCode}}">{{$hobby}}</option>
											@endforeach
										</optgroup>
									@endforeach
								</select>
							</div>
							<div class="">
								<h4 class="space_top space_bottom">Your Goals and Values</h4>
								<select class="noselect2 option_box" multiple="multiple" style="overflow-y: scroll" id="goal" size="18" name="goal">
									@foreach($goals as $code => $goal)
										<option style="margin-left: 5%!important;" class="boxed_option" id="{{$code}}" value="{{$code}}">{{$goal}}</option>
									@endforeach
								</select>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="show-for-medium-up">
			<button type="button" id="4" class="custom_white_button left backStep">
				BACK
			</button>
			<input type="button" id="4" class="button right nextStep" value="Next" />
		</div>
		<div class="large-12 columns center hide-for-medium-up">
			<input type="button" id="4" class="button wide space_bottom nextStep" value="Next" />
			<button type="button" id="4" class="custom_white_button space_bottom wide backStep">
				BACK
			</button>
		</div>
	</div>
</div>

<!-- step 5 signup -->

<div class="large-12 columns bg_off_white big_padding_top" id="step5">
	<div class="row">
		<div class="panel bg_white padded space_top">
			<div class="row">
				<div class="large-12 columns border_bottom_thin">
					<h3>Your Astrology</h3>
				</div>
				<input type="hidden" id="astrology" name="astrology" />
				<div class="large-12 columns">
					<ul class="large-block-grid-3 medium-block-grid-3 center space_bottom">

						<li class="space_bottom">
							<div class="astro_sign_box">
								<div class="astro_pic"  id="aries_pic">
								</div>

								<h6>Aries</h6>
								<p>Mar 21-Apr 19</p>
							</div>
						</li>

						<li class="space_bottom">
							<div class="astro_sign_box">
									<div class="astro_pic"  id="leo_pic">
									</div>
								<h6>Leo</h6>
								<p>Jul 23-Aug 22</p>
							</div>
						</li>

						<li class="space_bottom">
							<div class="astro_sign_box">
								
									<div class="astro_pic"  id="sagittarius_pic">
									</div>
								
								<h6>Sagittarius</h6>
								<p>Nov 22-Dec 21</p>
							</div>
						</li>

						<li class="space_bottom">
							<div class="astro_sign_box">
								
									<div class="astro_pic"  id="taurus_pic">
									</div>
							
								<h6>Taurus</h6>
								<p>Apr 20-May 20</p>
							</div>
						</li>

						<li class="space_bottom">
							<div class="astro_sign_box">
								
									<div class="astro_pic"  id="virgo_pic">
									</div>
								
								<h6>Virgo</h6>
								<p>Aug 23-Sep 22</p>
							</div>
						</li>

						<li class="space_bottom">
							<div class="astro_sign_box">
								
									<div class="astro_pic"  id="capricorn_pic">
									</div>
								
								<h6>Capricorn</h6>
								<p>Dec 22-Jan 19</p>
							</div>
						</li>

						<li class="space_bottom">
							<div class="astro_sign_box">
									
									<div class="astro_pic"  id="gemini_pic">
									</div>
								
								<h6>Gemini</h6>
								<p>May 21-Jun 20</p>
							</div>
						</li>

						<li class="space_bottom">
							<div class="astro_sign_box">
								
									<div class="astro_pic"  id="libra_pic">
									</div>
								
								<h6>Libra</h6>
								<p>Sep 23-Oct 22</p>
							</div>
						</li>

						<li class="space_bottom">
							<div class="astro_sign_box">
								
									<div class="astro_pic"  id="aquarius_pic">
									</div>
								
								<h6>Aquarius</h6>
								<p>Jan 20-Feb 19</p>
							</div>
						</li>

						<li class="space_bottom">
							<div class="astro_sign_box">
								
									<div class="astro_pic"  id="cancer_pic">
									</div>
								
								<h6>Cancer</h6>
								<p>Jun 21-Jul 22</p>
							</div>
						</li>

						<li class="space_bottom">
							<div class="astro_sign_box">
							
									<div class="astro_pic"  id="scorpio_pic">
									</div>
							
								<h6>Scorpio</h6>
								<p>Oct 23-Nov 21</p>
							</div>
						</li>

						<li class="space_bottom">
							<div class="astro_sign_box">
									<div class="astro_pic"  id="pisces_pic">
									</div>
								<h6>Pisces</h6>
								<p>Feb 19-Mar 20</p>
							</div>
						</li>
					  </ul>
				</div>
			</div>
		</div>
		<div class="show-for-medium-up">
			<button type="button" id="5" class="custom_white_button left backStep">
				BACK
			</button>
			<input type="button" id="5" class="button right nextStep" value="Next" />
		</div>
		<div class="large-12 columns center hide-for-medium-up">
			<input type="button" id="5" class="button wide space_bottom nextStep" value="Next" />
			<button type="button" id="5" class="custom_white_button space_bottom wide backStep">
				BACK
			</button>
		</div>
	</div>
</div>

<!-- step 6 signup -->

<div class="large-12 columns bg_off_white big_padding_top" id="step6">
	<div class="row">
		<div class="panel bg_white padded space_top">
			<div class="row padded">
				<div class="large-12 columns border_bottom_thin show-for-medium-up">
					<h4 class="left">Terms of Use</h4>
				</div>
				<div class="large-12 columns border_bottom_thin hide-for-medium-up">
					<h4>Terms of Use</h4>
				</div>
				<div class="large-12 columns termswrap">
					<div class="panel bg_off_white space_top">
						<p class="justify">
							Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?

							Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?
						</p>
					</div>
					<label class="space_bottom">By clicking "I agree" below you are confirming that you have read and accept the Terms and Conditions above</label>
					<label id="agree">
						<input type="checkbox" required name="agree_to_terms" id="agree_to_terms" />
						<label for="agree_to_terms"><span></span>I agree to the terms of use</label>
					</label>
				</div>
			</div>
		</div>
		<input type="hidden" id="referedBy" name="referedBy" value="{{Input::get('ref')}}" />
		<div class="show-for-medium-up">
			<button type="button" id="6" class="custom_white_button left backStep">
				BACK
			</button>
			<input type="submit" id="6" class="button right" value="Next" />
		</div>
		<div class="large-12 columns center hide-for-medium-up">
			<input type="submit" id="6" class="button wide space_bottom" value="Next" />
			<button type="button" id="6" class="custom_white_button space_bottom wide backStep">
				BACK
			</button>
		</div>
	</div>
</div>

</form>

@include('templates.footer')