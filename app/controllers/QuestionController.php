<?php

class QuestionController extends BaseController 
{
	public function postQuestion()
	{
		if(Auth::check())
		{
			$question = array();
			$table = 'questions';
			$questionId = null;
			
			//Condition to check that posted Question has value or not
			if(Input::get('on_your_mind_textarea') || Input::get('on_your_mind_edit_textarea'))
			{
				$question['userId'] = Auth::User()->id;
				
				// if question posted with edit request then check for question id and updating question
				if(Input::get('on_your_mind_edit_textarea'))
				{
					$question['question'] = Input::get('on_your_mind_edit_textarea');
					$question['epochUpdatedAt'] = time();
					$questionId = Input::get('editQuestionId');
					$questionsData = DB::table($table)->where( 'hashId', $questionId)->where( 'userId', Auth::User()->id)->get();
					$questionId = FALSE;
					
					//loop will execute only once
					//if two questions will have same hashid than problem will arise
					foreach ($questionsData as $key => $questionData) 
					{
						DB::table($table)->where( 'id', $questionData->id)->where( 'userId', Auth::User()->id)->update($question);
						$questionId = $questionData->id;
						
						//getting followers of the question to notify them
						$followers = DB::table('rules')->where('userId', '!=' , Auth::User()->id)->where('followTo', 'question')->where('followId', $questionId)->where('permit', TRUE)->get();
						generateUserLog(Auth::User()->id, $questionId, 'updated question', $followers);
					}
				}
				// inserting new question data in database.
				else 
				{
					$question['question'] = Input::get('on_your_mind_textarea');
					$question['commentsCount'] = 0;
					$question['likesCount'] = 0;
					$question['epochCreatedAt'] = time();
					$question['epochUpdatedAt'] = time();
					//User's influence to find his community
					$myInfluence = DB::table('influence')->where('userId', Auth::User()->id)->first();
					if ($myInfluence) 
					{
						$question['userIndustryId'] = $myInfluence->industry;
						$question['userProfessionId'] = $myInfluence->profession;
						$question['userContinentId'] = $myInfluence->continent;
					}
					$questionId = DB::table($table)->insertGetId($question);
					$q = Questions::where('id', $questionId)->first();
					$q->hashId = Hash::make($questionId + 100 * 5);
					$q->save();
					generateUserLog(Auth::User()->id, $questionId, 'asked');
					UserController::UserAsFollower(Auth::User()->id, 'question', $questionId);
				}
				
				//code to set target values into database
				// if($questionId)
				// {
					// // getting targets for questions
					// $targets = explode(',', Input::get('targets'));
// 					
					// // getting existed targets and changing them
					// $existTargets = DB::table('questionmeta')->select('id')->where('metaName', 'targets')->where('questionId', $questionId)->get();
					// for ($i = 0; $i < 2; $i++)
					// {
						// $questionMeta = array();
						// $questionMeta['questionId'] = $questionId;
// 						
						// // 'targets' is a slug For Targets
						// $questionMeta['metaName'] = 'targets';
						// $questionMeta['metaValue'] = (isset($targets[$i])) ? $targets[$i] : '';
						// if(isset($existTargets[$i]->id))
						// {
							// $updated = DB::table('questionmeta')->where( 'id', $existTargets[$i]->id)->update($questionMeta);
						// }
						// else 
						// {
							// $inserted = DB::table('questionmeta')->insert($questionMeta);
						// }
					// }
				// }
			}
			return Redirect::to('/profile');
		}
		else 
		{
			return Redirect::to('/login');
		}
	}

