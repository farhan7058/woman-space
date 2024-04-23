package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.print.attribute.DateTimeSyntax;
import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.connection.ConnectionFactory;
import com.data_access_object.both_user;
import com.entity.owner;


/**
 * Servlet implementation class registration
 */
public class registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String check=request.getParameter("check");
		if(check==null) {
			
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			out.print("please check the conditions");
		}
		
		else {
			String name=request.getParameter("name");
			
			String email=request.getParameter("email");
			String password=request.getParameter("password");
			
			
			int adhar=Integer.parseInt(request.getParameter("adhar"));
			owner objectboth=new owner(name,email,password,adhar);
		
		
			try {
				both_user s=new both_user(ConnectionFactory.getConnection());
				s.insert(objectboth);
				response.setContentType("text/html");
				PrintWriter out=response.getWriter();
				out.print("<h1 style='color:red'>store data in database</h1>");
				
			}catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		}
		
	}

}
