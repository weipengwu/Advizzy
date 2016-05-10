@include('templates.header')
<div class="large-12 columns border_top_thin">
	<div class="row center padded">

		<div class="message_page_box">
			<h1 class="green_text big_text space_top">Lost?</h1>
			<p class="green_text">
				iting givis own argument, but the definition is vague, overlapping with those of an article, a pamphlet and a short story. Essays are generally scholarly pieces of writing giving the author's own argument, but the definition is vagrlapping cle, a pamphlet and a short story. Essays are generally eces of writing giving the author's own argument, but the definition is vague, overlapping with those of an article, a pam
			</p>
		</div>

		<div class="final_quote_box">
			<p class="green_text"><i>"alone we can do so little, together we can do so much" - </i> Helen Keller</p>
		</div>

	</div>
</div>
		
		
		
		
		
	<!--  POP-UP MODALS  */-->







<div id="poor_rating_modal" class="reveal-modal center advizzy_modal" data-reveal aria-labelledby="modalTitle" aria-hidden="true" role="dialog">
  <h2 id="modalTitle" class="green_text space_bottom">Not Happy with your Advice? Talk to Us.</h2>

  <p class="space_bottom">You has an appointment with Dr. Randal. Something everything something go something.</p>

  <textarea name="poor_rating_textarea" id="poor_rating_textarea" placeholder="Explain why you rated your appointment unsatisfactory." class="space_bottom"></textarea>

	<div class="large-12 columns space_left space_right space_top center space_bottom">

   		<button type="button" class="custom_white_button space_bottom close-reveal-modal dark_text" >CANCEL</button> <button type="button" class="custom_white_button space_bottom close-reveal-modal" >SKIP THIS</button> <button type="button" class="button space_bottom" data-reveal-id="thanks_for_review_modal" onclick="javascript: location.hash='#top'; location.hash='';">SEND MY FEEDBACK</button>

   	</div>

</div>


<div id="thanks_for_review_modal" class="reveal-modal center advizzy_modal" data-reveal aria-labelledby="modalTitle" aria-hidden="true" role="dialog">
  <h2 id="modalTitle" class="green_text space_bottom">Thanks for keeping us in the know.</h2>

  <p>Your input has been submitted and will be reviewed.</p>

	<div class="large-12 columns space_left space_right space_top center space_bottom">

   		<button type="button" class="button space_bottom close-reveal-modal">CLOSE</button>

   	</div>

</div>
@include('templates.footer')