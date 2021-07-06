<!doctype html>
<html lang="en">
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>RUN CHARITY</title>

<!-- Styles -->
<link rel='stylesheet' href="/css/bootstrap.min.css">
<link rel='stylesheet' href="/css/animate.min.css">
<link rel='stylesheet' href="/css/font-awesome.min.css" />
<link rel='stylesheet' href="/css/style.css" />

<!-- Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Raleway:200,300,400,500,600,700,800'
	rel='stylesheet' type='text/css'>

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		  <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
	<![endif]-->

<!-- Favicon -->

<link rel="shortcut icon" href="#">
</head>
<body>
	<!-- Begin Hero Bg -->
	<div id="parallax"></div>
	<!-- End Hero Bg
	================================================== -->
	<!-- Start Header
	================================================== -->
	<header id="header" class="navbar navbar-inverse navbar-fixed-top"
		role="banner"  >
		<div class="container">
			<div class="navbar-header">
				<button class="navbar-toggle" type="button" data-toggle="collapse"
					data-target=".bs-navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<!-- Your Logo -->
				<a href="#hero" class="navbar-brand">BleSSinG<span
					class="lighter"></span></a>
			</div>
			<!-- Start Navigation -->
			<nav class="collapse navbar-collapse bs-navbar-collapse navbar-right"
				role="navigation">
				<ul class="nav navbar-nav">
					<li><a href="#hero">Home</a></li>
					<li><a href="#about">About</a></li>
					<li><a href="#gallery">Organizations</a></li>
					<li><a href="#slider">Donate</a></li>
					<li><a href="#credits">Contact</a></li>
					<li><a href="/logout">LogOut</a></li>
				</ul>
			</nav>
		</div>
	</header>

	<!-- Intro
	================================================== -->
	<section id="hero" class="section">
		<div class="container">
			<div class="row">
				<div class="col-md-5">
					<div class="herotext">
						<h1 class="wow bounceInDown" data-wow-duration="1s"
							data-wow-delay="0.1s">
							Blessing<span class="lighter"></span>
						</h1>
						<h1 class="wow bounceInDown" data-wow-duration="1s"
							data-wow-delay="0.1s">
							<span class="lighter">Hope is every where</span>
						</h1>
						<p  id="para"class="lead wow zoomIn" data-wow-duration="2s"
							data-wow-delay="0.5s">When we give cheerfully and accept
							gratefully, everyone is blessed.</p>
						<p>
							<a href="#gallery" class="btn btn-default btn-lg wow fadeInLeft"
								role="button"> View Organizations </a> &nbsp; <a href="#slider"
								class="btn btn-default btn-lg wow fadeInRight" role="button">Donate</a>
						</p>
					</div>
				</div>
				<div class="col-md-7"></div>
			</div>
		</div>
	</section>
	<!-- About
	================================================== -->
	<section id="about" class="parallax section"
	>
		<div class="wrapsection">
			<div class="parallax-overlay"
				style="background-color: #675139; opacity: 0.9;"></div>
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<!-- Title -->
						<div class="maintitle">
							<h3 class="section-title">
								<strong>About <span class="lighter">Us</span></strong> 
							</h3>
							<p class="lead">Blessing is a website for the community. It allows people to help those among us who are less fortunate by connecting users with charity.
