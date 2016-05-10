<div class="content main_content active" id="my_inquiries">

	<!-- sub-tab section -->
	<ul class="tabs sub-tabs" data-tab>
		<li class="tab-title active sub_tab">
			<a href="#my_inquiries_all_advice">All Inquiries</a>
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
			@if(isset($myAllQuestions) && !empty($myAllQuestions))
			@foreach ($myAllQuestions as $key => $question)
				<div class="advice_post_box">
					<div class="">

						<h6 class="advice_post_date"> {{ ucwords($question['created_at']['date']) }} </h6>

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
								<a href="#" data-reveal-id="block" class="ignore"></a>
								<a href="#" class="like">2</a>
								<a href="#" class="support"></a>
								<a href="#" class="flag"></a>
							</div>
						</div>
					@endforeach
						<div class="close">
							<h6><a href="#" cid="{{$key}}">Close this Question <span>X</span></a></h6>
						</div>
					@endif
				</div><!-- END OF all dropdowns -->
			@endforeach
				<!-- END OF advice_post_box -->
			@else
			<div class="advice_post_box">
				<div class="dropdown_box">
					<div class="row">
						You have not posted any questions.
					</div><!-- END OF all dropdowns -->
				</div>
			</div>
			@endif
			</div><!-- end of inquiries_all_advice -->

			<div class="content" id="my_inquiries_answered">
				<?php $noAnsweredQuestion = true; ?>
				@foreach ($myAllQuestions as $key => $question)
				@if(isset($question['commentsCount']) && !empty($question['comments']) && ($question['commentsCount'] != '0'))
				<?php $noAnsweredQuestion = false; ?>
				<div class="advice_post_box">
					<div class="">

						<h6 class="advice_post_date"> {{ ucwords($question['created_at']['date']) }} </h6>

						<p class="advice_post_text">
							{{$question['question']}}
						</p>

					</div>

					<div class="comment_icon_box">
						<div class="comment_icon_inner_box_left center">
							<a href="" class="editQuestion" data-reveal-id="edit_inquiry_modal" value="{{$question['id']}}" id="{{$question['id']}}"></a>
						</div>
						<div class="comment_icon_inner_box_right justify">
							<a data-dropdown="comment_drop_{{$key}}" aria-controls="comment_drop_{{$key}}" aria-expanded="false">{{$question['commentsCount']}}</a>
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
								<a href="#" class="ignore"></a>
								<a href="#" class="like">3</a>
								<a href="#" class="support"></a>
								<a href="#" class="flag"></a>
							</div>
						</div>
					@endforeach
						<div class="close">
							<h6><a href="#" cid="{{$key}}">Close this Question <span>X</span></a></h6>
						</div>
					@endif
				</div><!-- END OF all dropdowns -->
			<!-- END OF advice_post_box -->
			@endif
			@endforeach
			@if($noAnsweredQuestion)
				<div class="advice_post_box">
					<div class="dropdown_box">
						<div class="row">
							You have no Answered Question.
						</div><!-- END OF all dropdowns -->
					</div>
				</div>
			@endif
		</div>
		<!-- end of my_inquiries_answered -->

		<div class="content" id="my_inquiries_unanswered">
			<?php $noUnansweredQuestion = true; ?>
			@foreach ($myAllQuestions as $key => $question)
			@if(isset($question['commentsCount']) && empty($question['comments']) && ($question['commentsCount'] == '0'))
			<?php $noUnansweredQuestion = false; ?>
			<div class="advice_post_box">
				<div class="">

					<h6 class="advice_post_date"> {{ ucwords($question['created_at']['date']) }} </h6>

					<p class="advice_post_text">
						{{$question['question']}}
					</p>

				</div>

				<div class="comment_icon_box">
					<div class="comment_icon_inner_box_left center">
						<a href="" class="editQuestion" data-reveal-id="edit_inquiry_modal" value="{{$question['id']}}" id="{{$question['id']}}"></a>
					</div>
					<div class="comment_icon_inner_box_right justify">
						<a data-dropdown="comment_drop_{{$key}}" aria-controls="comment_drop_{{$key}}" aria-expanded="false">{{$question['commentsCount']}}</a>
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
								<a href="#" class="ignore"></a>
								<a href="#" class="like">4</a>
								<a href="#" class="support"></a>
								<a href="#" class="flag"></a>
							</div>
						</div>
					@endforeach
						<div class="close">
							<h6><a href="#" cid="{{$key}}">Close this Question <span>X</span></a></h6>
						</div>
					@endif
				</div><!-- END OF all dropdowns -->
			<!-- END OF advice_post_box -->
			@endif
			@endforeach
			@if($noUnansweredQuestion)
				<div class="advice_post_box">
					<div class="dropdown_box">
						<div class="row">
							You have no Unanswered Question.
						</div><!-- END OF all dropdowns -->
					</div>
				</div>
			@endif
			
		</div>
		<!-- end of my_inquiries_unanswered -->
	</div>

</div><!-- END OF my_inquiries content -->