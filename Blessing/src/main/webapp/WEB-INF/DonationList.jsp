<!doctype html>
<html lang="en">
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>Donations List</title>

<!-- Styles -->
<link rel='stylesheet' href="/css/bootstrap.min.css">
<link rel='stylesheet' href="/css/animate.min.css">
<link rel='stylesheet' href="/css/font-awesome.min.css" />
<link rel='stylesheet' href="/css/style.css" />

<!-- Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Raleway:200,300,400,500,600,700,800'
	rel='stylesheet' type='text/css'>
<link rel="shortcut icon" href="#">
</head>
<body>
	<section class="parallax section"
		style="background-image: url(http://themepush.com/demo/runcharity/assets/img/3.jpg);">
		<div class="wrapsection">
			<div class="parallax-overlay"></div>
			<div class="container">
				<div class="row">
					<div class="col-md-12 sol-sm-12">
						<div class="maintitle">
							<h3 class="section-title justtitle">Donations List </h3>
							<p class="lead bottom0 wow bounceInUp">The orgnaization can select the suite donation according to the type and the date  .</p>
						</div>	
						<div>
						<ul>
						<c:forEach items="${Donatins}" var="don">
					
						<li><c:out value="${don.donationType.name}"></c:out></li>
						<li><c:out value="${don.donationDate}"></c:out></li>
						<li><c:out value="${don.description}"></c:out></li>
	<li>	<form:form action="accept/${ don.id }" modelAttribute="Donate">
		<form:hidden path="id" value="${ don.id }"/>
			<form:hidden path="organizations" value="${ user.id }"/>
			<button>Book</button>
		</form:form></li>
						</c:forEach>
						</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
			 <a href="accept/${ don.id }" class="btn btn-default btn-lg wow fadeInRight" role="button"> Book </a>
	</section>
</body>
</html>