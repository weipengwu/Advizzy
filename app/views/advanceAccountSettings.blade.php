@include('templates.header')
@if(Auth::User()->active)
<form method="post" action="/advanceAccountSettings">
	<div class="large-12 space_bottom columns border_top_thin border_bottom_thin bg_white center padded">
		<div class="row">
			<p class="big_text green_text space_top">My Profile</p>
			<div class="message_box">
				<p class="dark_text space_bottom space_left space_right">
					Click the fields to edit. through its previous mode of composition. Fields generated automata geonomicon.
				</p>
			</div>
		</div>
	</div>
	<div class="large-12 columns space_top">
		<div class="row">
			<div class="panel bg_white padded">
				<div class="row">
					<div class="large-12 columns space_bottom">
						<h3 class="dark_text">Inquiries per day</h3>
					</div>

					<div class="large-7 columns">

						<div class="large-6 columns">
							<p>Limit my requests to</p>
						</div>
						<div class="large-2 columns">
							<!-- SHOULD AUTOMATICALLY UPDATE -->
							<input type="number" id="max_requests" value="{{Auth::User()->maxRequest}}" name="maxRequest" />
						</div>
						<div class="large-4 columns">
							<p>per day.</p>
						</div>
					</div>
					<div class="large-5 columns">
						<div class="range-slider" id="inquiriesPerDay" data-slider data-options="display_selector: #max_requests; initial: {{Auth::User()->maxRequest}};">
						      <span class="range-slider-handle" role="slider" tabindex="0"></span>
						      <span class="range-slider-active-segment"></span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="large-12 columns space_top">
		<div class="row">
			<div class="panel bg_white padded">
				<div class="row">
					<div class="large-12 columns space_bottom">
						<h3 class="dark_text left">My Certifications</h3>
						<button id="addMoreCertificates" class="custom_white_button right" type="button">UPLOAD FILE</button>
					</div>
					<div id="uploadFileOutput" class="space_bottom"></div>
					<div id="uploadedDocs"></div>
					<div id="uploadedFiles" class="large-12 columns align_left">
						@if(isset($files))
						@foreach($files as $file)
						<div style="float: left;" onclick="window.open('{{$file->location}}');" class='large-3 medium-3 small-6 columns'>
							<a>
								<div class='panel bg_off_white'>
									<div class='row' title="{{$file->name}}">
										{{substr($file->name, 0, 20)}}
									</div>
								</div>
							</a>
						</div>
						@endforeach
						@endif
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<button class="custom_white_button">
				Cancel
			</button>
			<input type="submit" class="button" id="saveAccountSettings" value="SAVE">
		</div>
	</div>
	<br style="clear:both">
</form>
@endif
@include('templates.footer')