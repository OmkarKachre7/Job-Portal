<%@page import="java.util.ArrayList"%>
<%@page import="com.entity.Jobs"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.dao.JobDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>user: job view filter</title>
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
				<h5 class="text-center text-primary">All Jobs</h5>
				<%
				String loc = request.getParameter("loc");
				String cat = request.getParameter("cat");
				String msg = "";

				JobDAO dao = new JobDAO(DBConnect.getconn());
				List<Jobs> list = null;
				if ("lo".equals(loc) && "ca".equals(cat)) {
					list = new ArrayList<Jobs>();
					msg = "Job Not Available";
				} else if ("lo".equals(loc) || "ca".equals(cat)) {
					list = dao.getJobsOrLocationAndCat(cat, loc);
				} else {
					list = dao.getJobsAndLocationAndCat(cat, loc);
				}
				if (list.isEmpty()) {
				%>
				<h4 class="text-center text-danger">Job Not Available</h4>
				<%
				}
				if (list != null) {
				for (Jobs j : list) {
				%>
				<div class="card mt-2">
					<div class="card-body">
						<div class="text-center text-primary">
							<i class="fa-regular fa-clipboard fa-2x"></i>
						</div>
						<h6><%=j.getTitle()%>
						</h6>
						<%
						if (j.getDescription().length() > 0 && j.getDescription().length() < 120) {
						%>
						<p>
							<%=j.getDescription()%>.
						</p>
						<%
						} else {
						%>
						<p>
							<%=j.getDescription().substring(0, 120)%>....
						</p>
						<%
						}
						%>
						<br>
						<div class="form-row">
							<div class="form-group col-md-3">
								<input type="text" class="form-control form-control-sm"
									value="Location:<%=j.getLocation()%>" readonly>
							</div>
							<div class="form-group col-md-3">
								<input type="text" class="form-control form-control-sm"
									value="Category:<%=j.getCategory()%>" readonly>
							</div>
						</div>
						<h6>
							Publish Date:
							<%=j.getPdate().toString()%>
						</h6>
						<div class="text-center">
							<a href="one_view.jsp?id=<%=j.getId()%>"
								class="btn btn-sm bg-success text-white">View More</a>
						</div>
					</div>
				</div>

				<%
				}
				} else {
				%>
				<h4 class="text-center text-danger"><%=msg%></h4>
				<%
				}
				%>

			</div>
		</div>
	</div>
</body>
</html>