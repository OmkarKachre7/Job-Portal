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

import com.entity.Jobs;
@WebServlet("/empaddjob")
public class EmpAddPostservlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String title=req.getParameter("title");
			String location=req.getParameter("location");
			String category=req.getParameter("category");
			String status =req.getParameter("status");
			String desc =req.getParameter("desc");
			String emp_name = req.getParameter("emp_name");
			
			Jobs j = new Jobs();
			
			j.setTitle(title);
			j.setLocation(location);
			j.setCategory(category);
			j.setStatus(status);
			j.setDescription(desc);
			j.setEmp_name(emp_name);
			
			HttpSession session = req.getSession();
			
			EmpJobDAO dao = new EmpJobDAO(DBConnect.getconn());
			boolean f = dao.empaddJobs(j);
			
			if(f) {
				session.setAttribute("succMsg", "Job Post Successfully");
				resp.sendRedirect("employer_add_job.jsp");
			}else {
				session.setAttribute("succMsg", "Something went wrong");
				resp.sendRedirect("employer_add_job.jsp");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
