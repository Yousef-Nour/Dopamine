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
<!-- Bootstrap -->
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
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
							<p class="lead bottom0 wow bounceInUp">Please select the suitable donations from the table below.</p>
						</div>	
						<div>
						<table class="white table table-bordered">
							<thead>
								<tr>
									<th>Donor</th>
									<th>Location</th>
									<th>Donation Type</th>
									<th>Date</th>
									<th>Description</th>
									<th>Accept/Accepted By</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${Donatins}" var="don">
									<tr>
										<td><c:out value="${don.donor.username}"></c:out></td>
										<td><c:out value="${don.donor.city}"></c:out></td>
										<td><c:out value="${don.donationType.name}"></c:out></td>
										<td><c:out value="${don.donationDate}"></c:out></td>
										<td><c:out value="${don.description}"></c:out></td>
										<td>
											<c:choose> 
												<c:when test="${don.organization.id == null}"> 
													<form:form method = "POST" action="accept/${don.id}">
			 											<input type="submit" value="Accept" class="btn btn-default btn-lg wow fadeInRight" role="button">
													</form:form>
												</c:when> 
												<c:otherwise>
													Accepted By <c:out value = "${don.organization.username}"/>
												</c:otherwise>
											</c:choose>
										</td>
								</c:forEach>
									</tr>
							</tbody>
						</table>
						<br>
						<p>P.S.: an Email will be sent to the donor upon acceptance.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>