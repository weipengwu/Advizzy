<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/

Route::get('/', "HomeController@showWelcome");

Route::post('/signup', "HomeController@registration");

Route::any('/facebook', "HomeController@facebook");

Route::any('/twitter', "HomeController@twitter");

Route::get('/twitter/{twitterId}', function($twitterId)
{
	return View::make('enterEmailAddress')->with('twitterId', $twitterId);
});
Route::post('/twitter/{emailId}', function($emailId)
{
	// Register the new user.
    // role defines the role by id. role id defined in roles table
    if (isset($_POST['twitterId'])) 
    {
        $twitterId = Input::get('twitterId');
		$twitterUser = Twitter::where('twitterId', $twitterId)->first();
		$user = array ('active' => 1, 'role' => 1);
		$user['myAvatar'] = 'img/gray_avatar_lady.png'; //default Avatar
		$user['resetLink'] = substr( md5(rand().time()), 0, 20);
		$name = explode(' ', $twitterUser->name);
		$user['fName'] = (isset($name[0])) ? $name[0] : 'User' ;
		$user['lName'] = (isset($name[1])) ? $name[1] : '' ;
		$user['eMail'] = (isset($emailId)) ? $emailId : '' ;
		$user['city'] = (isset($twitterUser->location)) ? $twitterUser->location : '' ;
		$twitterUser->email = $emailId;
		$twitterUser->save();
		$table = 'users';
		$inserted = DB::table($table)->insert($user);
		$profile['email'] = $user['eMail'];
		$profile['twitterId'] = Input::get('twitterId');
		$table = 'socialprofiles';
		$inserted = DB::table($table)->insert($profile);
		$user = User::where('eMail', $profile['email'])->first();
		if ($user) 
		{
			Auth::login($user);
			HomeController::sendWelcomeMail( $user);
		}
		
		//get the reference link and increasing credits
		if(Session::has('ref'))
		{
			$referedBy = decodeThis(Session::get('ref'));
			HomeController::increaseCredits($referedBy, 'eMail', 15);
			Session::forget('ref');
		}
		return Redirect::to('/profile');
    }
});

Route::any('/linkedin', "HomeController@linkedin");

Route::any('/google', "HomeController@google");

Route::get('/signup', function()
{
	Auth::logout();
	return View::make('signup');
});

Route::post('/signupProfessional', "HomeController@registrationProfessional");

Route::post('/uploadImage', "HomeController@uploadImage");

Route::get('/signupProfessional', function()
{
	Auth::logout();
	return View::make('signupProfessional');
});
Route::post('/checkInDB', "HomeController@checkInDB");

Route::post('/checkAccountVerification', "HomeController@checkAccountVerification");


Route::get('/login', function()
{
	Auth::logout();
	Session::flush();
	return View::make('login');
});

Route::post('/login', "HomeController@login");

// For Forgot Password 
Route::post('/forgotPassword', "HomeController@forgotPassword");
Route::get('/resetPassword/{token}', function($token)
{
	$user = User::where('resetLink', $token)->first();
	if ($user) 
	{
		return View::make('resetPassword')->with('resetCode', $token);
	}
	return Redirect::to('/login');
});

Route::get('/questions/{questionId}', function($questionId)
{
	// $question = QuestionController::getQuestionDetails($questionId);
	// if(!empty($question))
	// {
		// return View::make('singleQuestion')->with('question', $question);
	// }
	return Redirect::to('/profile');
});

//route to send mail by mailtype as verify, resetPassword, successResetPassword
Route::get('/resendMail/{mailType}', function($mailType)
{
	if(Auth::check())
	{
		if(!(Auth::User()->active))
		{
			HomeController::sendMail( Auth::User(), $mailType);
			return View::make('/verifyAccount')->with('successMsg', 'We have sent you the verification code again.');
		}
		else
		{
			return Redirect::to('/profile');
		}
	}
	return Redirect::to('/login');
});
Route::post('/resetPassword', function()
{
	$token = Input::get('reset');
	$user = User::where('resetLink', Input::get('reset'))->first();
	if ($user) 
	{
		if (Input::get('password') == Input::get('confirmpassword')) 
		{
			//convert simple password to hashed password
			$password = Hash::make(Input::get('password'));
			$user->password = $password;
			$user->resetLink = substr( md5(rand().time()), 0, 20);
			$user->save();
			//sending success mail to user
			$user->send_reset_password_notification();
			return View::make('login')->with('successMsg', 'Successfully reset your password. Please login.');
		}
		return View::make('resetPassword')->with('resetCode', $token)->with('errorMsg', '*These passwords don\'t match. Try again?');
	}
	return View::make('login')->with('errorMsg', 'Sorry. This is a invalid link.');
});

Route::get('/admin', function()
{
	if(Session::has('role') && (Session::get('role') == 'admin'))
	{
		return View::make('admin');
	}
	Auth::logout();
	Session::flush();
	return View::make('adminLogin');
	
});

Route::post('/admin', "HomeController@admin");

