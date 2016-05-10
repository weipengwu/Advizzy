@include('templates.header')
@if(Auth::User()->active)

<div class="large-12 columns user_stats_outer_row">
	<!-- RECENT ACTIVITY top bar -->
	<div class="row">
		<div class="large-12 columns padded_stats">
			<div class="large-4 small-4 columns">
				<form action="/profile" method="get">
					<button class="button round custom_white_button show-for-medium-up">
						<i class="fa fa-long-arrow-left"></i><b>Back</b>
					</button>
					<button class="button round custom_white_button hide-for-medium-up">
						<i class="fa fa-long-arrow-left"> </i>
					</button>
				</form>
			</div>
			<div class="large-4 small-4 columns center">
				<p class="big_text green_text">
					Recent Activity
				</p>
			</div>
			<div class="large-4 small-4 columns"></div>
		</div>
	</div>
</div>
<!-- END of RECENT ACTIVITY top bar -->

<div class="row">
	<div class="large-12 columns space_top space_bottom center">
		<div class="listBox">
			<ul class="tabs bg_white recent_activity_tabs" data-tab>
				<li class="large-4 small-4 columns center recent_activity_tab">
					<a href="#recent_inquiries" class="center wide"> <h3 class="green_text">?</h3> <h4 class="dark_text space_right no_pad_left more_padding_right">Inquiries</h4> </a>
				</li>
				<li class="large-4 small-4 columns center recent_activity_tab">
					<a href="#recent_advice" class="center wide"> <h3 class="green_text">A</h3> <h4 class="dark_text">Advice</h4> </a>
				</li>
				<li class="large-4 small-4 columns center recent_activity_tab">
					<a href="#recent_likes" class="center wide"> <h3 class="green_text"><i class="fa fa-star-o"></i></h3> <h4 class="dark_text">Likes</h4> </a>
				</li>
			</ul>
		</div>
	</div>
	<div class="large-12 columns">
		<div class="tabs-content">
			<div class="content active" id="recent_inquiries">
				@if(isset($logs['recentInquiries']))
				@foreach($logs['recentInquiries'] as $log)
				<div class="advice_post_box">
					<div class="large-12 columns">
						<h6 class="advice_post_date"> {{$log['ago']}} </h6>
						<p class="advice_post_text">
							@if($log['user']->id == Auth::User()->id)
							You have
							@else 
							{{$log['user']->fName.''.$log['user']->fName}} has
							@endif
							{{$log['type']}} <a href="/questions/{{$log['question']->id}}">{{$log['question']->question}}</a>
						</p>
					</div>
				</div><!-- END OF advice_post_box -->
				@endforeach
				@else
				<div class="advice_post_box">
					<div class="large-12 columns">
						<p class="advice_post_text">
							No recent inquiries
						</p>
					</div>
				</div><!-- END OF advice_post_box -->
				@endif
			</div><!-- END OF content "recent inquiries" -->
			<div class="content" id="recent_advice">
				@if(isset($logs['recentAnswers']))
				@foreach($logs['recentAnswers'] as $log)
				<div class="advice_post_box">
					<div class="large-12 columns">
						<h6 class="advice_post_date"> {{$log['ago']}} </h6>
						<p class="advice_post_text">
							@if($log['user']->id == Auth::User()->id)
							You have
							@else 
							{{$log['user']->fName.''.$log['user']->fName}} has
							@endif
							{{$log['type']}} for <a href="/questions/{{$log['question']->id}}#{{$log['comment']->id}}">{{$log['question']->question}}</a>
						</p>
					</div>
				</div><!-- END OF advice_post_box -->
				@endforeach
				@else
				<div class="advice_post_box">
					<div class="large-12 columns">
						<p class="advice_post_text">
							No recent advice
						</p>
					</div>
				</div><!-- END OF advice_post_box -->
				@endif
			</div>
			<!-- END OF content "recent advice" -->
			<div class="content" id="recent_likes">
				@if(isset($logs['recentLikes']))
				@foreach($logs['recentLikes'] as $log)
				<div class="advice_post_box">
					<div class="large-12 columns">
						<h6 class="advice_post_date"> {{$log['ago']}} </h6>
						<p class="advice_post_text">
							@if($log['user']->id == Auth::User()->id)
							You have
							@else 
							{{$log['user']->fName.''.$log['user']->fName}} has
							@endif
							{{$log['type']}} for <a href="/questions/{{$log['question']->id}}#{{$log['comment']->id}}">{{$log['question']->question}}</a>
						</p>
					</div>
				</div>
				<!-- END OF advice_post_box -->
				@endforeach
				@else
				<div class="advice_post_box">
					<div class="large-12 columns">
						<p class="advice_post_text">
							No recent likes
						</p>
					</div>
				</div><!-- END OF advice_post_box -->
				@endif
			</div>
			<!-- END OF content "recent advice" -->
		</div><!-- end of Tabs Content -->
	</div>
	<!-- end of large-12 columns -->
</div><!-- end of row -->
@endif
@include('templates.footer')