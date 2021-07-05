<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isErrorPage="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel='stylesheet' href="/css/loginStyle.css" />
</head>
<body>
	<div class="cotn_principal">
		<div class="cont_centrar">
				</div>


			<form:form method="POST" action="/createOrgenization" modelAttribute="organization">
				<div>
					<a href="#" onclick="ocultar_login_sign_up()"><i class="material-icons">&#xE5C4;</i></a>
						<h2>Create Organization by ADMIN</h2>
				<form:label path="username">Name</form:label>
				<form:errors path="username"></form:errors>
				<form:input path="username" />
			</div>
			<div>
				<form:label path="Description">link</form:label>
				<form:errors path="Description"></form:errors>
				<form:input type="text" path="Description" />
			</div>
			<div>
				<form:label path="Img">Img</form:label>
				<form:errors path="Img"></form:errors>
				<form:input type="text" path="Img" />
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
			<div>
				<form:label path="password">Password</form:label>
				<form:errors path="password" />
				<form:password class="form-control" path="password" />
			</div>
			<div>
				<form:label path="passwordConfirmation">Confirm Password</form:label>
				<form:errors path="passwordConfirmation" />
				<form:password class="form-control" path="passwordConfirmation" />
			</div>

			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
						<button class="btn_sign_up" onclick="cambiar_sign_up()">Create Organization</button>
				</form:form>
			
			</div>

		</div>
		<p>
			<form:errors path="user.*" />
		</p>
		<c:if test="${logoutMessage != null}">
			<c:out value="${logoutMessage}"></c:out>
		</c:if>
		<c:if test="${errorMessage != null}">
			<c:out value="${errorMessage}"></c:out>
		</c:if>
	</div>
	<script src="/js/loginJs.js"></script>
</body>
</html>