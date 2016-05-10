<div class="content main_content" id="community_inquiries">
	<!-- sub-tab section -->
	<ul class="tabs sub-tabs" data-tab>
		<li class="tab-title active sub_tab">
			<a href="#my_inquiries_all_advice">All Advice Requests</a>
		</li>
		<li class="tab-title sub_tab">
			<a href="#my_inquiries_answered">Answered</a>
		</li>
		<li class="tab-title sub_tab">
			<a href="#my_inquiries_unanswered">Unanswered</a>
		</li>
	</ul>

	<div class="tabs-content">
		<!-- NOTE: This is ONE of the INNER contents-tabs -->
		<div class="content active" id="my_inquiries_all_advice">
			@if(isset($allQuestions) && !empty($allQuestions))
			@foreach ($allQuestions as $key => $question)
			<div>
			<div class="advice_post_box">

				<div class="">
					<h6 class="advice_post_date"> {{$question['created_at']['date']}} <span class="new_button">NEW</span></h6>
					<p class="advice_post_text">
						{{$question['question']}}
					</p>
				</div>

				<div class="comment_icon_box">
					<div class="comment_icon_inner_box_left reply center">
						<a href="#" class="postComment" data-reveal-id="post_comment_modal" value="{{$question['id']}}" id="{{$question['id']}}">Reply</a>
					</div>
					<div class="comment_icon_inner_box_right justify">
						<a href="#" class="showComments" value="{{$key}}">{{$question['commentsCount']}}</a>
					</div>
				</div>

			</div>

			<div id="comment_drop_{{$key}}" class="advice-comments-wrap">
				@if(isset($question['comments']) && !empty($question['comments']))
				@foreach ($question['comments'] as $comment)
					<div class="comment-wrap">
						<div class="comment-avatar-wrap">
							<a href=""><img src="{{$comment['userImage']}}" /></a>
						</div>
						<div class="comment-text-wrap">
							<h6 class="dark_text">Posted on {{$comment['created_at']['date']}} at {{$comment['created_at']['time']}}</h6>
							<p class="dark_text">
								{{$comment['comment']}}
							</p>
						</div>
						<div class="comment-actions-wrap">
							<a href="#" class="like">1</a>
							<a href="#" class="flag"></a>
						</div>
					</div>
				@endforeach
					<div class="close">
						<h6><a href="#" cid="{{$key}}">Close this Question <span>X</span></a></h6>
					</div>
				@endif
			</div><!-- END OF all dropdowns -->
		</div>
			<!-- END OF advice_post_box -->
			@endforeach
			@else
				<div class="advice_post_box">
					<div class="dropdown_box">
						<div class="row">
							No anyone have Posted any Question.
						</div><!-- END OF all dropdowns -->
					</div>
				</div>
			@endif
		</div><!-- end of inquiries_all_advice -->
		<div class="content" id="my_inquiries_answered">
			<?php $noAnsweredQuestion = true; ?>
			@foreach ($allQuestions as $key => $question)
			@if(isset($question['commentsCount']) && !empty($question['comments']) && ($question['commentsCount'] != '0'))
			<?php $noAnsweredQuestion = false; ?>
			<div class="advice_post_box">
				<div class="">
					<h6 class="advice_post_date"> {{$question['created_at']['date']}} <span class="new_button">NEW</span></h6>
					<p class="advice_post_text">
						{{$question['question']}}
					</p>
				</div>
				
				<div class="comment_icon_box">
					<div class="comment_icon_inner_box_left reply center">
						<a href="#" class="postComment" data-reveal-id="post_comment_modal" value="{{$question['id']}}" id="{{$question['id']}}">Reply</a>
					</div>
					<div class="comment_icon_inner_box_right justify">
						<a href="#" class="showComments" value="{{$key}}">{{$question['commentsCount']}}</a>
					</div>
				</div>
				<div id="comment_drop_{{$key}}aa" data-dropdown-content class="f-dropdown content" aria-hidden="true" style="overflow-y: scroll;">
					@if(isset($question['comments']) && !empty($question['comments']))
					@foreach ($question['comments'] as $comment)
						<div class="dropdown_box">
							<div class="row">
								<div class="large-2 small-2 columns space_top">
									<a href=""><img src="{{$comment['userImage']}}" class="drop_menu_avatar space_top"/></a>
								</div>
								<div class="large-10 small-10 columns align_left">
									<h6 class="dark_text">Posted on {{$comment['created_at']['date']}} at {{$comment['created_at']['time']}}</h6>
									<p class="dark_text">
										{{$comment['comment']}}
									</p>
								</div>
								<div class="large-12 columns align_right">
									<a href="#" data-reveal-id="ignore_person_modal" > <i class="fa fa-ban fa-2x green_link space_left"></i> </a>
									<i class="fa fa-star-o fa-2x green_link space_left"></i>
									<i class="fa fa-trophy fa-2x green_link space_left"></i>
									<i class="fa fa-flag-o fa-2x green_link space_left"></i>
								</div>
							</div>
						</div>
					@endforeach
						<div class="dropdown_box">
							<div class="row">
								<h6><a href="#" >Close this Question <i class="fa fa-times"></i></a></h6>
							</div>
						</div>
					@else
						<div class="dropdown_box">
							<div class="row">
								<h6><a href="#" >No comments <i class="fa fa-times"></i></a></h6>
							</div>
						</div>
					@endif
				</div><!-- END OF all dropdowns -->
			</div>
			<!-- END OF advice_post_box -->
			@endif
			@endforeach
			@if($noAnsweredQuestion)
				<div class="advice_post_box">
					<div class="dropdown_box">
						<div class="row">
							There is no Answered Question.
						</div><!-- END OF all dropdowns -->
					</div>
				</div>
			@endif
		</div>
		<!-- end of my_inquiries_answered -->

		<div class="content" id="my_inquiries_unanswered">
			<?php $noUnansweredQuestion = true; ?>
			@foreach ($allQuestions as $key => $question)
			@if(isset($question['commentsCount']) && empty($question['comments']) && ($question['commentsCount'] == '0'))
			<?php $noUnansweredQuestion = false; ?>
			<div class="advice_post_box">
				<div class="">
					<h6 class="advice_post_date"> {{$question['created_at']['date']}} <span class="new_button">NEW</span></h6>
					<p class="advice_post_text">
						{{$question['question']}}
					</p>
				</div>
				
				<div class="comment_icon_box">
					<div class="comment_icon_inner_box_left reply center">
						<a href="#" class="postComment" data-reveal-id="post_comment_modal" value="{{$question['id']}}" id="{{$question['id']}}">Reply</a>
					</div>
					<div class="comment_icon_inner_box_right justify">
						<a href="#" class="showComments" value="{{$key}}">{{$question['commentsCount']}}</a>
					</div>
				</div>
				<div id="comment_drop_{{$key}}au" data-dropdown-content class="f-dropdown content" aria-hidden="true" style="overflow-y: scroll;">
					@if(isset($question['comments']) && !empty($question['comments']))
					@foreach ($question['comments'] as $comment)
						<div class="dropdown_box">
							<div class="row">
								<div class="large-2 small-2 columns space_top">
									<a href=""><img src="{{$comment['userImage']}}" class="drop_menu_avatar space_top"/></a>
								</div>
								<div class="large-10 small-10 columns align_left">
									<h6 class="dark_text">Posted on {{$comment['created_at']['date']}} at {{$comment['created_at']['time']}}</h6>
									<p class="dark_text">
										{{$comment['comment']}}
									</p>
								</div>
								<div class="large-12 columns align_right">
									<a href="#" data-reveal-id="ignore_person_modal" > <i class="fa fa-ban fa-2x green_link space_left"></i> </a>
									<i class="fa fa-star-o fa-2x green_link space_left"></i>
									<i class="fa fa-trophy fa-2x green_link space_left"></i>
									<i class="fa fa-flag-o fa-2x green_link space_left"></i>
								</div>
							</div>
						</div>
					@endforeach
						<div class="dropdown_box">
							<div class="row">
								<h6><a href="#" >Close this Question <i class="fa fa-times"></i></a></h6>
							</div>
						</div>
					@else
						<div class="dropdown_box">
							<div class="row">
								<h6><a href="#" >No comments <i class="fa fa-times"></i></a></h6>
							</div>
						</div>
					@endif
				</div><!-- END OF all dropdowns -->
			</div>
			<!-- END OF advice_post_box -->
			@endif
			@endforeach
			@if($noUnansweredQuestion)
				<div class="advice_post_box">
					<div class="dropdown_box">
						<div class="row">
							There is no Unanswered Question.
						</div><!-- END OF all dropdowns -->
					</div>
				</div>
			@endif
		</div>
		<!-- end of my_inquiries_unanswered -->

	</div>

</div><!-- END OF community_inquiries content -->