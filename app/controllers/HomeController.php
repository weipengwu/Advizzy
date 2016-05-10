<?php

class HomeController extends BaseController {

	/*
	|--------------------------------------------------------------------------
	| Default Home Controller
	|--------------------------------------------------------------------------
	|
	| You may wish to use controllers instead of, or in addition to, Closure
	| based routes. That's great! Here is an example controller method to
	| get you started. To route to this controller, just add the route:
	|
	|	Route::get('/', 'HomeController@showWelcome');
	|
	*/

	public function showWelcome()
	{
		if(Auth::check())
		{
			if(!(Auth::User()->active))
			{
				return Redirect::to('/congrats');
			}
			else 
			{
				return Redirect::to('/');
			}
		}
		else
		{
			if(isset($_GET["ref"]))
			{
				return View::make('signup');
			}
			return View::make('login');
		}
	}
	
	//for login with facebook
	public function facebook()
	{
		// get data from input
		$code = Input::get( 'code' );
		
		// get fb service
		$fb = OAuth::consumer( 'Facebook' );
		
		// check if code is valid
		// if code is provided get user data and sign in
		if ( !empty( $code ) ) 
		{
			// This was a callback request from facebook, get the token
		    $token = $fb->requestAccessToken( $code );
		
		    // Send a request with it
		    $result = json_decode( $fb->request( '/me?fields=id,first_name,last_name,email,gender' ), true );
			$input['eMail'] = $result['email'];
			
			// Must not already exist in the `email` column of `users` table
			$rules = array('eMail' => 'unique:users,email');
			
			$validator = Validator::make($input, $rules);
			
			if ($validator->fails()) 
			{
				//That email address is already registered. You sure you don\'t have an account?
				$user = User::where('eMail', $result['email'])->first();
				$profile = socialProfile::where('email', $result['email'])->first();
				if($profile)
				{
					$profile->fbId = $result['id'];
					$profile->save();
				}
				else 
				{
					$profile['email'] = $user['eMail'];
					$profile['fbId'] = $result['id'];
					$table = 'socialprofiles';
					$inserted = DB::table($table)->insert($profile);
				}
				Auth::login($user);
				return Redirect::to('/profile');
			}
			else 
			{
			    // Register the new user.
			    // role defines the role by id. role id defined in roles table
				$user = array ('active' => 1, 'role' => 1);
				$user['myAvatar'] = 'img/gray_avatar_lady.png'; //default Avatar
				$user['resetLink'] = substr( md5(rand().time()), 0, 20);
				$user['fName'] = (isset($result['first_name'])) ? $result['first_name'] : 'User' ;
				$user['lName'] = (isset($result['last_name'])) ? $result['last_name'] : '' ;
				$user['eMail'] = (isset($result['email'])) ? $result['email'] : '' ;
				$user['gender'] = (isset($result['gender'])) ? strtoupper($result['gender']) : '' ;
				$table = 'users';
	        	$inserted = DB::table($table)->insert($user);
				$profile['email'] = $user['eMail'];
				$profile['fbId'] = $result['id'];
				$table = 'socialprofiles';
				$inserted = DB::table($table)->insert($profile);
				$user = User::where('eMail', $profile['email'])->first();
				Auth::login($user);
				$this->sendWelcomeMail($user);
				
				//get the reference link and increasing credits
				if(Session::has('ref'))
				{
					$referedBy = decodeThis(Session::get('ref'));
					$this->increaseCredits($referedBy, 'eMail', 15);
					Session::forget('ref');
				}
				return Redirect::to('/profile');
			}
		}
		// if not ask for permission first
		else 
		{
			// set session if user registering by refrence
			if(Input::has('ref'))
			{
				Session::put('ref', Input::get('ref'));
			}
			
		    // get fb authorization
		    $url = $fb->getAuthorizationUri();
		
		    // return to facebook login url
		    return Redirect::to( (string)$url );
		}
	}
	
