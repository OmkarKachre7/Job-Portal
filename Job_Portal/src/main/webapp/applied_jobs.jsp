<%@page import="com.entity.AppliedJobs"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.dao.EmpJobDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User:Applied Jobs</title>
<%@include file="all_component/all_css.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<c:if test="${userobj.role ne 'user' }">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h5 class="text-center text-primary">All Jobs</h5>
				<c:if test="${not empty succMsg }">
					<div class="alert alert-success" role="alert">${ succMsg }</div>
					<c:remove var="succMsg" />
				</c:if>
				<%
				String empName = request.getParameter("name");
				EmpJobDAO dao = new EmpJobDAO(DBConnect.getconn());
				List<AppliedJobs> list = dao.getAllApplicantsByUname(empName);
				for (AppliedJobs j : list) {
				%>
				<div class="card mt-2">
					<div class="card-body">
						<div class="text-center text-primary">
							<i class="fa-regular fa-clipboard fa-2x"></i>
						</div>
						<br>
						<p>
							Job Information <i class="fa-solid fa-circle-info"></i>
						</p>
						<div class="form-row">
							<div class="form-group col-md-3">
								<input type="text" class="form-control form-control-sm"
									value="Job Role:  <%=j.getTitle()%>" readonly>
							</div>
							<div class="form-group col-md-3">
								<input type="text" class="form-control form-control-sm"
									value="Category:  <%=j.getCategory()%>" readonly>
							</div>
							<div class="form-group col-md-3">
								<a
									href="user_one_view.jsp?title=<%=j.getTitle()%> &cat=<%=j.getCategory()%>"
									class="btn btn-sm bg-success text-white">View More</a>
							</div>
						</div>
						<br>


					</div>
				</div>

				<%
				}
				%>



			</div>

		</div>

	</div>
</body>
</html>