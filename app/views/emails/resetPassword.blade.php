@extends('emails.email')
@section('content')
<p>Hello,</p>
<p>Click the link below to reset your password:</p>
<p><a style="color: #34984e;" href="{{ URL::to('/resetPassword', array($token)) }}">{{ URL::to('/resetPassword', array($token)) }}</a></p>
<p>If you did intend to reset your password, you may disregard this email.</p>
@stop