	//for login with twitter
	public function twitter()
	{
		// get data from input
		$token = Input::get( 'oauth_token' );
		$verify = Input::get( 'oauth_verifier' );
		
		// get twitter service
		$tw = OAuth::consumer( 'Twitter' );
		
		// check if code is valid
		
		// if code is provided get user data and sign in
		if ( !empty( $token ) && !empty( $verify ) ) 
		{
		    // This was a callback request from twitter, get the token
		    $token = $tw->requestAccessToken( $token, $verify );
		
		    // Send a request with it
		    $result = json_decode( $tw->request( 'account/verify_credentials.json' ), true );
			$input['twitterId'] = $result['id'];
			
			// Must not already exist in the `email` column of `users` table
			$rules = array('twitterId' => 'unique:twitter');
			
			$validator = Validator::make($input, $rules);
			
			if ($validator->fails()) 
			{
				//That email address is already registered. You sure you don\'t have an account?
				$twitterUser = Twitter::where('twitterId', $result['id'])->first();
				if(!$twitterUser->email)
				{
					return Redirect::to('/twitter/'.$result['id']);
				}
				$user = User::where('eMail', $twitterUser->email)->first();
				
				$profile = socialProfile::where('email', $twitterUser->email)->first();
				if($profile)
				{
					$profile->twitterId = $result['id'];
					$profile->save();
				}
				else 
				{
					$profile['email'] = $user['eMail'];
					$profile['twitterId'] = $result['id'];
					$table = 'socialprofiles';
					$inserted = DB::table($table)->insert($profile);
				}
				if($user)
				{
					Auth::login($user);
				}
				return Redirect::to('/profile');
			}
			else 
			{
				$user['twitterId'] = (isset($result['id'])) ? $result['id'] : 'User' ;
				$user['name'] = (isset($result['name'])) ? $result['name'] : '' ;
				$user['screen_name'] = (isset($result['screen_name'])) ? $result['screen_name'] : '' ;
				$user['location'] = (isset($result['location'])) ? $result['location'] : '' ;
				$user['profile_image_url_https'] = (isset($result['profile_image_url_https'])) ? $result['profile_image_url_https'] : '' ;
				$table = 'twitter';
	        	$inserted = DB::table($table)->insert($user);
				return Redirect::to('/twitter/'.$user['twitterId']);
			}
		}
		// if not ask for permission first
		else 
		{
			// set session if user registering by refrence
			if(Input::has('ref'))
			{
				Session::put('ref', Input::get('ref'));
			}
			
		    // get request token
		    $reqToken = $tw->requestRequestToken();
		
		    // get Authorization Uri sending the request token
		    $url = $tw->getAuthorizationUri(array('oauth_token' => $reqToken->getRequestToken()));
		
		    // return to twitter login url
		    return Redirect::to( (string)$url );
		}
	}
	
	//for login with linkedin
	public function linkedin()
	{
		// get data from input
        $code = Input::get( 'code' );

        $linkedinService = OAuth::consumer( 'Linkedin' );


        if ( !empty( $code ) ) 
        {
            // This was a callback request from linkedin, get the token
            $token = $linkedinService->requestAccessToken( $code );
            // Send a request with it. Please note that XML is the default format.
            $result = json_decode($linkedinService->request('/people/~:(id,first-name,last-name,headline,member-url-resources,picture-url,location,public-profile-url,email-address)?format=json'), true);
			$input['eMail'] = $result['emailAddress'];
			
			// Must not already exist in the `email` column of `users` table
			$rules = array('eMail' => 'unique:users,email');
			
			$validator = Validator::make($input, $rules);
			
			if ($validator->fails()) 
			{
				//That email address is already registered. You sure you don\'t have an account?
				$user = User::where('eMail', $result['emailAddress'])->first();
				$profile = socialProfile::where('email', $result['emailAddress'])->first();
				if($profile)
				{
					$profile->linkedinId = $result['id'];
					$profile->save();
				}
				else 
				{
					$profile['email'] = $user['eMail'];
					$profile['linkedinId'] = $result['id'];
					$table = 'socialprofiles';
					$inserted = DB::table($table)->insert($profile);
				}
				Auth::login($user);
				return Redirect::to('/profile');
			}
			else 
			{
			    // Register the new user.
			    // role defines the role by id. role id defined in roles table
				$user = array ('active' => 1, 'role' => 1);
				$user['myAvatar'] = 'img/gray_avatar_lady.png'; //default Avatar
				$user['resetLink'] = substr( md5(rand().time()), 0, 20);
				$user['fName'] = (isset($result['firstName'])) ? $result['firstName'] : 'User' ;
				$user['lName'] = (isset($result['lastName'])) ? $result['lastName'] : '' ;
				$user['eMail'] = (isset($result['emailAddress'])) ? $result['emailAddress'] : '' ;
				if(isset($result['location']))
				{
					$location = $result['location'];
					$user['country'] = (isset($location['country']['code'])) ? strtoupper($location['country']['code']) : '' ;
					$user['city'] = (isset($location['name'])) ? $location['name'] : '' ;
				}
				$table = 'users';
	        	$inserted = DB::table($table)->insert($user);
				$profile['email'] = $user['eMail'];
				$profile['linkedinId'] = $result['id'];
				$table = 'socialprofiles';
				$inserted = DB::table($table)->insert($profile);
				$user = User::where('eMail', $profile['email'])->first();
				Auth::login($user);
				$this->sendWelcomeMail($user);
				
				//get the reference link and increasing credits
				if(Session::has('ref'))
				{
					$referedBy = decodeThis(Session::get('ref'));
					$this->increaseCredits($referedBy, 'eMail', 15);
					Session::forget('ref');
				}
				return Redirect::to('/profile');
			}

        }// if not ask for permission first
        else 
        {
        	// set session if user registering by refrence
			if(Input::has('ref'))
			{
				Session::put('ref', Input::get('ref'));
			}
			
            // get linkedinService authorization
            $url = $linkedinService->getAuthorizationUri(array('state'=>'DCEEFWF45453sdffef424'));

            // return to linkedin login url
            return Redirect::to( (string)$url );
        }
	}
	
