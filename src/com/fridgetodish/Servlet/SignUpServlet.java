package com.fridgetodish.Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import org.apache.log4j.Logger;

import com.fridgetodish.Action.DBConnection;

 
@WebServlet(value="/SignUpServlet")
public class SignUpServlet extends HttpServlet {  
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	//private static final long serialVersionUID = 1L;

		protected void doPost(HttpServletRequest request, HttpServletResponse response)  
	                    throws ServletException, IOException {    
			String lFirstName					=request.getParameter("first_name").toString();  
			String lLastName					=request.getParameter("last_name").toString(); 
			String lUserName					=request.getParameter("user").toString();  
			String lEmail						=request.getParameter("email").toString(); 
			String lPassword					=request.getParameter("password").toString();  
			PreparedStatement lPstmt			=null;
			Connection lConn					=null;
			
			try{
				lConn= new DBConnection().getConnection();
				StringBuilder lBuilder = new StringBuilder("insert into users (user_name,first_name,last_name,email,is_admin,password,logged_date,logged_by,rowstate) values ");
										 lBuilder.append("(?,?,?,?,?,?,?,?,?)");
				
				lPstmt	= lConn.prepareStatement(lBuilder.toString());			 
				lPstmt.setString(1, lUserName);
				lPstmt.setString(2, lFirstName);	
				lPstmt.setString(3, lLastName);	
				lPstmt.setString(4, lEmail);
				lPstmt.setNull(5, java.sql.Types.VARCHAR);
				lPstmt.setString(6, lPassword);
				lPstmt.setNull(7,java.sql.Types.TIMESTAMP );
				lPstmt.setLong(8, 1);
				lPstmt.setInt(9, 1);
				lPstmt.executeUpdate();
			}catch(Exception e){
				System.out.println("There is an error in upload,"+e.getMessage());
			}
		
			
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/success.jsp");
		    rd.forward(request, response);
	        
	        
	      }  
		
		protected void doGet(HttpServletRequest request, HttpServletResponse response)  
                throws ServletException, IOException{
			doPost(request, response);
			
		}
		
		
	}  