	// Function returns all posted Questions of loggedin user
	public static function getMyAllQuestion()
	{
		$questions = array();
		$myAllQuestions = DB::table('questions')->where('userId', Auth::User()->id)->orderBy('epochCreatedAt', 'desc')->get();
		foreach ($myAllQuestions as $key => $question) 
		{
			$questions[$key]['id'] = $question->hashId;
			$questions[$key]['linkId'] = $question->id;
			$questions[$key]['question'] = $question->question;
			$questions[$key]['commentsCount'] = $question->commentsCount;
			$questions[$key]['likesCount'] = $question->likesCount;
			$commentsOnQuestion = DB::table('comments')->where('questionId', $question->id)->orderBy('epochCreatedAt', 'desc')->get();
			$questions[$key]['comments'] = array();
			foreach ($commentsOnQuestion as $commentkey => $comment)
			{
				$questions[$key]['comments'][$commentkey]['id'] = $comment->id;
				$questions[$key]['comments'][$commentkey]['comment'] = $comment->comment;
				$questions[$key]['comments'][$commentkey]['userId'] = $comment->userId;
				$user = User::find($comment->userId);
				$questions[$key]['comments'][$commentkey]['userName'] = $user->designation.' '.$user->uName;
				$questions[$key]['comments'][$commentkey]['userImage'] = $user->myAvatar;
				$questions[$key]['comments'][$commentkey]['repliesCount'] = $comment->repliesCount;
				$questions[$key]['comments'][$commentkey]['likesCount'] = $comment->likesCount;
				$epochCreatedTime = $comment->epochCreatedAt;
				$date = date('M d Y', $epochCreatedTime);
				$questions[$key]['comments'][$commentkey]['created_at']['date'] = ( $date == date('M d Y', time())) ? 'today' : $date;
				$questions[$key]['comments'][$commentkey]['created_at']['time'] = date('H:i A', $epochCreatedTime);
			}
			
			//breaking the EPOCH time into time and date
			date_default_timezone_set('GMT');
			$epochCreatedTime = $question->epochCreatedAt;
			$date = date('M d Y', $epochCreatedTime);
			$questions[$key]['created_at']['date'] = ( $date == date('M d Y', time())) ? 'today' : $date;
			$questions[$key]['created_at']['time'] = date('H:i:s', $epochCreatedTime);
			
		}
		return $questions;
	}

	// Function returns all posted Questions 
	public static function getAllCommunityQuestion()
	{
		$questions = array();
		
		//User's influence to find his community
		$myInfluence = DB::table('influence')->where('userId', Auth::user()->id)->first();
		$myCommunity = null;
		if ($myInfluence) 
		{
			$myInfluenceLevel = $myInfluence->influenceLevel;
			if($myInfluenceLevel)
			{
				//if user influence level is 3 or less than 3 then user is able to show and give advice
				//to their profession domain
				if ($myInfluenceLevel <= 3) 
				{
					$myCommunity['userProfessionId'] = $myInfluence->profession;
				}
				
				//if user influence level is 2 or less than 2 then user is able to show and give advice
				//to their industry
				if ($myInfluenceLevel <= 2) 
				{
					$myCommunity['userIndustryId'] = $myInfluence->industry;
				}
				
				//if user influence level is 1 or less than 1 then user is able to show and give advice
				//to their continent 
				if ($myInfluenceLevel <= 1) 
				{
					$myCommunity['userContinentId'] = $myInfluence->continent;
				}
			}
		}
		$allQuestions = DB::table('questions')->where('userId', '!=', Auth::user()->id)->orderBy('epochCreatedAt', 'desc')->get();
		if ($myCommunity) 
		{
			$isQuestions = DB::table('questions')->where('userId', '!=', Auth::user()->id)->where($myCommunity)->orderBy('epochCreatedAt', 'desc')->get();
			if($isQuestions)
			{
				$allQuestions = $isQuestions;
			}
		}
		foreach ($allQuestions as $key => $question) 
		{
			$questions[$key]['id'] = $question->id;
			$questions[$key]['linkId'] = $question->id;
			$questions[$key]['question'] = $question->question;
			$questions[$key]['commentsCount'] = $question->commentsCount;
			$questions[$key]['likesCount'] = $question->likesCount;
			$commentsOnQuestion = DB::table('comments')->where('questionId', $question->id)->orderBy('epochCreatedAt', 'desc')->get();
			$questions[$key]['comments'] = array();
			foreach ($commentsOnQuestion as $commentkey => $comment)
			{
				$questions[$key]['comments'][$commentkey]['id'] = $comment->id;
				$questions[$key]['comments'][$commentkey]['comment'] = $comment->comment;
				$questions[$key]['comments'][$commentkey]['userId'] = $comment->userId;
				$user = User::find($comment->userId);
				$questions[$key]['comments'][$commentkey]['userName'] = $user->designation.' '.$user->uName;
				$questions[$key]['comments'][$commentkey]['userImage'] = $user->myAvatar;
				$questions[$key]['comments'][$commentkey]['repliesCount'] = $comment->repliesCount;
				$questions[$key]['comments'][$commentkey]['likesCount'] = $comment->likesCount;
				$epochCreatedTime = $comment->epochCreatedAt;
				$date = date('M d Y', $epochCreatedTime);
				$questions[$key]['comments'][$commentkey]['created_at']['date'] = ( $date == date('M d Y', time())) ? 'today' : $date;
				$questions[$key]['comments'][$commentkey]['created_at']['time'] = date('H:i A', $epochCreatedTime);
			}
			
			//breaking the EPOCH time into time and date
			date_default_timezone_set('GMT');
			$epochCreatedTime = $question->epochCreatedAt;
			$date = date('M d Y', $epochCreatedTime);
			$questions[$key]['created_at']['date'] = ( $date == date('M d Y', time())) ? 'today' : $date;
			$questions[$key]['created_at']['time'] = date('H:i:s', $epochCreatedTime);
		}
		return $questions;
	}

