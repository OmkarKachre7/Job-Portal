<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employer: Home Page</title>
<%@include file="all_component/all_css.jsp"%>
<style type="text/css">
.back-img {
	background: url("img/admin.jpg");
	height: 90vh;
	width: 100%;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
</head>
<body style="background-color: #f0f1f2;">
	<c:if test="${userobj.role ne 'employer'}">
		<c:redirect url="login.jsp" />
	</c:if>
	<%@include file="all_component/navbar.jsp"%>
	<input type="hidden" name="id" value="${userobj.id}">
	<div class="container-fluid back-img">
		<div class="text-center">
			<c:if test="${not empty succMsg }">
				<div class="alert alert-success" role="alert">${ succMsg }</div>
				<c:remove var="succMsg" />
			</c:if>
			<h1 class="text-white p-4">Welcome ${userobj.name}</h1>
		</div>
	</div>
</body>
</html>