Route::get('/account/verify/{token}', function($token)
{
	$user = User::where('resetLink', $token)->first();
	if (isset($user) && !($user->active)) 
	{
		$user->active = 1;
		// $user->resetLink = substr( md5(rand().time()), 0, 20);
		$user->save();
		try
		{
			$data = array
				(
					'email' => $user->eMail,
					'name' => $user->fName.' '.$user->lName
				);
			Mail::queue('emails.welcome', $data, function($message) use ($data)
			{
			  	$sent = $message->to( $data['email'], $data['name'])->subject('Welcome to Advizzy.com ');
			});
		}
		catch(Exception $e)
		{
			Log::error('Welcome mail not sent to '.$user->eMail);
		}
		return View::make('verifyAccount')->with('status', 'verified');
	}
	return Redirect::to('/login');
});

//To keep secure and cache free to loggedin users path
Route::group(array('before' => 'auth', 'after' => 'no-cache'), function()
{
	Route::post('/questions/{questionId}', function($questionId)
	{
		CommentController::postComment($questionId);
		return Redirect::to('/questions/'.$questionId);
	});
	
	// home page for loggedin user
	Route::get('/profile', "UserController@viewDashboardWithData");
	Route::get('/', "UserController@viewNewsfeed");
	// recent activity page for loggedin user
	// Route::get('/recentActivity', "UserController@recentActivity");
	
	//route for post and edit questions
	Route::post('/postQuestion', "QuestionController@postQuestion");
	
	//route for check user is able to post comment on perticuler question using ajax
	Route::post('/canIComment', "QuestionController@canIComment");
	
	//route to perform follow turning operation for user using ajax
	Route::post('/addUserAsFollower', "UserController@addUserAsFollower");
	
	//ajax call and get the current notifications related to active user
	Route::post('/getNotifications', "UserController@getNotifications");
	
	//ajax call and mark the requested notifications
	Route::post('/readNotification', "UserController@readNotification");
	
	//route for post and edit questions
	Route::post('/postComment', function()
	{
		$questionData = Questions::where('id', Input::get('questionIdForComment'))->where('userId', '!=', Auth::user()->id)->first();
		if($questionData)
		{
			$questionId = $questionData->id;
			CommentController::postComment($questionId);
			return Redirect::to('/questions/'.$questionId);
		}
		return Redirect::to('/profile');
	});
	
	//to edit account details
	Route::post('/account', "HomeController@accountSave");

	//to check account details
	Route::get('/account', function()
	{
		return View::make('account');
	});
	
	//to edit account details
	Route::post('/advanceAccountSettings', "UserController@advanceAccountSettings");
	
	//to check advance account details
	Route::get('/advanceAccountSettings', function()
	{
		$tableName = 'userfiles';
		$userFiles = DB::table($tableName)->where('userId', Auth::User()->id)->get();
		if($userFiles)
		{
			return View::make('advanceAccountSettings')->with('files', $userFiles);
		}
		return View::make('advanceAccountSettings');
	});
	
	//route to save files into database called by ajax function
	Route::post('/saveFileInDb', "HomeController@saveFileInDb");
	
	// Route to get Question details by ajax function
	Route::post('getQuestionDetailsById', "QuestionController@getQuestionDetailsById");
	
	
	//FOR logging out to a loggedin user
	Route::get('/logout', function()
	{
		Auth::logout();
		Session::flush();
		return View::make('login')->with('successMsg', 'Your have successfully logged out');
	});

	Route::get('/upgrades', function()
	{
	return View::make('upgrades');
	});

	Route::get('/upgrades_confirm', function()
	{
	return View::make('upgrades_confirm');
	});

	Route::get('/upgrades_processed', function()
	{
	return View::make('upgrades_processed');
	});
	//to upgrade account
	Route::get('/upgradeoptions', function()
	{
		return View::make('upgradeoptions');
	});
	
});

//before verifying the account and email address
Route::get('/congrats', function()
{
	if(Auth::check())
	{
		if(!(Auth::User()->active))
		{
			//it contains congrats template
			return View::make('verifyAccount');
		}
		return Redirect::to('/profile');
	}
	return Redirect::to('/login');
});

//before verifying the account user can change email address
Route::post('/changeEmailAddress', function()
{
	if(Auth::check())
	{
		if(Input::get('eMail'))
		{
			Auth::user()->eMail = Input::get('eMail');
			Auth::user()->active = 0;
			Auth::user()->save();
			HomeController::sendMail(Auth::user(), 'verify');
		}
		return Redirect::to('/profile');
	}
	return Redirect::to('/login');
});

Route::get('/about', function()
{
	return View::make('about');
});

Route::get('/community', function()
{
return View::make('community');
});



Route::post('/help', function() { 

	$email_data = array('email' => Input::get( 'email' ), 'comments' => Input::get( 'comments' ));

	Mail::queue('emails.helpform', $email_data, function($message) use ($email_data)
	{
	  	$sent = $message->to( $email_data['email'])->subject('Contact Form');
	});
	
	return Redirect::to('/help?success=1#submitted');

});
Route::get('/help', function()
{
	return View::make('help', array('hide_quote' => true));
});
Route::get('/disputes', function()
{
	return View::make('disputes');
});
Route::get('/lost', function()
{
	return View::make('lost');
});