	// Function returns all Questions where logged in user have given advice
	public static function getAllAdvicedQuestion()
	{
		$allAdvicedQuestion = array();
		$allAdvices = DB::table('comments')->where('userId', Auth::user()->id)->orderBy('epochCreatedAt', 'desc')->get();
		$count = 0;
		foreach ($allAdvices as $key => $advice) 
		{
			if(!isset($allAdvicedQuestion[$advice->questionId]))
			{
				$question = DB::table('questions')->where('id', $advice->questionId)->orderBy('epochCreatedAt', 'desc')->first();
				if (!$question || ($question->userId == $advice->userId)) 
				{
					continue;
				}
				$user = User::find($question->userId);
				if($user)
				{
					$allAdvicedQuestion[$advice->questionId]['by'] = $user->fName.' '.$user->lName;
				}
				$allAdvicedQuestion[$advice->questionId]['question'] = $question->question;
				$allAdvicedQuestion[$advice->questionId]['questionCommentsCount'] = $question->commentsCount;
				$allAdvicedQuestion[$advice->questionId]['questionLikesCount'] = $question->likesCount;
			}
			$count++;
			$allAdvicedQuestion[$advice->questionId]['comment'][$advice->id]['comment'] = $advice->comment;
			$allAdvicedQuestion[$advice->questionId]['comment'][$advice->id]['commentLikesCount'] = $advice->likesCount;
			
			//breaking the EPOCH time into time and date
			date_default_timezone_set('GMT');
			$epochCreatedTime = $advice->epochCreatedAt;
			$date = date('M d Y', $epochCreatedTime);
			$allAdvicedQuestion[$advice->questionId]['comment'][$advice->id]['created_at']['date'] = ( $date == date('M d Y', time())) ? 'today' : $date;
			$allAdvicedQuestion[$advice->questionId]['comment'][$advice->id]['created_at']['time'] = date('H:i:s', $epochCreatedTime);
		}
		$allAdvicedQuestion['data'] = $allAdvicedQuestion;
		$allAdvicedQuestion['count'] = $count;
		return $allAdvicedQuestion;
	}

