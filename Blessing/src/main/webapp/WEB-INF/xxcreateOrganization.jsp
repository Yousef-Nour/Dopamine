<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Organization</title>
</head>
<body>
	<div>
		<form:form action="/createOrgenization" method="POST" modelAttribute="organization">
			
			<div>
				<form:label path="username">Name</form:label>
				<form:errors path="username"><
				/form:errors>
				<form:input path="username" />
			</div>
			<div>
				<form:label path="Description">Description</form:label>
				<form:errors path="Description"></form:errors>
				<form:input type="text" path="Description" />
			</div>
			<div>
				<form:label path="Img">Img</form:label>
				<form:errors path="Img"></form:errors>
				<form:input type="text" path="Img" />
			</div>
			<div class="form-group">
				<form:label path="password">Password</form:label>
				<form:errors path="password" />
				<form:password class="form-control" path="password" />
			</div>
			<div class="form-group">
				<form:label path="passwordConfirmation">Confirm Password</form:label>
				<form:errors path="passwordConfirmation" />
				<form:password class="form-control" path="passwordConfirmation" />
			</div>

			<div>
				<form:label path="City">City</form:label>
				<form:errors path="City" />
				<form:select path="City">
				<c:forEach items="${cities}" var="city">

					<option value="${city}">${city}</option>

					</c:forEach>
				</form:select>
			</div>
			<button>Create Organization</button>
		</form:form>
	</div>
	

</body>
</html>