Through our website people will be able to donate tangibles like food, clothes and other stuff. Also they will be able to see the list of charitable organizations in the country.
As for the charities they will be able to view list of donations in their city and accept donations.
</p>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="service-box wow zoomIn" data-wow-duration="1.5s"
							data-wow-delay="0.1s">
							<img
								src="https://images.unsplash.com/photo-1505455184862-554165e5f6ba?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80" 
								alt=""> <!--about our donations-->
								
							<h3>
								July 1, 2021 <br />BleSSinG<br /> AXSOS Academy
							</h3>
							<div class="text-left">
								<p><strong>No-one has ever become poor by Giving</strong></p>
								<p><i>Alms (is) for the purity of your soul, and flourishment and expansion of your sustenence.</i></p>
								<p><i>Yap, it is all about humanity!</i></p>
								<p class="text-center">
									<button type="button" class="btn btn-info btn-md">
										<a href="https://www.youtube.com/watch?v=Vb_oVpmv0Qs" target="_blank">Learn More</a>
									</button>
									
								</p>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="service-box wow flipInY" data-wow-duration="1.5s"
							data-wow-delay="0.1s">
							<span class="glyphicon glyphicon-stats"></span>
							<h3> 100 Participants</h3>
							<p>40% of our societies are charitable</p>
			
							<button type="button" class="btn btn-info btn-md">
								
							</button>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="service-box wow flipInY" data-wow-duration="1.5s"
							data-wow-delay="0.2s">
							<span class="glyphicon glyphicon-home"></span>
							<h3>Orphanages</h3>
							<p>There are 18 orphanages in Palestine</p>
							<button type="button" class="btn btn-info btn-md">
								
							</button>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="service-box wow flipInY" data-wow-duration="1.5s"
							data-wow-delay="0.3s">
							<span class="glyphicon glyphicon-heart"></span>
							<h3>Donors</h3>
							<p>We are blessed with more-than 200 participant in our platform</p>
							<button type="button" class="btn btn-info btn-md">
								
							</button>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="service-box wow flipInY" data-wow-duration="1.5s"
							data-wow-delay="0.4s">
							<span class="glyphicon glyphicon-user"></span>
							<h3>Families</h3>
							<p>More-than 250 families supported through our platform</p>
							<button type="button" class="btn btn-info btn-md">
								
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Random
	================================================== -->
	<section class="parallax section"
		style="background-image: url(https://i.picsum.photos/id/173/1600/600.jpg?hmac=amuck7hXGi_oM80tSLWwNn2GMrf04E_Irz15Mn1C_fQ);"> <!--jabal-->
		<div class="wrapsection">
			<div class="parallax-overlay"></div>
			<div class="container">
				<div class="row">
					<div class="col-md-12 sol-sm-12">
						<div class="maintitle">
							<h3 class="section-title justtitle">Blessing is
								everything</h3>
							<p class="lead bottom0 wow bounceInUp">Giving is not just about making a donation, it is about making a difference</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Gallery
	================================================== -->
	<section id="gallery" class="parallax section"> <!--style="background-image: url(http://themepush.com/demo/runcharity/assets/img/2.jpg);"-->
	
<div class="wrapsection">
	<div class="parallax-overlay" style="background-color:#675139;opacity:0.9;"></div>
	<div class="container">
		<div class="row">
			<div class="col-md-15 sol-sm-15 ">
				<div class="maintitle">
					<h3 class="section-title">Our Organizations</h3>
					<p class="lead wow flipInX">
						Have a look at Our Organizations,
								see how much fun we have while helping people. Join our
								community today!
					</p>
				</div>
			</div>
			<c:forEach items="${allOrg}" var="org">
			<div class="col-md-4">
				
					<img src="${org.img}" alt="" class="image-responsive">
					<div class="description">
						<span class="caption"><c:out value="${org.username}"></c:out> <b><c:out value="${org.description}"></c:out></b></span> 
						<span class="camera"></span>
						<div class="clearfix"></div>
					</div>			
				</a>
			</div>
		</c:forEach>
	</section>
	<!-- Text Carousel
	================================================== thankfull -->
	<section id="slider" class="parallax section"
		style="background-image: url(https://images.unsplash.com/photo-1527380992061-b126c88cbb41?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTI4fHxoYW5kc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60);">
		<div class="wrapsection">
			<div class="parallax-overlay"
				></div>
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h2>Donate</h2>
						<form:form action="/donate" method="POST" modelAttribute="donation">
						<form:input path="donor" type="hidden" value="${currentUserId}"/>
						<div class="wow fadeIn animated" data-wow-delay="0.3s"
						data-wow-duration="1.5" style="margin-top: 15px;">
						<form:label path="donationType">Donation Type:<span class="required">*</span></form:label>
						<form:select path="donationType">
						<c:forEach items="${donationTypes}" var="type">
						<form:option value="${type.id}">${type.name}</form:option>
						</c:forEach>
						</form:select>
						</div>
						<div class="wow fadeIn animated" data-wow-delay="0.3s"
						data-wow-duration="1.5" style="margin-top: 15px;">
						<form:label path="donationDate">Donation Date:<span class="required">*</span></form:label>
						<form:input type="date" path="donationDate"/>
						</div>
						<div class="wow fadeIn animated" data-wow-delay="0.3s"
						data-wow-duration="1.5" style="margin-top: 15px;">
						<form:label path="description">Details: <span class="required">*</span></form:label>
						<form:textarea path="description"></form:textarea>
						</div>
						<div class="wow fadeIn animated" data-wow-delay="0.3"
						data-wow-duration="1.5s">
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
						<input type="submit" value="confirm"/>
						</div>
						</form:form>
					<!--  	<div id="Carousel" class="carousel slide">
							<ol class="carousel-indicators">
								<li data-target="#Carousel" data-slide-to="0" class="active"></li>
								<li data-target="#Carousel" data-slide-to="1"></li>
								<li data-target="#Carousel" data-slide-to="2"></li>
							</ol>
							<div class="carousel-inner">
								<div class="item active">
									<blockquote>
										<p class="lead">You have not lived today until you have
											done something for someone who can never repay you.</p>
										<small>John Bunyan, Marathon</small>
									</blockquote>
								</div>
								<div class="item">
									<blockquote>
										<p class="lead">The simplest acts of kindness are by far
											more powerful then a thousand heads bowing in prayer.</p>
										<small>Mahatma Gandhi</small>
									</blockquote>
								</div>
								<div class="item">
									<blockquote>
										<p class="lead">There is no exercise better for the heart
											than reaching down and lifting people up.</p>
										<small>John Holmes, Organizer</small>
									</blockquote>
								</div>
							</div>
							  <a class="left carousel-control" href="#Carousel"
								data-slide="prev"> <span
								class="glyphicon glyphicon-chevron-left"></span>
							</a> <a class="right carousel-control" href="#Carousel"
								data-slide="next"> <span
								class="glyphicon glyphicon-chevron-right"></span>
							</a>  
						</div> -->
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- FAQ
	================================================== -->
