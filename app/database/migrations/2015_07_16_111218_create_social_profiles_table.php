<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSocialProfilesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('socialProfiles', function(Blueprint $table)
		{
		  $table->increments("id");
	      $table->string("email");
	      $table->string("fbId");
	      $table->string("googleId");
	      $table->string("twitterId");
		  $table->string("linkedinId");
	      $table->timestamps();
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		//
		Schema::dropIfExists("socialProfiles");
	}

}
