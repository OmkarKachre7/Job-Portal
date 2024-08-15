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
@WebServlet("/updatejob")
public class EmpUpdateJobServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id = Integer.parseInt(req.getParameter("id"));
			String title = req.getParameter("title");
			String location = req.getParameter("location");
			String category = req.getParameter("category");
			String status = req.getParameter("status");
			String desc = req.getParameter("desc");
			
			Jobs j = new Jobs();
			j.setId(id);
			j.setTitle(title);
			j.setLocation(location);
			j.setCategory(category);
			j.setStatus(status);
			j.setDescription(desc);

			HttpSession session = req.getSession();
			
			EmpJobDAO dao = new EmpJobDAO(DBConnect.getconn());
			boolean f = dao.empupdateJob(j);
			
			if (f) {
				session.setAttribute("succMsg", "Job Update Successfully");
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
