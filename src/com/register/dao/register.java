package com.register.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class register {
	
	String sql="insert into login  (uname,pass) values (?,?)";
	String url="jdbc:mysql://localhost:3306/jay";
	String username="root";
	String password="Jay@2003";
	
	public void addValues(String uname,String confirm_pass) throws SQLException, ClassNotFoundException
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,username,password);
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1,uname);
		st.setString(2,confirm_pass);
		st.executeUpdate();
		st.close();
		con.close();
		
		
	}

}
