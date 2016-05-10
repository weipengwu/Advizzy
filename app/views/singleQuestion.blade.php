@include('templates.header')
@if(isset($question))
<div class="large-12 columns share_opinion_wrapper">
	<!-- Share Opinion Wrapper -->
	<form action="/questions/{{$question['id']}}" method="post">
		<input type="hidden" class="whatsTheId" id="whatsTheIdQ" value="{{$question['id']}}"/>
		<div class="row">
			<div class="large-2 columns">
				<div class="avatar_box">
					<img src="{{$question['userImage']}}" class="user_profile_avatar">
				</div>
				<div class="row">
					<div class="user_full_name_box">
						<h5 class="user_full_name">{{$question['userN']}}</h5>
					</div>
				</div>
			</div>
			<div class="large-8 columns">
				<h4>Question : {{$question['question']}}</h4>
			</div>
			<div class="large-2 center columns">
				<a class="questionFollow @if($question['isUserFollowThisQuestion']) unFollowThis @else followThis @endif" @if(!Auth::check()) href="/login" @elseif(!Auth::user()->active) href="/profile" @endif id="{{$question['id']}}">
					<span class="fa-stack">
						<i class="fa fa-circle fa-stack-2x purple_text"></i>
						<i class="fa fa-stack-1x white_text" id="followersCount">{{$question['followersCount']}}</i>
					</span>
				</a>
			</div>
			<hr class="customHR" />
		</div>
		<div class="row">
			<h4>Advice : {{$question['commentsCount']}} </h4>
		</div>
		@foreach($question['comments'] as $comment)
		<div class="row" id="{{$comment['id']}}">
			<div class="large-2 small-2 center columns space_bottom">
				<a href=""><img src="{{$comment['userImage']}}" class="drop_menu_avatar drop_menu_avatara space_top"/></a>
				<p class="dark_text">
					<b>{{$comment['userN']}}</b>
				</p>
			</div>

			<div class="large-10 small-10 columns align_left">
				<h6 class="dark_text">Posted on {{$comment['created_at']['date']}} at {{$comment['created_at']['time']}}</h6>
				<p class="dark_text">
					{{$comment['comment']}}
				</p>
			</div>
		</div>
		@endforeach
		@if(Auth::check())
		@if(Auth::user()->id != $question['userId'])
		<div class="row">
			<hr class="customHR" />
			<h4>Post your advice here : </h4>
		</div>
		<div class="row">
			<div class="large-2 columns">
				<div class="avatar_box">
					<img src="{{Auth::user()->myAvatar}}" class="user_profile_avatar">
				</div>
			</div>
			<div class="large-10 columns">
				<!-- <form class="" action="postQuestion" method="post"> -->
					<textarea name="on_your_mind_textarea" id="on_your_mind_textarea" class="advizzy_textarea" maxlength="250" rows="5"></textarea>
					<div class="textarea_panel">
						<div class="inner_panel_box">
							<p class="characters_remaining_label" id="on_your_mind_characters_remaining_label">
								<span id="remainingCharacters">250</span>/250 Characters Remaining
							</p>
						</div>
						<!-- <input type="submit" class="button" id="on_your_mind_submit" value="Edit" /> -->
						<input type="submit" class="button" id="on_your_mind_submit" value="Comment" />

						<!-- <div class="inner_panel_box" onclick="document.getElementById('on_your_mind_textarea').value = ''; document.getElementById('remainingCharacters').innerHTML=250;">
							<div class="link_cell" id="examples_link_cell">
								<a href="#" class="examples_link">Clear</a>
							</div>
						</div> -->
					</div>
				<!-- </form> -->
			</div>
		</div>
		@endif
		@else
		<div class="row">
			<hr class="customHR" />
			<h4>To add your answer please login first </h4>
		</div>
		<div class="row">
			<div class="large-2 columns">
				<div class="avatar_box">
					<input type="button" class="button" onclick="window.location.href='/login'" id="login" value="Login" />
				</div>
			</div>
		</div>
		@endif
	</form>
<!-- END OF Choose Demographic Bar -->
</div> <!-- END of Share Opinion Wrapper -->
@endif
@include('templates.footer')