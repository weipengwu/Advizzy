<?php

class UserController extends BaseController {

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

	protected $user;
	
	public function __construct()
    {
        if(Auth::check()) 
        {
            $this->user = Auth::user();
        }
	}

    public function viewDashboardWithData()
	{
		if ($this->user) 
		{
			//getting all Questions asked by Logged in User
			$myAllQuestion = QuestionController::getMyAllQuestion();
			
			//getting all Questions from Community Zone
			$allCommunityQuestion = QuestionController::getAllCommunityQuestion();
			
			//getting all questions where loggedin user given their advice
			$allAdvicedQuestion = QuestionController::getAllAdvicedQuestion();
			$targets = DB::table('targets')->where('active', 1)->get();
			return View::make('dashboard')->with( 'myAllQuestions', $myAllQuestion)->with( 'allQuestions', $allCommunityQuestion)->with( 'allAdvicedQuestion', $allAdvicedQuestion)->with( 'targets', $targets);
		}
		else 
		{
			return Redirect::to('/login');
		}
	}

	 public function viewNewsfeed()
	{
		if ($this->user) 
		{
			// get recent advice
			// get recent feedback
			$questions = DB::select( DB::raw("SELECT users.uName, users.myAvatar, questions.* FROM questions INNER JOIN users ON users.id = questions.userId WHERE questions.userId != :user AND questions.created_at >= date_sub(curdate(), interval 50 day)ORDER BY questions.created_at DESC LIMIT 10"), array('user' => $this->user->id));

			$responses = DB::select( DB::raw("SELECT users.uName, users.myAvatar, comments.*, questions.question FROM comments INNER JOIN users ON users.id = comments.userId INNER JOIN questions ON questions.id = comments.questionId WHERE comments.userId != :user AND comments.created_at >= date_sub(curdate(), interval 50 day)  ORDER BY comments.created_at DESC LIMIT 10"), array('user' => $this->user->id));

			$users = DB::select( DB::raw("SELECT * FROM users WHERE id != :user AND created_at >= date_sub(curdate(), interval 50 day) ORDER BY created_at DESC LIMIT 10"), array('user' => $this->user->id));

			$all_data = array();

			foreach ($questions as $q)
			{
				$q->type = 'question';
				$all_data[$q->created_at] = $q;

			}

			foreach ($responses as $q)
			{
				$q->type = 'comment';

				if (preg_match('/^.{1,22}\b/s', $q->question, $match))
				{
				    $q->question = $match[0];
				}

				$all_data[$q->created_at] = $q;
			}

			foreach ($users as $q)
			{
				$q->type = 'user';
				$all_data[$q->created_at] = $q;
			}

			ksort($all_data);

			$all_data = array_reverse($all_data);
			
			return View::make('newsfeed')->with( 'data', $all_data)->with('hide_quote', true);
		}
		else 
		{
			return Redirect::to('/login');
		}
	}

