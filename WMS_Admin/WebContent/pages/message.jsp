<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="wrap-messages">
	<div id="inbox" class="inbox">
		<!-- start: EMAIL OPTIONS -->
		<div class="col email-options perfect-scrollbar">
			<div class="padding-15">
				<button class="btn btn-primary btn-block margin-bottom-30">
					Compose
				</button>
				<p class="email-options-title no-margin">
					BROWSE
				</p>
				<ul class="main-options padding-15">
					<li>
						<a href="#">
							<span class="title"><i class="ti-import"></i> Inbox</span>
							<span class="badge pull-right">10</span>
						</a>
					</li>
					<li>
						<a href="#">
							<span class="title"><i class="ti-upload"></i> Sent</span>
						</a>
					</li>
					<li>
						<a href="#">
							<span class="title"><i class="ti-na"></i> Spam</span>
							<span class="badge pull-right">1</span>
						</a>
					</li>
					<li>
						<a href="#">
							<span class="title"><i class="ti-star"></i> Starred</span>
							<span class="badge pull-right">2</span>
						</a>
					</li>
				</ul>
			</div>
		</div>
		<!-- end: EMAIL OPTIONS -->
		<!-- start: EMAIL LIST -->
		<div class="col email-list">
			<div class="wrap-list">
				<div class="wrap-options">
					<div class="messages-options padding-15">
						<div class="btn-group">
							<button class="btn btn-primary btn-wide" type="button">
								Compose
							</button>
							<button class="btn btn-primary dropdown-toggle" type="button">
								<span class="caret"></span>
							</button>
							<ul role="menu" class="dropdown-menu dropdown-light">
								<li>
									<a href="#">
										<span class="title"><i class="ti-import"></i> Inbox</span>
										<span class="badge">10</span>
									</a>
								</li>
								<li>
									<a href="#">
										<span class="title"><i class="ti-upload"></i> Sent</span>
									</a>
								</li>
								<li>
									<a href="#">
										<span class="title"><i class="ti-na"></i> Spam</span>
										<span class="badge">1</span>
									</a>
								</li>
								<li>
									<a href="#">
										<span class="title"><i class="ti-star"></i> Starred</span>
										<span class="badge">2</span>
									</a>
								</li>
							</ul>
						</div>
						<button class="btn btn-transparent pull-right open-message-search">
							<i class="ti-search"></i>
						</button>
						<button class="btn btn-transparent pull-right close-message-search">
							<i class="ti-close"></i>
						</button>
					</div>
					<div class="messages-search">
						<form>
							<input type="text" placeholder="Search messages..." class="form-control underline">
						</form>
					</div>
				</div>
				<ul class="messages-list perfect-scrollbar">
					<li class="messages-item">
						<a href="#">
							<span class="messages-item-star" title="Mark as starred"><i class="fa fa-star"></i></span>
							<img class="messages-item-avatar bordered border-primary" alt="John Stark" src="assets/images/avatar-6.jpg">
							<span class="messages-item-from">John Stark</span>
							<div class="messages-item-time">
								<span class="text">05/24/2014 at 8:37PM</span>
							</div>
							<span class="messages-item-subject"> Reference Request - Nicole Bell</span>
							<span class="messages-item-content">Hi Peter, Thanks for the e-mail. It is always nice to hear from people, especially…</span>
						</a>
					</li>
					<li class="messages-item">
						<a href="#">
							<span class="messages-item-star" title="Remove star"><i class="fa fa-star"></i></span>
							<img class="messages-item-avatar bordered border-primary" alt="James Patterson" src="assets/images/avatar-9.jpg">
							<span class="messages-item-from">James Patterson</span>
							<div class="messages-item-time">
								<span class="text">05/24/2014 at 8:37PM</span>
							</div>
							<span class="messages-item-subject"> Position requirements</span>
							<span class="messages-item-content">Dear Mr. Clarks I am interested in the Coordinator position advertised on XYZ. My resume…</span>
						</a>
					</li>
					<li class="messages-item">
						<a href="#">
							<span class="messages-item-star" title="Mark as starred"><i class="fa fa-star"></i></span>
							<img class="messages-item-avatar bordered border-primary" alt="Mary Ferguson" src="assets/images/avatar-8.jpg">
							<span class="messages-item-from">Mary Ferguson</span>
							<div class="messages-item-time">
								<span class="text">05/24/2014 at 8:37PM</span>
							</div>
							<span class="messages-item-subject"> Employer's job requirements</span>
							<span class="messages-item-content">Dear Mr. Clarks In response to your advertisement in the Milliken Valley Sentinel for Vice…</span>
						</a>
					</li>
					<li class="messages-item">
						<a href="#">
							<span class="messages-item-star" title="Mark as starred"><i class="fa fa-star"></i></span>
							<img class="messages-item-avatar bordered border-primary" alt="Jane Fieldstone" src="assets/images/default-user.png">
							<span class="messages-item-from">Jane Fieldstone</span>
							<div class="messages-item-time">
								<span class="text">05/24/2014 at 8:37PM</span>
							</div>
							<span class="messages-item-subject"> Job Offer</span>
							<span class="messages-item-content">Dear Mr. Clarks, As we discussed on the phone, I am very pleased to accept…</span>
						</a>
					</li>
					<li class="messages-item">
						<a href="#">
							<span class="messages-item-star" title="Mark as starred"><i class="fa fa-star"></i></span>
							<img class="messages-item-avatar bordered border-primary" alt="Steven Thompson" src="assets/images/avatar-3.jpg">
							<span class="messages-item-from">Steven Thompson</span>
							<div class="messages-item-time">
								<span class="text">05/24/2014 at 8:37PM</span>
							</div>
							<span class="messages-item-subject"> Personal invitation</span>
							<span class="messages-item-content">Dear Peter, Good Day! We would like to invite you to the coming birthday party…</span>
						</a>
					</li>
					<li class="messages-item">
						<a href="#">
							<span class="messages-item-star" title="Remove star"><i class="fa fa-star"></i></span>
							<img class="messages-item-avatar bordered border-primary" alt="Michael A. Faust" src="assets/images/default-user.png">
							<span class="messages-item-from">Michael A. Faust</span>
							<div class="messages-item-time">
								<span class="text">05/24/2014 at 8:37PM</span>
							</div>
							<span class="messages-item-subject"> Re: Group Meeting</span>
							<span class="messages-item-content">Dear SirIt was my pleasure to be introduced to you by Mr. Elliot Carson last…</span>
						</a>
					</li>
					<li class="messages-item">
						<a href="#">
							<span class="messages-item-star" title="Mark as starred"><i class="fa fa-star"></i></span>
							<img class="messages-item-avatar bordered border-primary" alt="Nicole Bell" src="assets/images/avatar-2.jpg">
							<span class="messages-item-from">Nicole Bell</span>
							<div class="messages-item-time">
								<span class="text">05/24/2014 at 8:37PM</span>
							</div>
							<span class="messages-item-subject"> Congratulations </span>
							<span class="messages-item-content">Dear friend Peter,I am feeling very happy today to congratulate you as you got promotion.…</span>
						</a>
					</li>
					<li class="messages-item">
						<a href="#">
							<span class="messages-item-star" title="Mark as starred"><i class="fa fa-star"></i></span>
							<img class="messages-item-avatar bordered border-primary" alt="Google Geoff" src="assets/images/default-user.png">
							<span class="messages-item-from">Google Geoff</span>
							<div class="messages-item-time">
								<span class="text">05/24/2014 at 8:37PM</span>
							</div>
							<span class="messages-item-subject"> <em class="spam">[SPAM]</em> JobSearch information letter</span>
							<span class="messages-item-content">Dear recipient,Avangar Technologies announces the beginning of a new unprecendented global employment campaign. reviser yeller…</span>
						</a>
					</li>
					<li class="messages-item">
						<a href="#">
							<span class="messages-item-star" title="Mark as starred"><i class="fa fa-star"></i></span>
							<img class="messages-item-avatar bordered border-primary" alt="Shane Michaels" src="assets/images/default-user.png">
							<span class="messages-item-from">Shane Michaels</span>
							<div class="messages-item-time">
								<span class="text">03/11/2015 at 10:49AM</span>
							</div>
							<span class="messages-item-subject"> Marketing agreement between two companies</span>
							<span class="messages-item-content">This letter is with regards to the advertisement given in the yesterdays newspaper &amp;amp; we…</span>
						</a>
					</li>
					<li class="messages-item">
						<a href="#">
							<span class="messages-item-star" title="Mark as starred"><i class="fa fa-star"></i></span>
							<img class="messages-item-avatar bordered border-primary" alt="Kenneth Ross" src="assets/images/avatar-5.jpg">
							<span class="messages-item-from">Kenneth Ross</span>
							<div class="messages-item-time">
								<span class="text">03/11/2015 at 10:49AM</span>
							</div>
							<span class="messages-item-subject"> Sincere request to keep in touch.</span>
							<span class="messages-item-content">Dear Mr. Clarks,I was shocked to see my letter after having just left and part…</span>
						</a>
					</li>
				</ul>
			</div>
		</div>
		<!-- end: EMAIL LIST -->
		<!-- start: EMAIL READER -->
		<div class="email-reader perfect-scrollbar">
			<div>
				<div class="message-actions">
					<ul class="actions no-margin no-padding block">
						<li class="email-list-toggle">
							<a href="#"><i class="fa fa-angle-left"></i> All Inboxes </a>
						</li>
						<li class="actions-dropdown">
							<span class="dropdown">
								<a class="dropdown-toggle" href="">
									<i class="caret"></i>
								</a>
								<ul class="dropdown-menu dropdown-light">
									<li>
										<a href="#">
											Reply
										</a>
									</li>
									<li>
										<a href="#">
											Reply all
										</a>
									</li>
									<li>
										<a href="#">
											Forward
										</a>
									</li>
									<li>
										<a href="#">
											Delete
										</a>
									</li>
								</ul> </span>
						</li>
						<li class="no-padding">
							<a href="#" class="text-info">
								Reply
							</a>
						</li>
						<li class="no-padding">
							<a href="#">
								Reply all
							</a>
						</li>
						<li class="no-padding">
							<a href="#">
								Forward
							</a>
						</li>
						<li class="no-padding">
							<a href="#">
								Delete
							</a>
						</li>
					</ul>
				</div>
				<div class="message-header">
					<img class="message-item-avatar" alt="John Stark" src="assets/images/avatar-6.jpg">
					<div class="message-time">
						05/24/2014 at 8:37PM
					</div>
					
					<div class="message-from">
						John Stark &lt;stark@example.com&gt;
					</div>
					<div class="message-to">
						To: Peter Clark
					</div>
				</div>
				<div class="message-subject">
					Reference Request - Nicole Bell
				</div>
				<div class="message-content">
					<p>
						Hi Peter,
						<br>
						Thanks for the e-mail. It is always nice to hear from people, especially from you, Scott.
					</p>
					<p>
						I have not got any reply, a positive or negative one, from Seibido yet.
						<br>
						Let's wait and hope that it will make a BOOK.
					</p>
					<p>
						Have you finished your paperwork for Kaken and writing academic articles?
						<br>
						If you have some free time in the near future, I want to meet you and explain to you our next project.
					</p>
					<p>
						Why not drink out in Hiroshima if we are accepted?
						<br>
						We need to celebrate ourselves, don't we?
						<br>
						Let's have a small end-of-the-year party!
					</p>
					<p>
						Sincerely, K. Nakagawa
					</p>
				</div>
			</div>
		</div>
		<!-- end: EMAIL READER -->
	</div>
</div>
