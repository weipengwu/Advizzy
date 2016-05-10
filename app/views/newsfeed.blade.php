@include('templates.header')
@if(Auth::User()->active)

<div class="newsfeed_bar"> <!--  -->
	<div class="large-12">
		<div class="row">
		
			<a href="">Newsfeed</a>
		</div>
	</div>
</div><!-- end of quote-bar -->
<style>

	.newsfeed_bar { border-top: 1px solid #b6b7b7;}
	.newsfeed_bar a {color: #8b4cac;
font-size: 24px;
display: inline-block;
border-bottom: 3px solid #8b4cac;
position: relative;
top: 2px;
z-index: 999;
padding-bottom: 5px;
padding-top: 5px;}

.feedrow { width: 100%; border: 1px solid #e3e3e3; margin-bottom: 10px;}
.feedrow .feeduser { text-align: center; width: 170px; float: left; position: relative; } 
.feedrow .feeduser.comment, .feedrow .feeduser.question { background-color: #f7f7f7;  }
.feedrow .feeduser.user .avatar { width: 100px; padding-top: 27px;}
.feedrow .feeduser img.avatar { padding-top: 15px; padding-bottom: 20px; width: 80px; }
.feedrow .feeduser img.divider { position: absolute; top: 50%; margin-top: -14px; margin-left: 106px;}
.feedrow .feeduser span { color: #8b4cac; font-size: 24px; display: block;}

.feedrow .rightside { float: left; min-height: 160px; padding: 40px 30px; }
.feedrow .rightside.comment, .feedrow .rightside.question { border-left: 1px solid #e3e3e3;}
.feedrow .rightside.user h3 { font-size: 14px; color: #34984e; margin: 0px 0px 5px; font-weight: normal; }
.feedrow .rightside.user p { font-size: 18px; }
.feedrow .rightside.user span { color: #8a4aab; font-weight: bold; }
.feedrow .rightside.question h3 { font-size: 14px; font-weight: normal; }
.feedrow .rightside.question h3 span { font-weight: bold; }
.feedrow .rightside.question p { width: 650px; font-size: 18px; }

.feedrow .rightside.comment h3 { font-size: 14px ;}
.feedrow .rightside.comment h3 span.tit { font-weight: bold; }
.feedrow .rightside.comment h3 span.tat { font-weight: bold; color: #34984e; }
</style>

<div class="large-12" style="background-color: #f7f7f7; padding-top: 34px;">
	<div class="row">
<div class="content main_content" id="advice" style="border: 0px;">


	<div class="tabs-content">
		<!-- NOTE: This is ONE of the INNER contents-tabs -->

		<div class="content active" id="my_inquiries_all_advice">
			@foreach ($data as $key => $item)
				<div class="feedrow">

					<div class="feeduser {{ $item->type }}">
						@if ($item->type != 'user')
							<img src="/img/arrowleft.png" class="divider">
						@endif
						<img class="avatar" src="{{ $item->myAvatar }}">
						@if ($item->type != 'user')
							<span>{{ $item->uName }}</span>
						@endif	
						
					</div>
					<div class="rightside {{ $item->type }} ">
						@if ($item->type == 'question')
						
							<h3><span>Posted a new Inquiry</span> <?= date('M j, Y', strtotime($item->created_at)) ?></h3>
							<p><?= $item->question ?></p>
						@elseif ($item->type == 'comment')
							<h3><span class="tit">Posted Advice |</span> <span class="tat"><?= $item->question ?> ...</span> <?= date('M j, Y', strtotime($item->created_at)) ?></h3>
							<p><?= $item->comment ?></p>
						@else
							<h3>New Member!</h3>
							<p><span>{{$item->uName}}</span> has joined Advizzy.</p>
						@endif
					</div>
					<br style="clear: both;">
				</div>
			<!	-- END OF advice_post_box -->
			@endforeach
			<!-- END OF advice_post_box -->
		</div><!-- end of inquiries_all_advice -->
		<div id="tooltips"></div>
		
	</div>
</div>
</div>
</div>
@endif
@include('templates.footer')