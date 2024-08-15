package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DBConnect;
import com.dao.EmpJobDAO;
import com.dao.JobDAO;
import com.entity.AppliedJobs;

@WebServlet("/applyjobs")
public class ApplyJobServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String emp_name = req.getParameter("emp_name");
		String title = req.getParameter("title");
		String category = req.getParameter("category");
		String uname = req.getParameter("uname");
		String uemail = req.getParameter("uemail");
		String uqua = req.getParameter("uqua");
		
		AppliedJobs j = new AppliedJobs();
		j.setEmp_name(emp_name);
		j.setTitle(title);
		j.setCategory(category);
		j.setName(uname);
		j.setEmail(uemail);
		j.setQualification(uqua);

		EmpJobDAO dao = new EmpJobDAO(DBConnect.getconn());
		boolean f = dao.empaddapplication(j);

		HttpSession session = req.getSession();

		if (f) {
			session.setAttribute("succMsg", "Job Applied Successfully");
			resp.sendRedirect("home.jsp");

		} else {
			session.setAttribute("succMsg", "Something went wrong");
			resp.sendRedirect("home.jsp");
		}
	}

}