	public function recentActivity()
	{
		if ($this->user) 
		{
			$logs = array();
			$activities = DB::table('useractivitylogs')->where('userId', $this->user->id)->orderBy('epochCreatedAt', 'desc')->get();
			foreach ($activities as $k => $activity) 
			{
				$done = FALSE;
				$key = '';
				
				//What activity to be done
				//if asked or updated a question
				if(($activity->type == 'asked') || ($activity->type == 'updated question') || ($activity->type == 'followed question') || ($activity->type == 'unfollowed question'))
				{
					$key = 'recentInquiries';
					$logs[$key][$k]['question'] = Questions::find($activity->typeId);
				}
				
				//if posted or updated a comment
				if(($activity->type == 'commented') || ($activity->type == 'updated comment') || ($activity->type == 'followed comment') || ($activity->type == 'unfollowed comment'))
				{
					$key = 'recentAnswers';
					$logs[$key][$k]['comment'] = Comment::find($activity->typeId);
					$logs[$key][$k]['question'] = Questions::find($logs[$key][$k]['comment']->questionId);
				}

				//if posted or updated a comment
				if(($activity->type == 'liked comment') || ($activity->type == 'liked question'))
				{
					$key = 'recentLikes';
					// $done = TRUE;
				}

				$logs[$key][$k]['user'] = User::find($activity->userId);
				$logs[$key][$k]['type'] = $activity->type;
				
				date_default_timezone_set('GMT');
				$epochCreatedTime = $activity->epochCreatedAt;
				if ($epochCreatedTime)
				{
					$logs[$key][$k]['createdDate'] = gmdate('Y-m-d', $epochCreatedTime);
					$logs[$key][$k]['createdTime'] = gmdate('H:i:s', $epochCreatedTime);
					$seconds = time() - $epochCreatedTime;
					$logs[$key][$k]['day'] = floor($seconds / 86400);
					$logs[$key][$k]['hours'] = floor(($seconds - ($logs[$key][$k]['day'] * 86400)) / 3600);
					$logs[$key][$k]['minutes'] = floor(($seconds - ($logs[$key][$k]['day'] * 86400) - ($logs[$key][$k]['hours'] * 3600))/60);
					$logs[$key][$k]['seconds'] = floor(($seconds - ($logs[$key][$k]['day'] * 86400) - ($logs[$key][$k]['hours'] * 3600) - ($logs[$key][$k]['minutes']*60)));
					if($logs[$key][$k]['day'] >= 1)
					{
						$logs[$key][$k]['ago'] = $logs[$key][$k]['day'].' days ago';
					}
					elseif ($logs[$key][$k]['hours'] >= 1) 
					{
						$logs[$key][$k]['ago'] = $logs[$key][$k]['hours'].' hours ago';
					}
					elseif ($logs[$key][$k]['minutes'] >= 1) 
					{
						$logs[$key][$k]['ago'] = $logs[$key][$k]['minutes'].' minutes ago';
					}
					else 
					{
						$logs[$key][$k]['ago'] = $logs[$key][$k]['seconds'].' seconds ago';
					}
				}
			}
			return View::make('recentActivity')->with('logs', $logs);
		}
		else 
		{
			return Redirect::to('/login');
		}
	}
	
	public static function advanceAccountSettings()
    {
    	if(Input::has('maxRequest'))
		{
			$user['maxRequest'] = Input::get('maxRequest');
		}
		if(!empty($user))
		{
			$table = 'users';
        	$updated = DB::table($table)->where( 'eMail', Auth::User()->eMail)->where( 'id', Auth::User()->id)->update($user);
		}
        return Redirect::to('/advanceAccountSettings');
	}
	
	//function make follow if unfollow and unfollow if follow to the current user for a question
	// and returns the number of current followers of that question and active user is follower or not
	public function addUserAsFollower()
	{
		$ret = FALSE;
		$followTo = Input::get('followTo');
		$followId = Input::get('followId');
		if((!empty($followTo)) && (!empty($followId)))
		{
			//function make follow if unfollow and unfollow if follow to the current user for a question
			$ret = $this->UserAsFollower($this->user->id, $followTo, $followId);
		}
		if ($ret) 
		{
			$ret = array();
			$ret['count'] = DB::table('rules')->where('followTo', $followTo)->where('followId', $followId)->where('permit', TRUE)->count();
			$ret['isUserFollower'] = intval(DB::table('rules')->where('followTo', $followTo)->where('followId', $followId)->where('userId', $this->user->id)->first()->permit);
		}
		return json_encode($ret);
	}
	