	// Function returns Question details
	public static function getQuestionDetails($id)
	{
		$questions = array();
		$question = Questions::where('id', $id)->first();
		if($question)
		{
			$questions['userId'] = $question->userId;
			$useR = User::find($question->userId);
			$questions['userName'] = $useR->uName;
			$questions['userN'] = $useR->fName.' '.$useR->lName;
			$questions['userImage'] = $useR->myAvatar;
			$questions['id'] = $question->id;
			$questions['hashId'] = $question->hashId;
			$questions['followersCount'] = DB::table('rules')->where('followTo', 'question')->where('followId', $id)->where('permit', TRUE)->count();
			$questions['isUserFollowThisQuestion'] = FALSE;
			if (Auth::check()) 
			{
				$follower = DB::table('rules')->where('followTo', 'question')->where('followId', $id)->where('userId', Auth::user()->id)->first();
				if ($follower) 
				{
					$questions['isUserFollowThisQuestion'] = $follower->permit;
				}
			}
			$questions['question'] = $question->question;
			$questions['commentsCount'] = $question->commentsCount;
			$questions['likesCount'] = $question->likesCount;
			$commentsOnQuestion = DB::table('comments')->where('questionId', $id)->orderBy('epochCreatedAt', 'desc')->get();
			$questions['comments'] = array();
			foreach ($commentsOnQuestion as $commentkey => $comment)
			{
				$questions['comments'][$commentkey]['id'] = $comment->id;
				$questions['comments'][$commentkey]['comment'] = $comment->comment;
				$questions['comments'][$commentkey]['userId'] = $comment->userId;
				$user = User::find($comment->userId);
				$questions['comments'][$commentkey]['userName'] = $user->designation.' '.$user->uName;
				$questions['comments'][$commentkey]['userN'] = $user->fName.' '.$user->lName;
				$questions['comments'][$commentkey]['userImage'] = $user->myAvatar;
				$questions['comments'][$commentkey]['repliesCount'] = $comment->repliesCount;
				$questions['comments'][$commentkey]['likesCount'] = $comment->likesCount;				
				date_default_timezone_set('GMT');
				$epochCreatedTime = $comment->epochCreatedAt;
				$date = gmdate('M d Y', $epochCreatedTime);
				$questions['comments'][$commentkey]['created_at']['date'] = ( $date == gmdate('M d Y', time())) ? 'today' : $date;
				$questions['comments'][$commentkey]['created_at']['time'] = gmdate('H:i A', $epochCreatedTime);
			}
			
			//breaking the timestamp into time and date
			$epochCreatedTime = $question->epochCreatedAt;
			$date = gmdate('M d Y', $epochCreatedTime);
			$questions['created_at']['date'] = ( $date == gmdate('M d Y', time())) ? 'today' : $date;
			$questions['created_at']['time'] = gmdate('H:i:s', $epochCreatedTime);
			
			//getting targets of the question
			// $existTargets = DB::table('questionmeta')->select('metaValue')->where('metaName', 'targets')->where('questionId', $id)->get();
			// $questions['targets'] = $existTargets;
			return $questions;
		}
	}
	
	public static function getQuestionDetailsById()
	{
		$questionData = Questions::where('hashId', Input::get("questionId"))->where( 'userId', Auth::User()->id)->where( 'commentsCount', 0)->first();
		if($questionData)
		{
			$existTargets = DB::table('questionmeta')->select('metaValue')->where('metaName', 'targets')->where('questionId', $questionData->id)->get();
			$questionData['targets'] = $existTargets;
		}
		else 
		{
			$questionData = Questions::where('hashId', Input::get("questionId"))->first();
			if($questionData)
			{
				if($questionData->userId != Auth::User()->id)
				{
					$questionData = array();
					$questionData['msg'] = 'You are unable to edit this Inquiry.';
				}
				elseif(!$questionData->commentCount)
				{
					$questionData = array();
					$questionData['msg'] = 'You are unable to edit because someone has given advice to your Inquiry.';
				}
			}
			else 
			{
				$questionData = array();
				$questionData['msg'] = 'Question doesn\'t exist.';
			}
			
		}
		return json_encode($questionData);
	}
	
	//return true if you are able to comment for passed questionId
	public static function canIComment()
	{
		$youAreAble = 'You are unable to give advice here.';
		$questionData = Questions::where('id', Input::get("questionId"))->first();
		if($questionData && ($questionData->userId != Auth::user()->id))
		{
			$youAreAble = $questionData->id;
		}
		return json_encode($youAreAble);
	}
}
