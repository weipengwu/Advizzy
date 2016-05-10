<?php
    function encodeThis($value)
	{
		return base64_encode($value);
	}
	
	function decodeThis($value)
	{
		return base64_decode($value);
	}

	function getQuote($quotes) {
		// This does not account for timezone. Based off GMT.
		$secondsInADay = 1 * 24 * 60 * 60;
		$secondsSinceEpoch = time();
		$daysSinceEpoch = floor($secondsSinceEpoch / $secondsInADay);
		$quoteIndex = $daysSinceEpoch % count($quotes);
		return $quotes[$quoteIndex];
	}

	function generateUserLog($userId, $typeId, $type, $followers=null)
	{
		$log = array();
		$log['userId'] = $userId;
		$log['typeId'] = $typeId;
		$log['type'] = $type;
		$existLog = DB::table('useractivitylogs')->where($log)->first();
		$log['epochCreatedAt'] = time();
		if ($existLog) 
		{
			DB::table('useractivitylogs')->where('id', $existLog->id)->update($log);
		}
		else 
		{
			DB::table('useractivitylogs')->insert($log);
		}
		$log['unRead'] = TRUE;
		if ($followers) 
		{
			foreach ($followers as $follower) 
			{
				$log['notifyToUser'] = $follower->userId;
				DB::table('usernotifications')->insert($log);
			}
		}
	}
	
	function generateUserNotification($userId, $typeId, $type, $did)
	{
		$data['followTo'] = $type;
		$data['followId'] = $typeId;
		$followers = DB::table('rules')->where($data)->get();
		$notification['userId'] = $userId;
		$notification['type'] = $did;
		if ($followers) 
		{
			foreach ($followers as $follower) 
			{
				$notification['notifyToUser'] = $follower->userId;
				DB::table('usernotifications')->insert($data);
			}
		}
	}
?>