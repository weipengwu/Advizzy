@include('templates.header')
@if(Auth::User()->active)
<div class="large-12 columns maincontent">
	<!-- USER STATS BAR -->
	<div class="row">
		<div class="user_stats_box">

			<div class="">

				<div class="avatar_box">

					<img src="{{Auth::User()->myAvatar}}" class="user_profile_avatar">

				</div>

				<div class="user_full_name_box">
					<h4 class="user_full_name">{{Auth::User()->fName." ".Auth::User()->lName}}</h4>
				</div>

				<div class="three_notifications_box">

					<div class="">
						<div class="one_notification_box">
							<p id="questions_number" class="notification_single_number">
								<b>{{ Auth::User()->get_inquiries_count() }}</b>
							</p>
							<p class="notification_single_stat center">
								Questions
							</p>
						</div>
					</div>

					<div class="">
						<p id="advice_number" class="notification_single_number">
							<b>{{ Auth::User()->get_advice_count() }}</b>
						</p>
						<p class="notification_single_stat">
							Advice
						</p>
					</div>
					<div class="">
						<p id="likes_number" class="notification_single_number">
							<b>5</b>
						</p>
						<p class="notification_single_stat">
							Likes
						</p>
					</div>
				</div>

			</div>
		</div>

		<div class="share_opinion_wrapper">
			<!-- Share Opinion Wrapper -->

			<form action="postQuestion" method="post">
				<div class="row">
					<div class="">
						<h3 class="advizzy_purple_label">What's on your mind, {{ Auth::User()->fName }}?</h3>
					</div>
					<div class="">
						<!-- <form class="" action="postQuestion" method="post"> -->
							<textarea name="on_your_mind_textarea" id="on_your_mind_textarea" class="advizzy_textarea" maxlength="250" rows="5"></textarea>
							<div class="textarea_panel">
								<div class="inner_panel_box">
									<p class="characters_remaining_label" id="on_your_mind_characters_remaining_label">
										<span id="remainingCharacters">250</span>/250 Characters Remaining
									</p>
								</div>
								<input type="submit" class="button" id="on_your_mind_submit" value="Post" />
								<a class="examplequestions" href="#examplequestions">examples</a>
							</div>
						<!-- </form> -->
					</div>
					<hr class="customHR" />
				</div>

				<!-- Choose Demographic Bar -->
				<!-- <div class="row">
					<div class="large-3 columns">
						<h3 class="advizzy_purple_label">Select a profile demographic to get the best input from others.</h3>
					</div>
					<div class="large-9 columns">
						<input type="hidden" id="targets" name="targets" />
						<ul class="large-block-grid-4">
							@foreach($targets as $target)
							<li>
								<button type="button" class="custom_white_button dark_text targetsForQuestion inactiveTarget" value="{{$target->id}}" style="background: white;" id="target{{$target->id}}">
									{{$target->name}} <i class="fa fa-plus green_text"></i>
								</button>
							</li>
							@endforeach
						</ul>
					</div>
					<hr class="customHR">
					<div class="large-12 columns">
						<input type="submit" class="button space_left right submitQuestion" id="submitQuestion" value="Done" />
						<input type="submit" class="button custom_white_button right space_left" value="Cancel" />
					</div>
				</div> -->
				<!-- END OF Choose Demographic Bar -->
			</form>

		</div> <!-- END of Share Opinion Wrapper -->
	</div>
</div>
<!-- END of USER STATS BAR -->


<div class="large-12 columns inquiries_advice_wrapper">
	<!-- Inquiries / Advice Wrapper ((HUGE chunk of html in this div))-->
	<div class="row">
		<div class="inquiries_advice_box">
			<!--
			NOTES on using these TABS:

			This section is another FOUNDATION function.

			In the <ul> element we create list items which become clickable TABS.

			In the TABS-CONTENT section beneath the <ul>, there are <div> elements with IDs which correlate
			with the clickable <li> TABS in the <ul>... so when you click on one of the <li> TABS, it displays
			the content contained in the corresponding <div> element.
			(the a href="" value in the <li> TAB must match the id of the <div> whose content you want to show)

			In the each section I created yet another tab section, as the PSD specified.
			That tab section has a number of entries which resemble article posts (or some user-generated post).
			You probably only need one, and you'll dynamically generate multiples based on the template for one.
			I put three in as place-holders.

			I apologize for the TONNES of repeated HTML here that follows below, but without it I couldn't demonstrate
			the functionality.

			You'll want to delete the repetition and probably use a for-loop (or something)

			-->

			<ul class="tabs bg_off_white" data-tab>

				<li class="tab-title active">
					<a href="#my_inquiries" class="center wide"> My Inquiries <span class="fa-stack fa-lg tab_numbers"> <i class="fa fa-circle fa-stack-2x green_text"></i> <i class="fa fa-stack-1x white_text" id="number_of_inquiries">{{count($myAllQuestions)}}</i> </span> </a>
				</li>

				<li class="tab-title">
					<a href="#community_inquiries" class="center no_marg_right no_marg_left wide no_pad_left no_pad_right"> Community Inquiries <span class="fa-stack fa-lg tab_numbers"> <i class="fa fa-circle fa-stack-2x green_text"></i> <i class="fa fa-stack-1x white_text" id="number_of_community_inquiries">{{count($allQuestions)}}</i> </span> </a>
				</li>

				<li class="tab-title">
					<a href="#advice" class="center wide"> Advice Sent <span class="fa-stack fa-lg tab_numbers"> <i class="fa fa-circle fa-stack-2x green_text"></i> <i class="fa fa-stack-1x white_text" id="number_of_advice">{{$allAdvicedQuestion['count']}}</i> </span> </a>
				</li>

			</ul>

			<div class="tabs-content">
				
				@include('dashboard_myinquiries')
				@include('dashboard_communityinquiries')
				@include('dashboard_advice')

			</div>	
		</div>
	</div>

	<div class="row">

		<div class="load_more_box">
			<a href=""> <h5 class="shaded_green_text">Load More</h5> <span class="fa-stack fa-lg"> <i class="fa fa-long-arrow-down fa-stack-1x shaded_green_text"></i> <i class="fa fa-circle-thin fa-stack-2x"></i> </span> </a>
		</div>

	</div>

