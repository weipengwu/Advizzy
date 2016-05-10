<?php

use Illuminate\Auth\UserTrait;
use Illuminate\Auth\UserInterface;
use Illuminate\Auth\Reminders\RemindableTrait;
use Illuminate\Auth\Reminders\RemindableInterface;

class User extends Eloquent implements UserInterface, RemindableInterface {

	use UserTrait, RemindableTrait;

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'users';

	public function send_reset_password_mail()
	{
		$email_data = array
		(
			'email' => $this->eMail,
			'name' => $this->fName.' '.$this->lName,
			'token' => $this->resetLink,
			'subject' => 'Please verify your email address.'
		);

		Mail::queue('emails.resetPassword', $email_data, function($message) use ($email_data)
		{
		  	$sent = $message->to( $email_data['email'], $email_data['name'])->subject($email_data['subject']);
		});
	}

	public function send_reset_password_notification()
	{
		$email_data = array
		(
			'email' => $this->eMail,
			'name' => $this->fName.' '.$this->lName,
			'subject' => 'Successfully Reset Password.'
		);

	 	Mail::queue('emails.successResetPassword', $email_data, function($message) use ($data)
		{
		  	$sent = $message->to( $email_data['email'], $email_data['name'])->subject($email_data['subject']);
		});
        break;
	}

	public function get_inquiries_count()
	{
		$responses = DB::select( DB::raw("SELECT count(*) as c FROM questions WHERE userId = :user"), array('user' => $this->id));

		return $responses[0]->c;
	}

	public function get_advice_count()
	{
		$responses = DB::select( DB::raw("SELECT count(*) as c FROM comments WHERE userId = :user"), array('user' => $this->id));

		return $responses[0]->c;
	}

	public function get_likes()
	{

	}

	public function find_advice()
	{

	}
}
