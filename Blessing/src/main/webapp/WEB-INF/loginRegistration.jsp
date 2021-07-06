<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isErrorPage="true" %>
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

     <div class="cont_login">
      <div class="cont_info_log_sign_up">
        <div class="col_md_login">
          <div class="cont_ba_opcitiy">

            <h2>LOGIN</h2>
            <p>Previous donor, please Log in!</p>
            <button class="btn_login" onclick="cambiar_login()">LOGIN</button>
          </div>
        </div>
        <div class="col_md_sign_up">
          <div class="cont_ba_opcitiy">
            <h2>SIGN UP</h2>

            <p>New donor, please Register!</p>

            <button class="btn_sign_up" onclick="cambiar_sign_up()">SIGN UP</button>
          </div>
        </div>
      </div>

      <div class="cont_back_info">
        <div class="cont_img_back_grey">
          <img src="http://unsplash.it/id/173/1600/600" alt="" />
        </div>

      </div>
      <div class="cont_forms">
        <div class="cont_img_back_">
          <img src="http://unsplash.it/id/173/1600/600" alt="" />
        </div>
        <form method="POST" action="/login">
        <div class="cont_form_login">
          <a href="#" onclick="ocultar_login_sign_up()"><i class="material-icons">&#xE5C4;</i></a>
          <h2>LOGIN</h2>
          <input type="text" id="username" name="username" placeholder="Name" />
          <input type="password" id="password" name="password" placeholder="password" />
          <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
          <button class="btn_login" onclick="cambiar_login()">LOGIN</button>
          </form>
        </div>

          <form:form  method="POST" action="/registration" modelAttribute="user">
        	<div class="cont_form_sign_up">
          <a href="#" onclick="ocultar_login_sign_up()"><i class="material-icons">&#xE5C4;</i></a>
          <h2>SIGN UP</h2>
          <input name="username" type="text" placeholder="Name" />
          <input name="Email" type="text" placeholder="Email" />
          <input name="phone" type="text" placeholder="Phone Number"/>
          <select name="City">
          <c:forEach items="${cities}" var="city">
          <option value="${city}">${city}</option>
          </c:forEach>
          </select>
          <input type="password" name="password" placeholder="password" />
          <input type="password" name="passwordConfirmation" placeholder="Confirm Password" />
          <button class="btn_sign_up" onclick="cambiar_sign_up()">SIGN UP</button>
          </form:form>
        </div>

      </div>
	   <p><form:errors path="user.*"/></p>
	    <c:if test="${logoutMessage != null}">
        	<c:out value="${logoutMessage}"></c:out>
    	</c:if>
   	 	<c:if test="${errorMessage != null}">
     	   	<c:out value="${errorMessage}"></c:out>
    	</c:if>
    </div>
  </div>
</div>
	<script src="/js/loginJs.js"></script>
</body>
</html>