</div><!-- END OF Inquiries / Advice Wrapper -->

<div class="large-12 columns refer_friend_wrapper">
	<div class="row">

		<div class="large-8 columns">
			<h2>Good Advice Just Got Better</h2>
			<h4>Refer a friend and receive 15 professional Advice credits.</h4>
		</div>

		<div class="large-4 columns">
			<button class="custom_white_button round">
				<h5 class="green_text">REFER A FRIEND</h5>
			</button>
		</div>

	</div>
</div><!-- END OF refer_friend_wrapper -->


<!-- model and popups -->
<div id="edit_inquiry_modal" class="reveal-modal center" data-reveal aria-labelledby="modalTitle" aria-hidden="true" role="dialog">
	<form action="postQuestion" method="post">
		<input type="hidden" id="editQuestionId" name="editQuestionId" />
		<h2 id="modalTitle" class="green_text space_bottom">Edit Inquiry.</h2>
		<textarea name="on_your_mind_edit_textarea" id="on_your_mind_edit_textarea" class="advizzy_textarea space_bottom" maxlength="250" rows="5" placeholder="What career path should I take?"></textarea>
		<div class="large-12 columns space_left space_right space_top space_bottom">
	
			<button type="button" class="custom_white_button space_bottom close-reveal-modal" >
				CANCEL
			</button>
			<input type="submit" id="editInquirySubmit" value="POST" class="button space_bottom"/>
		</div>
		<!-- <input type="hidden" id="targetsEdit" name="targets" />
		<div class="large-12 columns space_left space_right space_top space_bottom">
			<ul class="large-block-grid-3">
				@foreach($targets as $target)
				<li>
					<button type="button" class="custom_white_button dark_text targetsForEditQuestion inactiveEditTarget" style="background: white;" value="{{$target->id}}"  id="targetEdit{{$target->id}}">
						{{$target->name}} <i class="fa fa-plus green_text"></i>
					</button>
				</li>
				@endforeach
			</ul>
		</div>
		<button type="button" class="custom_white_button space_bottom">
			SKIP
		</button>
		<input type="submit" value="DONE" class="button space_bottom"/> -->
	</form>
</div>

<!-- dialog to post comment -->
<div id="post_comment_modal" class="reveal-modal center" data-reveal aria-labelledby="modalTitle" aria-hidden="true" role="dialog">
	<form action="/postComment" method="post">
		<input type="hidden" id="questionIdForComment" name="questionIdForComment" />
		<h2 id="modalTitle" class="green_text space_bottom">Post a Reply</h2>
		<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nulla tincidunt diam eu mauris. Mauris vehicula mollis lacus. Phasellus eleifend tincidunt nulla. Pellentesque eget felis. Donec tempor tincidunt diam. Nam ipsum tortor.</p>
		<textarea name="on_your_mind_textarea" id="on_your_mind_textarea" class="advizzy_textarea space_bottom postCommentTextArea" maxlength="250" rows="5" placeholder="Privide an answer in 200 characters or fewer"></textarea>
		<p class="undertextarea">Users who use profanity will have their account reviewed and potentially have their account suspended and even deleted if they don't comply</p>
		<div class="buttonswrap">
			<button type="button" class="custom_white_button close-reveal-modal">
				CANCEL
			</button>
			<input type="submit" value="POST" id="postCommentSubmit" class="button space_bottom"/>

		</div>
	</form>
</div>


<!-- dialog to block -->
<div id="ignore_person_modal" class="reveal-modal center" data-reveal aria-labelledby="modalTitle" aria-hidden="true" role="dialog">
	<form action="/blockUser" method="post">
		<img class="center" src="../img/warning.png">
		<p>Are you sure you want to block this person?</p>
		<textarea name="on_your_mind_textarea" id="on_your_mind_textarea" class="advizzy_textarea space_bottom postCommentTextArea" maxlength="250" rows="5" placeholder="Privide an answer in 200 characters or fewer"></textarea>
		<p class="undertextarea">Users who use profanity will have their account reviewed and potentially have their account suspended and even deleted if they don't comply</p>
		<div class="buttonswrap">
			<button type="button" class="custom_white_button close-reveal-modal">
				CANCEL
			</button>
			<button type="button" class="button space_bottom">
				YES
			</button>
			<input type="submit" value="POST" id="postCommentSubmit" class="button space_bottom"/>

		</div>
	</form>
</div>
<style type="text/css">
	
</style>
@endif
@include('templates.footer')