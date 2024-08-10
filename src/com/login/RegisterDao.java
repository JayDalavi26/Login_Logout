package com.login;
import com.register.dao.*;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisterDao
 */
@WebServlet("/Register")
public class RegisterDao extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname=request.getParameter("uname");
		String pass=request.getParameter("confirm_pass");
		
		register dao=new register();
		try {
            try {
				dao.addValues(uname, pass);
				response.sendRedirect("login.jsp");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
	}

}