	//for login with google
	public function google()
	{
		// get data from input
		$code = Input::get( 'code' );
		
		// get google service
		$googleService = OAuth::consumer( 'Google' );
		
		// check if code is valid
		
		// if code is provided get user data and sign in
		if ( !empty( $code ) ) 
		{
		
		    // This was a callback request from google, get the token
		    $token = $googleService->requestAccessToken( $code );
		
		    // Send a request with it
		    $result = json_decode( $googleService->request( 'https://www.googleapis.com/oauth2/v1/userinfo' ), true );
			$input['eMail'] = $result['email'];
			
			// Must not already exist in the `email` column of `users` table
			$rules = array('eMail' => 'unique:users,email');
			
			$validator = Validator::make($input, $rules);
			
			if ($validator->fails()) 
			{
				//That email address is already registered. You sure you don\'t have an account?
				$user = User::where('eMail', $result['email'])->first();
				$profile = socialProfile::where('email', $result['email'])->first();
				if($profile)
				{
					$profile->googleId = $result['id'];
					$profile->save();
				}
				else 
				{
					$profile['email'] = $user['eMail'];
					$profile['googleId'] = $result['id'];
					$table = 'socialprofiles';
					$inserted = DB::table($table)->insert($profile);
				}
				Auth::login($user);
				return Redirect::to('/profile');
			}
			else 
			{
			    // Register the new user.
			    // role defines the role by id. role id defined in roles table
				$user = array ('active' => 1, 'role' => 1);
				$user['myAvatar'] = 'img/gray_avatar_lady.png'; //default Avatar
				$user['resetLink'] = substr( md5(rand().time()), 0, 20);
				$user['fName'] = (isset($result['given_name'])) ? $result['given_name'] : 'User' ;
				$user['lName'] = (isset($result['family_name'])) ? $result['family_name'] : '' ;
				$user['eMail'] = (isset($result['email'])) ? $result['email'] : '' ;
				$user['gender'] = (isset($result['gender'])) ? strtoupper($result['gender']) : '' ;
				$table = 'users';
	        	$inserted = DB::table($table)->insert($user);
				$profile['email'] = $user['eMail'];
				$profile['googleId'] = $result['id'];
				$table = 'socialprofiles';
				$inserted = DB::table($table)->insert($profile);
				$user = User::where('eMail', $profile['email'])->first();
				Auth::login($user);
				$this->sendWelcomeMail($user);
				
				//get the reference link and increasing credits
				if(Session::has('ref'))
				{
					$referedBy = decodeThis(Session::get('ref'));
					$this->increaseCredits($referedBy, 'eMail', 15);
					Session::forget('ref');
				}
				return Redirect::to('/profile');
			}
		}
		// if not ask for permission first
		else 
		{
			// set session if user registering by refrence
			if(Input::has('ref'))
			{
				Session::put('ref', Input::get('ref'));
			}
			
		    // get googleService authorization
		    $url = $googleService->getAuthorizationUri();
		
		    // return to google login url
		    return Redirect::to( (string)$url );
		}
	}
	
