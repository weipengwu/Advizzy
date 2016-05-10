
<div class="content main_content" id="advice">


	<div class="tabs-content" style="margin-top: -0.5%;">
		<!-- NOTE: This is ONE of the INNER contents-tabs -->

		<div class="content active" id="my_inquiries_all_advice">
			@if(isset($allAdvicedQuestion['data']) && !empty($allAdvicedQuestion['data']))
			@foreach ($allAdvicedQuestion['data'] as $key => $question)
			<div class="advice_post_box">
				<div class="large-9 medium-11 small-11 columns">
					<h6 @if(isset($question['by'])) title="by - {{$question['by']}}" @endif class="advice_post_date">Question : {{$question['question']}}</h6>
					<h6 class="advice_post_date">Advice : </h6>
					@foreach ($question['comment'] as $keyComment => $advice)
						<p class="advice_post_text">
							{{$advice['created_at']['date']}} : {{$advice['comment']}}
						</p>
					@endforeach
				</div>
			</div>
			<!-- END OF advice_post_box -->
			@endforeach
			@else
				<div class="advice_post_box">
					<div class="dropdown_box">
						<div class="row">
							You haven't given any advice.
						</div><!-- END OF all dropdowns -->
					</div>
				</div>
			@endif
			<!-- END OF advice_post_box -->
		</div><!-- end of inquiries_all_advice -->
		<div id="tooltips"></div>
		
	</div>
</div>