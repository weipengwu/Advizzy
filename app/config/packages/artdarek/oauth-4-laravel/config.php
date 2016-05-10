<?php 

return array( 
	
	/*
	|--------------------------------------------------------------------------
	| oAuth Config
	|--------------------------------------------------------------------------
	*/

	/**
	 * Storage
	 */
	'storage' => 'Session', 

	/**
	 * Consumers
	 */
	'consumers' => array(

		/**
		 * Facebook
		 */
		'Facebook' => array(
		    'client_id'     => '752338541545168',
		    'client_secret' => 'b619709ac4be89a0ab37a21f9acf44ab',
		    'scope'         => array('email', 'user_status', 'user_photos'),
		),
		    
		/**
		 * Google
		 */	
		'Google' => array(
			'client_id'     => '640715654414-f9rmsl6okqi8hr99onunjrsm4p3jjkfh.apps.googleusercontent.com',
			'client_secret' => 'GgzEBTSYuUCREqexiMJax-SW',
			'scope'         => array('userinfo_email', 'userinfo_profile'),
		), 	
			
		/**
		 * Twitter
		 */
		'Twitter' => array(
		    'client_id'     => 'xrDl000lMN8QcLniwVTFp0jKB',
		    'client_secret' => 'dGogJHmZ2ejfO0hf8vy2UZouRN61Z44LaPpMqElmlUn1PzleqP',
		    // No scope - oauth1 doesn't need scope
		), 
		
		/**
		 * Linkedin
		 */
		'Linkedin' => array(
		    'client_id'     => '75esk9fu56vxus',
		    'client_secret' => 'jdoQeyOhiABH02A1',
		), 

	)

);