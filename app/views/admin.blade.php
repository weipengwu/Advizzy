@if(Session::has('role') && (Session::get('role') == 'admin'))
@include('admin.header')
<div class="large-12 columns space_top">
	<div class="row space_top">
		<div class="tabs-content space_top">

			<div class="content active padded space_top" id="dashboard_tab">
				<!-- beginning of tab: DASHBOARD TAB-->
				<div class="row padded">

					<div class="large-12 columns border_bottom_thin">
						<h6 class="dark_text">Admin Home</h6>
					</div>

					<div class="large-12 columns">

						<div class="large-4 medium-4 columns">
							<div class="panel dassboard_panel space_top">
								<div class="row">
									<div class="large-12 columns">
										<i class="fa fa-user fa-2x grey_text left"></i>
									</div>
									<div class="large-12 columns center">
										<p class="dark_text biggish_text space_top space_left space_right">
											User
											<br>
											Management
										</p>
									</div>
								</div>
							</div>
						</div>

						<div class="large-4 medium-4 columns">
							<div class="panel dassboard_panel bg_white space_top">
								<div class="row">
									<div class="large-12 columns">
										<i class="fa fa-file-text fa-2x grey_text left"></i>
									</div>
									<div class="large-12 columns center">
										<p class="green_text biggish_text space_top space_left space_right">
											<br>
											Reports
										</p>
									</div>
								</div>
							</div>
						</div>

						<div class="large-4 medium-4 columns">
							<div class="panel dassboard_panel space_top">
								<div class="row">
									<div class="large-12 columns">
										<i class="fa fa-flag fa-2x grey_text left"></i>
									</div>
									<div class="large-12 columns center">
										<p class="dark_text biggish_text space_top space_left space_right">
											Flagged
											<br>
											Items
										</p>
									</div>
								</div>
							</div>
						</div>

					</div>

				</div>
			</div><!-- END OF tab "dashboard_tab" -->

			<div class="content space_top" id="users_tab">
				<!-- beginning of tab: USERS TAB-->
				<!-- USERS TAB includes a subset of tabs -->

				<div class="row padded">

					<div class="large-12 columns border_bottom_thin">
						<h6 class="dark_text">User Registrations</h6>
					</div>

					<div class="large-12 space_top columns space_bottom no_pad_top no_pad_bottom center no_marg_bottom">

						<ul class="tabs fifty_nine_tabs no_pad_top no_pad_bottom no_marg_top no_marg_bottom" data-tab>

							<li class="large-4 small-4 columns center">

								<h6>Show:</h6>

							</li>
							<li class="large-2 small-2 columns center fifty_nine_tab border_top_thin border_bottom_thin">
								<a href="#users_new_tab" class="center wide"> <h6>All</h6> </a>
							</li>

							<li class="large-2 small-2 columns center fifty_nine_tab border_top_thin border_bottom_thin">
								<a href="#users_new_tab" class="center wide"> <h6>New</h6> </a>
							</li>

							<li class="large-2 small-2 columns center fifty_nine_tab border_top_thin border_bottom_thin">
								<a href="#users_suspended_tab" class="center wide"> <h6>Suspended</h6> </a>
							</li>

							<li class="large-2 small-2 columns center fifty_nine_tab border_top_thin border_bottom_thin">
								<a href="#users_flagged_tab" class="center wide"> <h6>Flagged</h6> </a>
							</li>
						</ul>
						<div class="tabs-content space_top">
							<!-- This contains all the INNER tabs -->

							<div class="content active padded space_top" id="users_new_tab">
								<!-- beginning of tab: users_new_tab TAB-->
								<div class="panel bg_white no_border space_left space_right">
									<div class="row">

										<div class="large-12 columns bg_white align_left border_a padding_top">

											<div class="large-4 small-4 columns">
												<p class="dark_text">
													Name
												</p>
											</div>
											<div class="large-8 small-8 columns">
												<p class="dark_text">
													Email
												</p>
											</div>

										</div>

										<div class="large-12 columns bg_off_white align_left border_a padding_top no_marg_ef">

											<div class="large-4 small-4 columns">
												<p class="dark_text">
													Bob Smith
												</p>
											</div>
											<div class="large-8 small-8 columns">
												<p class="dark_text">
													bsmitty@cool.guy
												</p>
											</div>

										</div>

										<div class="large-12 columns bg_off_white align_left border_a padding_top">

											<div class="large-4 small-4 columns">
												<p class="dark_text">
													Bob Smith
												</p>
											</div>
											<div class="large-8 small-8 columns">
												<p class="dark_text">
													bsmitty@cool.guy
												</p>
											</div>

										</div>

									</div>
								</div>
							</div><!-- end of tab: users_new_tab TAB-->

							<div class="content padded space_top" id="users_suspended_tab">
								<!-- beginning of tab: users_suspended_tab TAB-->
								<div class="panel bg_white no_border space_left space_right">
									<div class="row">

										<div class="large-12 columns bg_white align_left border_a padding_top">

											<div class="large-4 small-4 columns">
												<p class="dark_text">
													Name
												</p>
											</div>
											<div class="large-8 small-8 columns">
												<p class="dark_text">
													Email
												</p>
											</div>

										</div>

										<div class="large-12 columns bg_off_white align_left border_a padding_top no_marg_ef">

											<div class="large-4 small-4 columns">
												<p class="dark_text">
													Jack Smythe
												</p>
											</div>
											<div class="large-8 small-8 columns">
												<p class="dark_text">
													jsmitty@cool.guy
												</p>
											</div>

										</div>

										<div class="large-12 columns bg_off_white align_left border_a padding_top">

											<div class="large-4 small-4 columns">
												<p class="dark_text">
													Jack Smythe
												</p>
											</div>
											<div class="large-8 small-8 columns">
												<p class="dark_text">
													jsmitty@cool.guy
												</p>
											</div>

										</div>

									</div>
								</div>
							</div><!-- end of tab: users_suspended_tab TAB-->

							<div class="content padded space_top" id="users_flagged_tab">
								<!-- beginning of tab: users_flagged_tab TAB-->
								<div class="panel no_border bg_white space_left space_right">
									<div class="row">

										<div class="large-12 columns bg_white align_left border_a padding_top">

											<div class="large-4 small-4 columns">
												<p class="dark_text">
													Name
												</p>
											</div>
											<div class="large-8 small-8 columns">
												<p class="dark_text">
													Email
												</p>
											</div>

										</div>

										<div class="large-12 columns bg_off_white align_left border_a padding_top no_marg_ef">

											<div class="large-4 small-4 columns">
												<p class="dark_text">
													Rob Smith
												</p>
											</div>
											<div class="large-8 small-8 columns">
												<p class="dark_text">
													rsmitty@cool.guy
												</p>
											</div>

										</div>

										<div class="large-12 columns bg_off_white align_left border_a padding_top">

											<div class="large-4 small-4 columns">
												<p class="dark_text">
													Rob Smith
												</p>
											</div>
											<div class="large-8 small-8 columns">
												<p class="dark_text">
													rsmitty@cool.guy
												</p>
											</div>

										</div>

									</div>
								</div>
							</div><!-- end of tab: users_flagged_tab TAB-->

						</div><!-- end of the inner tabs -->

					</div>
				</div>

			</div>
			<!-- END OF tab "users_tab" -->

			<div class="content space_top" id="reports_tab">

				REPORTS TAB

			</div>
			<!-- END OF content "reports_tab" -->

			<div class="content space_top" id="posts_tab">

				<div class="row padded">
					<div class="large-12 columns border_bottom_thin space_bottom">
						<h6 class="dark_text">User Registrations</h6>
					</div>

					<div class="panel no_border bg_white space_top space_left space_right">
						<div class="row">

							<div class="large-12 columns bg_white align_left border_a padding_top">

								<div class="large-3 small-3 columns">
									<p class="dark_text">
										Post Content
									</p>
								</div>

								<div class="large-3 small-3 columns">
									<p class="dark_text">
										User
									</p>
								</div>

								<div class="large-3 small-3 columns">
									<p class="dark_text">
										Date
									</p>
								</div>

								<div class="large-3 small-3 columns">
									<button class="button" type="button">
										REINSTATE
									</button>
								</div>

							</div>

							<div class="large-12 columns bg_off_white align_left border_a padding_top">

								<div class="large-3 small-3 columns">
									<p class="dark_text">
										In the wizzy poulitrine ulak munaj gotrend izzy fast brown dog jumped lazy fox over defense
									</p>
								</div>

								<div class="large-3 small-3 columns">
									<p class="dark_text">
										bsmitty@cool.guy
									</p>
								</div>

								<div class="large-3 small-3 columns">
									<p class="dark_text">
										Mar 06, 1988
									</p>
								</div>

								<div class="large-3 small-3 columns">
									<button class="button" type="button">
										CONFIRM
									</button>
								</div>

							</div>

							<div class="large-12 columns bg_off_white align_left border_a padding_top">

								<div class="large-3 small-3 columns">
									<p class="dark_text">
										In the wizzy poulitrine ulak munaj gotrend izzy fast brown dog jumped lazy fox over defense
									</p>
								</div>

								<div class="large-3 small-3 columns">
									<p class="dark_text">
										bsmitty@cool.guy
									</p>
								</div>

								<div class="large-3 small-3 columns">
									<p class="dark_text">
										Mar 06, 1988
									</p>
								</div>

								<div class="large-3 small-3 columns">
									<button class="button" type="button">
										CONFIRM
									</button>
								</div>

							</div>

						</div>
					</div>
				</div>

			</div>
			<!-- END OF content "posts_tab" -->

		</div><!-- end of Tabs Content -->

	</div>
	<!-- end of large-12 columns -->

</div><!-- end of row -->
@include('templates.footer')
@endif