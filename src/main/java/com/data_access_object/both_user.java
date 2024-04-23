package com.data_access_object;


import java.io.InputStream;
import java.io.Reader;
import java.math.BigDecimal;
import java.net.URL;
import java.sql.*;
import java.util.Calendar;

import com.entity.owner;






public class both_user {


	Connection con;

//constructor
	public both_user(Connection con) {
		
		this.con=con;
		
	}
	
	
	public Boolean insert(owner objectboth) throws SQLException {
		
		Boolean f=false;
		
		String query="insert into owner(name,email,password,adhar) values (?,?,?,?)";
	PreparedStatement ps=con.prepareStatement(query);
	ps.setString(1,objectboth.getName());
	ps.setString(2,objectboth.getEmail());
	ps.setString(3, objectboth.getPassword());
	ps.setInt(4, objectboth.getAdhar());
	
	
	ps.executeUpdate();
	f =true;
	return f;
	
	}
	 
	public owner getvalue(String email ,String password) throws Exception {
		
		 owner u=null;
		 String read="select * from user where email=? and password=?";
		
		 //set value in query
		 PreparedStatement ps=con.prepareStatement(read);
		 ps.setString(1,email);
		 ps.setString(2,password);
		
		 //get data from data base
		 ResultSet t= ps.executeQuery();
		 if(t.next()) {
			 u=new owner();
			 String name =t.getString("name");
			 u.setName(name);
			 
			 u.setEmail(t.getString("email"));
			 u.setPassword(t.getString("password"));
			 u.setAdhar(t.getInt("adhar"));
			
		 }
		
		
		
		return u;
	}







	

}
