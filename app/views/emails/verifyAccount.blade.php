<!DOCTYPE html>
<html lang="en-US">
	<head>
		<meta charset="utf-8">
	</head>
	<body>
		<!-- <h2>Advizzy Member Verification</h2>

		<div>
			To reset your password, complete this form: {{ URL::to('account/verify', array($token)) }}.<br/>
			This link will expire in {{ Config::get('auth.reminder.expire', 60) }} minutes.
		</div> -->
		<div id="id_1">
			Please click on below link to verify your account.
			<p>
				<a href="{{ URL::to('account/verify', array($token)) }}">Verify this email address</a><br>
				<br>
				This link will expire in {{ Config::get('auth.reminder.expire', 60) }} minutes.
			</p>
			<p>
				You are receiving this message because you are a registered customer. You may change your notiﬁcation preferences. If you believe you have received the email in error please contact us at support@emailaddress.com
			</p>
		</div>
	</body>
</html>
