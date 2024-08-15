<%@page import="com.entity.Jobs"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.dao.JobDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Single Job</title>
<%@include file="all_component/all_css.jsp"%>

</head>
<body style="background-color: #f0f1f2;">
	<c:if test="${empty userobj }">
		<c:redirect url="login.jsp" />
	</c:if>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-md-12">

				<%
				int id = Integer.parseInt(request.getParameter("id"));
				JobDAO dao = new JobDAO(DBConnect.getconn());
				Jobs j = dao.getJobById(id);
				%>

				<div class="card mt-5">
					<div class="card-body">
						<div class="text-center text-primary">
							
							<div class="text-center">
								<c:if test="${not empty succMsg }">
									<div class="alert alert-success" role="alert">${ succMsg }</div>
									<c:remove var="succMsg" />
								</c:if>
							</div>
							<i class="far fa-clipboard fa-2x"></i>
						</div>
						<%-- <input type="hidden" value="${userobj.name}"/>
						<input type="hidden" value="${userobj.email}"/>
						<input type="hidden" value="${userobj.qualification}"/> --%>
						<h6><%=j.getTitle()%></h6>
						<p><%=j.getDescription()%></p>
						<br>
						<div class="form-row">
							<div class="form-group col-md-3">
								<input type="text" class="form-control 	form-control-sm"
									value="Location:<%=j.getLocation()%>" readonly>
							</div>
							<div class="form-group col-md-3">
								<input type="text" class="form-control 	form-control-sm"
									value="Category:<%=j.getCategory()%>" readonly>
							</div>
						</div>
						<h6>
							Publish Date :
							<%=j.getPdate().toString()%>
						</h6>
						<div class=" text-center">

							<a
								href="applyjobs?emp_name=<%=j.getEmp_name()%> &title=<%=j.getTitle()%> &category=<%=j.getCategory()%> &uname=${userobj.name} &uemail=${userobj.email} &uqua=${userobj.qualification}"
								class="btn btn-sm bg-success text-white">Apply Job</a>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>