<!--	<section id="faq" class="section">
		<div class="wrapsection">
			<div class="container">
				<div class="row">
					<div class="col-md-12 sol-sm-12">
						<div class="maintitle">
							<h3 class="section-title">
								Conditions of <span class="wow bounceInRight">Participation</span>
							</h3>
							<p class="lead">Sed gravida, tortor in tincidunt sagittis,
								ligula lacus ultrices justo, sed mattis sem sem ut ex. Ut nunc
								elit, auctor et quam sit amet, convallis purus.</p>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 col-sm-12">
						<div class="faq-block wow bounceInDown" data-wow-duration="1.5s"
							data-wow-delay="0s">
							<div class="panel-group">
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion"
												href="#collapseOne"> How old can I be? </a>
										</h4>
									</div>
									<div id="collapseOne" class="panel-collapse collapse">
										<div class="panel-body">How old. This is the detailed
											answer. It is a long established fact that a reader will be
											distracted by the readable content of a page when looking at
											its layout.</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion"
												href="#collapseTwo"> Can we donate clothes? </a>
										</h4>
									</div>
									<div id="collapseTwo" class="panel-collapse collapse">
										<div class="panel-body">Can we? This is the detailed
											answer. It is a long established fact that a reader will be
											distracted by the readable content of a page when looking at
											its layout.</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion"
												href="#collapseThree"> How many miles to run ? </a>
										</h4>
									</div>
									<div id="collapseThree" class="panel-collapse collapse">
										<div class="panel-body">So how many. This is the
											detailed answer. It is a long established fact that a reader
											will be distracted by the readable content of a page when
											looking at its layout.</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-12">
						<div class="faq-block wow bounceInDown" data-wow-duration="1.5s"
							data-wow-delay="0.1s">
							<div class="panel-group">
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion"
												href="#collapseFour"> Can we show sponsors? </a>
										</h4>
									</div>
									<div id="collapseFour" class="panel-collapse collapse">
										<div class="panel-body">Sponsors. This is the detailed
											answer. It is a long established fact that a reader will be
											distracted by the readable content of a page when looking at
											its layout.</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion"
												href="#collapseFive"> Are there free drinks? </a>
										</h4>
									</div>
									<div id="collapseFive" class="panel-collapse collapse">
										<div class="panel-body">Drinks. This is the detailed
											answer. It is a long established fact that a reader will be
											distracted by the readable content of a page when looking at
											its layout.</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion"
												href="#collapseSix"> Is medical exam free ? </a>
										</h4>
									</div>
									<div id="collapseSix" class="panel-collapse collapse">
										<div class="panel-body">Medical. This is the detailed
											answer. It is a long established fact that a reader will be
											distracted by the readable content of a page when looking at
											its layout.</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-12">
						<div class="faq-block wow bounceInDown" data-wow-duration="1.5s"
							data-wow-delay="0.2s">
							<div class="panel-group">
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion"
												href="#collapseSeven"> Do you help with passport? </a>
										</h4>
									</div>
									<div id="collapseSeven" class="panel-collapse collapse">
										<div class="panel-body">Passport. This is the detailed
											answer. It is a long established fact that a reader will be
											distracted by the readable content of a page when looking at
											its layout.</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion"
												href="#collapseEight"> What routes should one follow? </a>
										</h4>
									</div>
									<div id="collapseEight" class="panel-collapse collapse">
										<div class="panel-body">Routes. This is the detailed
											answer. It is a long established fact that a reader will be
											distracted by the readable content of a page when looking at
											its layout.</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion"
												href="#collapseNine"> Do I have to pay a tax? </a>
										</h4>
									</div>
									<div id="collapseNine" class="panel-collapse collapse">
										<div class="panel-body">Tax. This is the detailed
											answer. It is a long established fact that a reader will be
											distracted by the readable content of a page when looking at
											its layout.</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section> -->
	<!-- Random
	================================================== flowers
	
	<section class="whitecolor parallax section"
		style="background-color: #675139; opacity: 0.9;background-image: url();">
		<div class="wrapsection">
			<div class="container">
				<div class="row">
					<div class="col-md-12 sol-sm-12">
						<div class="maintitle">
							<h3 class="section-title justtitle">
								Charity <span class="wow flipInX">&amp; love</span> are the same
							</h3>
							<p class="lead bottom0">Our contact information<br><br>email: blessingteam.ps@gmail.com <br><br>Mobile:0599090909 <br><br> Our Team:<br> Tasneem Arafat <br> Yousef Nour <br> Hani Kiwan<br><br></p>
							<p>We are Happy that you are a member of Our Family</p>
							<p><i class="fa fa-heart"></i> </p>
							
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</section> -->
	<!-- Contact
	================================================== 
	<section class="contactarea" class="parallax section"
		style="background-image: url(http://themepush.com/demo/runcharity/assets/img/map.png);">
		<div class="wrapsection">
			<div class="parallax-overlay"
				style="background-color: #1cbb9b; opacity: 0.95;"></div>
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="maintitle">
							<h3 class="section-title">Get in Touch</h3>
							<p class="lead">If you have questions about our events, don't
								hesitate to send us your message. This is a real working contact
								form, test it!</p>
						</div>
						<form id="contact" name="contact" method="post" class="text-left">
							<fieldset>
								<div class="row">
									<div class="col-md-4 wow fadeIn animated animated"
										data-wow-delay="0.1s" data-wow-duration="2s">
										<label for="name">Name<span class="required">*</span></label>
										<input type="text" name="name" id="name" size="30" value=""
											required />
									</div>
									<div class="col-md-4 wow fadeIn animated" data-wow-delay="0.3s"
										data-wow-duration="2s">
										<label for="email">Email<span class="required">*</span></label>
										<input type="text" name="email" id="email" size="30" value=""
											required />
									</div>
									<div class="col-md-4 wow fadeIn animated" data-wow-delay="0.3s"
										data-wow-duration="2s">
										<label for="phone">Phone</label> <input type="text"
											name="phone" id="phone" size="30" value="" />
									</div>
								</div>
								<div class="wow fadeIn animated" data-wow-delay="0.3s"
									data-wow-duration="1.5" style="margin-top: 15px;">
									<label for="message">Message<span class="required">*</span></label>
									<textarea name="message" id="message" required></textarea>
								</div>
								<div class="wow fadeIn animated" data-wow-delay="0.3"
									data-wow-duration="1.5s">
									<input id="submit" type="submit" name="submit" value="Send" />
								</div>
							</fieldset>
						</form>
						<div id="success">
							<p class="contactalert">Your message was sent succssfully! I
								will be in touch as soon as I can.</p>
						</div>
						<div id="error">
							<p class="contactalert">Something went wrong, try refreshing
								and submitting the form again.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Credits 
