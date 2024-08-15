<%@page import="com.entity.Jobs"%>
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
<title>user:Applied Jobs Details</title>
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
				String title = request.getParameter("title".trim());
				String category = request.getParameter("cat");
				EmpJobDAO dao = new EmpJobDAO(DBConnect.getconn());
				Jobs j = dao.getJobByTitleAndCategory(title.trim(), category);
				if(j==null){
					/* out.print("job post expired"); */
					HttpSession sesssion = request.getSession();
					session.setAttribute("succMsg", "job post expired");
					response.sendRedirect("home.jsp");
				}
				else{%>
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