package com.studentapp.conn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connect {
    public static Connection getConnect(){
		// TODO Auto-generated method stub
		String url = "jdbc:mysql://localhost:3306/studentapp";
		String user = "root";
		String password = "Hanumanta@2004";
		
		Connection con = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
	
			con  =DriverManager.getConnection(url,user,password);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
    }
}
