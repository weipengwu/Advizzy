@include('templates.header')
<script type="text/javascript">
function changeAction() 
{
	emailId = document.getElementById('eMail').value;
	console.log(emailId);
	document.getElementById('emailAddForm').action = '/twitter/'+emailId;
}
</script>
<div class="large-12 columns bg_off_white big_padding_top">
	<div class="row padded">
		<div class="panel signin_panel bg_white padded space_top space_left space_right">
			<div class="row padded center">
				<form id="emailAddForm" action="/twitter" method="post" onsubmit="return changeAction();">
					<div class="large-6 columns space_top space_bottom">
						<input type="text" name="eMail" onchange="checkInDB('eMail')" onfocusout="checkInDB('eMail')" id="eMail" placeholder="Email"/>
						<div style="height: 20px;">
							<div class="alert eMail" style="display: none; position: absolute; top: 50%; color: red;">*This Email have already Registered</div>
							<div class="alert eMailNotValid" style="display: none; position: absolute; top: 50%; color: red;">*Incorrect Email ID</div>
						</div>
					</div>
					<input type="hidden" name="twitterId" id="twitterId" value="{{$twitterId}}" />
					<div class="large-12 columns">
						<input type="submit" class="button wide" onclick="return checkInDB('eMail');" value="Continue"/>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

@include('templates.footer')