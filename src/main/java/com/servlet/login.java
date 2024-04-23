package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.ConnectionFactory;
import com.data_access_object.both_user;
import com.entity.owner;



public class login extends HttpServlet {
	
	
       
    
    public login() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		
		String email= request.getParameter("email");
	    String password=  request.getParameter("password");
	
	  
	  
	  
	  
	try {
		both_user dao= new both_user(ConnectionFactory.getConnection());
		//user type ka object h s 
		//kio k hum ne userdao m user type ka method banaya tha getvalue jo k user ko return krta hai isliye
		owner s=dao.getvalue(email, password);
		
		if(s==null) {
			
		
			
			response.sendRedirect("ower loging.jsp");
			
			
		}else {
			//jab tak brower chalo rahega tb tak e login rahe ga iski madase
			HttpSession j=request.getSession();
			
			j.setAttribute("current",s);
			response.sendRedirect("owner post.jsp");
			
			
		}
		  
		  
		  
		  
		  
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	 
	  
	
	
	
	
	
	}

}