=============================================== -->
	<section id="credits" class="text-center" style="background-color: #675139; opacity: 0.9;color: white;">
	<section class="whitecolor parallax section"
		style="background-color: #675139; opacity: 0.9;background-image: url();">
		<div class="wrapsection">
			<div class="container">
				<div class="row">
					<div class="col-md-12 sol-sm-12">
						<div class="maintitle">
							<h3 class="section-title justtitle">
								Charity <span class="wow flipInX">&amp; love</span> are the same
							</h3>
							<p class="lead bottom0">Our contact information<br><br>email: blessingteam.ps@gmail.com <br><br>Mobile:0599090909 <br><br> Our Team:<br> Tasneem Arafat <br> Yousef Nour <br> Hani Kiwan<br><br></p>
							<p>We are Happy that you are a member of Our Family</p>
							<p><i class="fa fa-heart"></i> </p>
							
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
		<span class="social wow zoomIn"> <a href="https://www.facebook.com/Blessing-103655815324685" target="_blank"><i
				class="fa fa-facebook"></i></a> 
		</span><br /> Copyright &copy; <a href="https://academy.axsos.ps/"  target="_blank">AXSOS Academy</a> <br />
		
	</section>
	<!-- Bootstrap core JavaScript
	================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/waypoints.min.js"></script>
	<script src="assets/js/jquery.scrollTo.min.js"></script>
	<script src="assets/js/jquery.localScroll.min.js"></script>
	<script src="assets/js/jquery.magnific-popup.min.js"></script>
	<script src="assets/js/validate.js"></script>
	<script src="assets/js/common.js"></script>
</body>
</html>