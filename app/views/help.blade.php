@include('templates.header')
<div class="help-banner">
		<p class="white_text">How can we help you?</p>
</div>

<div class="large-12 columns help-wrap">
	<div>
		<h2 class="dark_text">Frequently Asked Questions</h2>
		<p class="light_dark_text">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.</p>
		<div class="faq-items">
			<div class="faq-item">
				<span class="toggle"></span>
				<h3 class="green_text">Are inquiries confidential?</h3>
				<p>Absolutely. Users and their profile information are strictly anonymous to other users. Very limited personal information is collected and will not be shared or sold to third parties.</p>
			</div>
		</div>
	</div>
</div>

<div class="help-feedbackwrap">
	<h2>Cant find an answer?<br> Send us your feedback or question</h2>
	<div class="">
		<form action="/help" method="post" id="helpform">
			<div class="" style="margin-bottom: 1rem;">
				<input type="text" id="email" name="email" onchange="checkEmail()" onfocusout="checkEmail()" placeholder="Your Email" style="margin-bottom:0;">
				<div class="errorwrap">
					<div class="alert eMailNotValid">*Incorrect Email Address</div>
				</div>
			</div>
			<div class="">
				<textarea name="comments" id="comments" placeholder="Enter your comment or question."></textarea>
			</div>
			<input class="button helpsubmit" type="submit" value="Submit">
		</form>
	</div>
</div>
@include('templates.footer')