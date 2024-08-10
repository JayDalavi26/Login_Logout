package com.login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.dao.LoginDao;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname=request.getParameter("uname");
		String pass=request.getParameter("pass");
		
		LoginDao dao=new LoginDao();
		
		try {
			if(dao.check(uname, pass))
			{
				HttpSession session=request.getSession();
				session.setAttribute("username",uname);
				response.sendRedirect("welcome.jsp");
			}
			else
			{
				request.setAttribute("errorMessage", "Invalid username or password");
				RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
				rd.forward(request,response);
			}
		} catch (ClassNotFoundException  | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			request.setAttribute("errorMessage", "An error occurred. Please try again later.");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		} 
	}

	

}
