@extends('emails.email')
@section('content')
	<p>You have successfully reset your password.</p>
	<p>
		<a href="{{ URL::to('/login') }}">Login on Advizzy.com</a>
	</p>
	<p>If you you did not intend to reset your password, please contact <a href="mailto:{{ Config::get('app.support_email }}">Config::get('app.support_email }}</a></p>
@stop