	public function registration()
	{
		//convert simple password to hashed password
		$password = Hash::make(Input::get('password'));
		
		// active defines that user is registered but not verified. For verified user active value is 1
		// role defines the role by id. role id defined in roles table
		$user = array ('active' => 0, 'role' => 1, 'maxRequest' => 100);
		
		// $user['myAvatar'] = Input::get('myAvatar');
		$user['password'] = $password;
		$user['resetLink'] = substr( md5(rand().time()), 0, 20);
		$userFields = array
					(
						'eMail', 'uName', 'fName', 'lName', 'telephone',
						'gender', 'dob', 'city', 'careerPosition', 'familyOrientation', 
						'incomeLevel', 'hobby', 'country','careerIndustry', 'educationLevel',
						'values', 'goals', 'astrology', 'myAvatar', 'ethnic'
					);
		foreach ($userFields as $userField) 
		{
			//in which input will have value that fields will store in $user
			if(Input::get($userField))
			{
				$user[$userField] = Input::get($userField);
			}
		}
		
		$table = 'users';
        $inserted = DB::table($table)->insertGetId($user);
		
		if($inserted)
		{
			//User Grouping
			//influence percent 
			$influencePercent = 0;
			$influenceLevel = 0;
			
			//getting static data of user fields to count influence of user
			$familyOrientationValue = Config::get('static.familyOrientationValue');
			$careerPositionValue = Config::get('static.careerPositionValue');
			$incomeLevelValue = Config::get('static.incomeLevelValue');
			$educationLevelValue = Config::get('static.educationLevelValue');
			if(isset($user['familyOrientation']))
			{
				$influencePercent += $familyOrientationValue[$user['familyOrientation']];
			}
			if(isset($user['careerPosition']))
			{
				$influencePercent += $careerPositionValue[$user['careerPosition']];
			}
			if(isset($user['incomeLevel']))
			{
				$influencePercent += $incomeLevelValue[$user['incomeLevel']];
			}
			if(isset($user['educationLevel']))
			{
				$influencePercent += $educationLevelValue[$user['educationLevel']];
			}
			
			//defining a influence level to user 
			if($influencePercent <= 15)
			{
				$influenceLevel = 1;
			}
			elseif ($influencePercent <= 25) 
			{
				$influenceLevel = 2;
			}
			elseif ($influencePercent > 25) 
			{
				$influenceLevel = 3;
			}
			
			//getting industry id 
			// $industry = Input::get('careerIndustry');
			// $industries = Config::get('static.industryId');
			// $userInfluence['industry'] = $industries[$industry];
			
			// //getting profession id
			// $profession = Input::get('profession');
			// $professions = Config::get('static.professionId');
			// $userInfluence['profession'] = $professions[$profession];
			
			// //getting continent by user's country
			// $country = Input::get('country');
			// $continent = Config::get('static.continent');
			// $continentId = Config::get('static.continentId');
			// $userInfluence['continent'] = $continentId[$continent[$country]];
			// $userInfluence['userId'] = $inserted;
			// $userInfluence['influencePercent'] = $influencePercent;
			// $userInfluence['influenceLevel'] = $influenceLevel;
			
			// $userInfluence['epochUpdatedAt'] = time();
   //      	$inserted = DB::table('influence')->insertGetId($userInfluence);
			
			// incrementing the credits of referrel person
			$referedBy = decodeThis(Input::get('referedBy'));
			$this->increaseCredits($referedBy, 'eMail', 15);
			
			$username = Input::get('uName');
			$password = Input::get('password');
			$isLoggedIn = $this->isLoggedIn($username, $password);
			if($isLoggedIn)
			{
				if(!($isLoggedIn->active))
				{
					return Redirect::to('/congrats');
				}
				else
				{
					return Redirect::to('/profile');
				}
			}
			echo "Not valid username and password.";
		}
		echo "Please Update Database";
	}

