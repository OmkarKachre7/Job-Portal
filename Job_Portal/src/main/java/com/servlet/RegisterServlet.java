package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DBConnect;
import com.dao.UserDAO;
import com.entity.User;

@WebServlet("/add_user")
public class RegisterServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		String qua = req.getParameter("qua");
		String email = req.getParameter("email");
		String ps = req.getParameter("ps");
		String role = req.getParameter("role");
		
		UserDAO dao = new UserDAO(DBConnect.getconn());
		
		User 	u = new User(name,email,ps,qua,role);
		boolean f = dao.addUser(u);
		
		HttpSession session = req.getSession();
		
		if(f) {
			session.setAttribute("succMsg", "Registration Successfully");
			resp.sendRedirect("signup.jsp");
		}else {
			session.setAttribute("succMsg", "Something went wrong");
			resp.sendRedirect("signup.jsp");
		}
		
	}
	
}
