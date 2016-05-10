<?php

class CommentController extends BaseController 
{
	public static function postComment($questionId)
	{
		if(Auth::check())
		{
			$comment = array();
			$table = 'comments';
			
			//Condition to check that posted Comment has value or not
			if(Input::get('on_your_mind_textarea') || Input::get('on_your_mind_edit_textarea'))
			{
				$comment['questionId'] = $questionId;
				$comment['userId'] = Auth::user()->id;
				if(Input::get('on_your_mind_textarea'))
				{
					$comment['comment'] = Input::get('on_your_mind_textarea');
					$comment['repliesCount'] = 0;
					$comment['likesCount'] = 0;
					$comment['epochCreatedAt'] = time();
					$comment['epochUpdatedAt'] = time();
				}
				if(Input::get('on_your_mind_edit_textarea'))
				{
					$comment['comment'] = Input::get('on_your_mind_edit_textarea');
					$comment['epochUpdatedAt'] = time();
				}
				
				// if Comment posted with edit request then check for Comment id and updating Comment
				if(Input::get('on_your_mind_edit_textarea'))
				{
					$commentId = Input::get('editCommentId');
					$commentsData = DB::table($table)->where( 'hashId', $commentId)->where( 'userId', Auth::User()->id)->get();
					$commentId = FALSE;
					
					//loop will execute only once
					//if two Comments will have same hashid than problem will arise
					foreach ($commentsData as $key => $commentData) 
					{
						DB::table($table)->where( 'id', $commentData->id)->where( 'userId', Auth::User()->id)->update($comment);
						$commentId = $commentData->id;
						
						//getting followers of the question to notify them
						$followers = DB::table('rules')->where('userId', '!=' , Auth::User()->id)->where('followTo', 'comment')->where('followId', $commentId)->where('permit', TRUE)->get();
						generateUserLog(Auth::User()->id, $commentId, 'updated comment', $followers);
					}
				}
				// inserting new Comment data in database.
				else 
				{
					$commentId = DB::table($table)->insertGetId($comment);
					$c = Comment::find($commentId);
					$c->hashId = Hash::make($commentId + 100 * 5);
					$c->save();
					
					//increasing comment counts
					$q = Questions::find($questionId);
					$q->commentsCount++;
					$q->save();
					
					//getting followers of the question to notify them
					$followers = DB::table('rules')->where('userId', '!=' , Auth::User()->id)->where('followTo', 'question')->where('followId', $questionId)->where('permit', TRUE)->get();
					
					//generating log and notifications
					//Notification about this comment will go to followers of this question
					generateUserLog(Auth::User()->id, $commentId, 'commented', $followers);
					
					//adding user as follower
					UserController::UserAsFollower(Auth::User()->id, 'comment', $commentId);
				}
			}
		}
		else 
		{
			return Redirect::to('/login');
		}
	}

}