	public function registrationProfessional()
	{
		//convert simple password to hashed password
		$password = Hash::make(Input::get('password'));
		
		// active defines that user is registered but not verified. For verified user active value is 1
		// role defines the role by id. role id defined in roles table
		$user = array ('active' => 0, 'role' => 2, 'maxRequest' => 100);
		
		// $user['myAvatar'] = Input::get('myAvatar');
		$user['password'] = $password;
		$user['resetLink'] = substr( md5(rand().time()), 0, 20);
		$userFields = array
		(
			'eMail', 'fName', 'lName', 'myAvatar'
		);
		foreach ($userFields as $userField) 
		{
			//in which input will have value that fields will store in $user
			if(Input::get($userField))
			{
				$user[$userField] = Input::get($userField);
			}
		}
		
		$table = 'users';
		$userId = DB::table($table)->insertGetId($user);
		if($userId)
		{
			//saving certificates files path into database
			$files = explode(',', Input::get('uploadedFiles'));
			$filesName = explode(',', Input::get('uploadedFilesName'));
			$tableName = 'userfiles';
			if($files)
			{
				foreach($files as $key => $file)
				{
					$fileName = $filesName[$key];
					$data = array(
							'userId' => $userId,
							'location' => $file,
							'name' => $fileName,
							'type' => 'professionalCertificates',
							'created_at'=>date('Y-m-d H:i:s'),
        					'updated_at'=> date('Y-m-d H:i:s')
					);
					DB::table($tableName)->insert($data);
				}
			}
			
			// incrementing the credits of referrel person
			$referedBy = decodeThis(Input::get('referedBy'));
			$this->increaseCredits($referedBy, 'eMail', 15);
			
			$username = Input::get('eMail');
			$password = Input::get('password');
			$isLoggedIn = $this->isLoggedIn($username, $password);
			if($isLoggedIn)
			{
				if(!($isLoggedIn->active))
				{
					return Redirect::to('/congrats');
				}
				else
				{
					return Redirect::to('/profile');
				}
			}
			echo "Not valid username and password.";
		}
		echo "Please Update Database";
	}

	public function login()
	{
		if (Auth::check()) 
		{
			Auth::logout();
			Session::flush();
		}
		$username = Input::get('username');
		$password = Input::get('password');
		$isLoggedInUser = $this->isLoggedIn($username, $password);
		if($isLoggedInUser)
		{
			if(!($isLoggedInUser->active))
			{
				return Redirect::to('/congrats');
			}
			return Redirect::to('/');
		}
		return View::make('login')->with( 'errorMsg', 'Not a valid username and password.');
	}
	
	// function to send mail for reset password
	public function forgotPassword()
	{
		if (Auth::check()) 
		{
			Auth::logout();
			Session::flush();
		}

		$eMail = Input::get('forgotEmail');
		$user = User::where('eMail', $eMail)->first();

		if ($user)
		{
			$user->send_reset_password_mail();

			return View::make('login')->with( 'successMsg', 'We have sent the reset password link by mail. Thank You.');
		}

		return View::make('login')->with( 'errorMsg', 'Sorry. You are not a registered user.');
	}
	
	public function admin()
	{
		if (Auth::check()) 
		{
			Auth::logout();
			Session::flush();
		}
		$username = Input::get('username');
		$password = Input::get('password');
		$isLoggedInUser = $this->isLoggedIn($username, $password);
		
		// getting admin role id
		$role = Role::where('value', 'admin')->first();
		
		if($isLoggedInUser && ($isLoggedInUser->role == $role->id))
		{
			Session::put('role', 'admin');
			if(!($isLoggedInUser->active))
			{
				return Redirect::to('/congrats');
			}
			return Redirect::to('/admin');
		}
		return Redirect::to('/login');
	}
	
	public function checkInDB()
	{
		$value = Input::get('value');
		$field = Input::get('field');
		
		//value not present in DB
		$isPresent = null;
		$validator = Validator::make( array($field => $value), array($field => 'unique:users'));
		if ($validator->fails())
		{
		    // The given data did not pass validation
		    $isPresent = "Already Exist. Please Select Unique.";
			// $isPresent = $validator->messages();
			// $isPresent = $isPresent->first($field);
		}
		return $isPresent;
	}
	public function checkAccountVerification()
	{
		$retVal = 0;
		if(Auth::check())
		{
			if (Auth::User()->active) 
			{
				$retVal = 1;
			}
		}
		return $retVal;
	}

	function isLoggedIn($username, $password)
	{
		$attempt = FALSE;
		$user = User::where('eMail', $username)->orWhere('uName', $username)->first();
		//user exist or not
		if($user) 
		{
			if (!($user->active))
			{
				$this->sendMail( $user, 'verify');
			}
		    $attempt = Auth::attempt(array('eMail' => $user->eMail, 'password' => $password));
			if(!$attempt)
			{
				$user = FALSE;
			}
		}
		return $user;  
	}
	

	public function logout()
	{
		Auth::logout();
		return Redirect::route('/login');
	}
	