	//function make follow if unfollow and unfollow if follow to the current user for a question
	// and return true if Follow turning operation is done successfully
	public static function UserAsFollower($userId, $followTo, $followId)
	{
		$data['userId'] = $userId;
		$data['followTo'] = $followTo;
		$data['followId'] = $followId;
		$exist = DB::table('rules')->where($data)->first();
		$data['epochUpdatedAt'] = time();
		$ruleId = FALSE;
		$typeOfLog = 'unfollowed '.$followTo;
		if ($exist)
		{
			$data['permit'] = !($exist->permit);
			$ruleId = DB::table('rules')->where('id', $exist->id)->update($data);
		}
		else 
		{
			$data['permit'] = TRUE;
			$data['epochCreatedAt'] = time();
			$ruleId = DB::table('rules')->insertGetId($data);
		}
		if ($data['permit']) 
		{
			$typeOfLog = 'followed '.$followTo;
		}
		
		//getting followers of the question to notify them
		// $followers = DB::table('rules')->where('userId', '!=' , Auth::User()->id)->where('followTo', $followTo)->where('followId', $followId)->where('permit', TRUE)->get();
		
		generateUserLog($userId, $followId, $typeOfLog);
		if($ruleId)
		{
			return TRUE;
		}
		return FALSE;
	}
	
	//ajax call and get the current notifications related to active user
	public function getNotifications()
	{
		$retVal = FALSE;
		$afterThisId = Input::get('afterThisId');
		if ($this->user) 
		{
			$retVal = array();
			$notifications = DB::table('usernotifications')->where('id', '>', $afterThisId)->where('notifyToUser', $this->user->id)->where('unRead', TRUE)->orderBy('epochCreatedAt', 'desc')->get();
			
			foreach ($notifications as $key => $notification) 
			{
				//What activity to be done
				//if asked or updated a question
				if(($notification->type == 'asked') || ($notification->type == 'updated question') || ($notification->type == 'followed question') || ($notification->type == 'unfollowed question'))
				{
					$question = Questions::find($notification->typeId);
					$retVal[$key]['question']['id'] = $question->id;
					$retVal[$key]['question']['content'] = $question->question;
					$retVal[$key]['url'] = '"/questions/'.$question->id.'"';
				}
				
				//if posted or updated a comment
				if(($notification->type == 'commented') || ($notification->type == 'updated comment') || ($notification->type == 'followed comment') || ($notification->type == 'unfollowed comment'))
				{
					$comment = Comment::find($notification->typeId);
					$retVal[$key]['comment']['id'] = $comment->id;
					$retVal[$key]['comment']['content'] = $comment->comment;
					$question = Questions::find($comment->questionId);
					$retVal[$key]['question']['id'] = $question->id;
					$retVal[$key]['question']['content'] = $question->question;
					$retVal[$key]['url'] = '"/questions/'.$question->id.'#'.$comment->id.'"';
				}

				//if posted or updated a comment
				if(($notification->type == 'liked comment') || ($notification->type == 'liked question'))
				{
					
				}

				$user = User::find($notification->userId);
				$retVal[$key]['user']['id'] = $user->id;
				$retVal[$key]['user']['image'] = $user->myAvatar;
				$retVal[$key]['user']['name'] = $user->fName.' '.$user->lName;
				$retVal[$key]['user']['content'] = $user->question;
				$retVal[$key]['type'] = $notification->type;
				$retVal[$key]['id'] = $notification->id;
				
			}
		}
		return json_encode($retVal);
	}

	//ajax call and get the current notifications related to active user
	public function readNotification()
	{
		$retVal = FALSE;
		$notificationId = Input::get('notificationId');
		if ($this->user) 
		{
			$retVal = array();
			if ($notificationId == 'all') 
			{
				$retVal = DB::table('usernotifications')->where('unRead', TRUE)->where('notifyToUser', $this->user->id)->update(array('unRead' => FALSE));
				$retVal = 'all';
			}
			else 
			{
				$retVal = DB::table('usernotifications')->where('id', $notificationId)->where('notifyToUser', $this->user->id)->update(array('unRead' => FALSE));
				$retVal = $notificationId;
			}
		}
		return json_encode($retVal);
	}
}