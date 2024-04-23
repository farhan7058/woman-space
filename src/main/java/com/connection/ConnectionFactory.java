package com.connection;

import java.sql.*;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
	
	private static  Connection con;
	
	public static Connection getConnection() throws ClassNotFoundException, Exception {
		
		if(con==null) {
		//driver class load
		Class.forName("com.mysql.jdbc.Driver");
		
		//create connection
		String url="jdbc:mysql://localhost:3306/room rent";
		String username="root";
		String password="";
		
		 con=DriverManager.getConnection(url,username,password);
		
		}
		
		
	
		return con;
		
		
		
		
		
	}
	

}
