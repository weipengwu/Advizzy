@include('templates.header')

<div class="large-12 columns bg_off_white big_padding_top">
	<div class="row padded loginClass">
		<div class="panel signin_panel bg_white padded space_top space_left space_right">
			<div class="row padded center">
				<form action="/admin" method="post">
					<div class="large-6 columns space_top space_bottom">
						<input type="text" name="username" id="username" placeholder="Username" />
					</div>
					<div class="large-6 columns space_top space_bottom">
						<input type="password" name="password" id="password" placeholder="Password" />
					</div>
	
					<div class="large-12 columns">
						<label class="left">
							<input type="checkbox" name="remember_me" id="remember_me" />
							Remember me
						</label>
						<a onclick="$('.loginClass').hide(); $('#forgotDialog').show();" class="dark_text right"><label>Forgot your password?</label></a>
					</div>
					<div class="large-12 columns">
						<input type="submit" class="button wide" value="SIGN IN"/>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div class="row padded" id="forgotDialog" style="display: none;">
		<div class="panel signin_panel bg_white padded space_top space_left space_right">
			<div class="row padded center">
				<form action="/forgotPassword" method="post">
					<div class="large-6 columns space_top space_bottom">
						<input type="email" name="forgotEmail" id="forgotEmail" placeholder="Email" />
					</div>
					<div class="large-6 columns space_top space_bottom">
						<a onclick="$('#forgotDialog').hide(); $('.loginClass').show();" class="dark_text right"><label>Login ?</label></a>
					</div>
					<br/>
					<div class="large-12 columns">
						<input type="submit" class="button wide" value="Continue"/>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

@include('templates.footer')
	