	public static function sendMail( $user, $mailType)
	{
		$sent = FALSE;
		$data = array
					(
						'email' => $user->eMail,
						'name' => $user->fName.' '.$user->lName,
						'token' => $user->resetLink
					);
		switch ($mailType) 
		{
		    case "verify":
		        Mail::queue('emails.verifyAccount', $data, function($message) use ($data)
				{
					// $message->from('noreply@advizzy.com', 'Advizzy.com');
				  	$sent = $message->to( $data['email'], $data['name'])->subject('Please verify your email address.');
				});
		        break;
				
		    case "resetPassword":
		        Mail::queue('emails.resetPassword', $data, function($message) use ($data)
				{
				  	$sent = $message->to( $data['email'], $data['name'])->subject('Please reset your password.');
				});
		        break;
				
		    case "successResetPassword":
		        Mail::queue('emails.successResetPassword', $data, function($message) use ($data)
				{
				  	$sent = $message->to( $data['email'], $data['name'])->subject('Successfully Reset Password.');
				});
		        break;
				
			default:
				//do nothing
		}
		if( count(Mail::failures()) > 0 ) 
		{
	   		foreach(Mail::failures as $email_address) 
	   		{
	       		Log::error('system is unable to send email to '.$email_address);
	    	}
		} 
		return $sent;
	}
	
	public function accountSave()
	{
		$user = array();
		if(Input::get('password') != '')
		{
			$password = Hash::make(Input::get('password'));
			$user['password'] = $password;
		}
		
		$userFields = array
				(
					'eMail', 'eMail2', 'fName', 'lName', 'telephone', 'contactPreference',
					'designation', 'address1', 'address2','postalCode', 'city',
					'province', 'emailDigest', 'adviceNotification', 'maxRequest', 'myAvatar'
				);
		foreach ($userFields as $userField) 
		{
			//in which input will have value that fields will store in $user
			if(Input::has($userField))
			{
				$user[$userField] = Input::get($userField);
			}
		}
		if(!isset($user['contactPreference']))
		{
			$user['contactPreference'] = 'no';
		}
		if(!isset($user['emailDigest']))
		{
			$user['emailDigest'] = 'no';
		}
		if(!isset($user['adviceNotification']))
		{
			$user['adviceNotification'] = 'no';
		}
		// if(!isset($user['maxRequest']))
		// {
			// $user['maxRequest'] = 0;
		// }
		if(!empty($user))
		{
			$table = 'users';
        	$updated = DB::table($table)->where( 'eMail', Auth::User()->eMail)->where( 'id', Auth::User()->id)->update($user);
			if (isset($user['password'])) 
			{
				Auth::attempt(array('eMail' => $user['eMail'], 'password' => $user['password']));
			}
			return Redirect::to('/account');
		}
		return Redirect::to('/login');
	}

	public static function increaseCredits($userEmailOrId, $type, $incrementBy)
	{
		$user = User::where( $type, $userEmailOrId)->first();
		if($user)
		{
			$user->credits += $incrementBy;
			$user->save();
		}
	}
	public static function sendWelcomeMail($user)
	{
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
	}
	
	public function uploadImage()
	{
		$destinationPath = '';
	    $filename        = '';
	    if (Input::hasFile('image')) 
	    {
	        $file            = Input::file('image');
	        $destinationPath = public_path().Input::get('path');
	        $filename        = time().str_random(6) . '_' . $file->getClientOriginalName();
	        $uploadSuccess   = $file->move($destinationPath, $filename);
			$destinationPath = Input::get('path').$filename;
	    }
		return $destinationPath;
	}
	
	//to save image using ajax
	public function saveFileInDb()
	{
		$destinationPath = '';
	    $filename        = '';
		$name = '';
	    if (Input::hasFile('image')) 
	    {
	        $file            = Input::file('image');
			$name			 = $file->getClientOriginalName();
	        $destinationPath = public_path().Input::get('path');
	        $filename        = time().str_random(6) . '_' . $file->getClientOriginalName();
	        $uploadSuccess   = $file->move($destinationPath, $filename);
			$destinationPath = Input::get('path').$filename;
	    }
		$tableName = 'userfiles';
		$uId = Auth::user()->id;
		$data = array(
				'userId' => $uId,
				'location' => $destinationPath,
				'name' => $name,
				'type' => 'professionalCertificates',
				'created_at'=>date('Y-m-d H:i:s'),
				'updated_at'=> date('Y-m-d H:i:s')
		);
		if($destinationPath && $name)
		{
			DB::table($tableName)->insert($data);
		}
		return $destinationPath;
	}
}