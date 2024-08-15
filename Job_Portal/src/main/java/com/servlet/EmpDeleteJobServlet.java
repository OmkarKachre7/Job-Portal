package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DBConnect;
import com.dao.JobDAO;

@WebServlet("/empdelete")
public class EmpDeleteJobServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id = Integer.parseInt(req.getParameter("ids"));

			JobDAO dao = new JobDAO(DBConnect.getconn());
			boolean f = dao.deleteJobs(id);

			HttpSession session = req.getSession();

			if (f) {
				session.setAttribute("succMsg", "Job Delete Successfully");
				/* resp.sendRedirect("employer_view_jobs.jsp"); */ 
					 resp.sendRedirect("employerhome.jsp"); 

			} else {
				session.setAttribute("succMsg", "Something went wrong");
				resp.sendRedirect("employerhome.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
