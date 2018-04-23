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
import javax.servlet.http.HttpSession;

import java.nio.charset.StandardCharsets;


//import org.apache.log4j.Logger;

import com.fridgetodish.Action.DBConnection;
import com.fridgetodish.Pojo.User;

 
@WebServlet(value="/RecipePage1Servlet")
public class RecipePage1Servlet extends HttpServlet {  
	
	private static final long serialVersionUID = 1L;

		protected void doPost(HttpServletRequest request, HttpServletResponse response)  
	                    throws ServletException, IOException {     
			
			/*String lUserName					=request.getParameter("user").toString();  
			String lPassword					=request.getParameter("password").toString();  */
			PreparedStatement lPstmt			=null;
			Connection lConn					=null;
			ResultSet lRst						=null;
			boolean lSigninFlag					=false;
			//String lFirstName					=null;
			User lUser 				  			=new User();
			try{
				lConn= new DBConnection().getConnection();
				StringBuilder lBuilder = new StringBuilder("select user_name,first_name,last_name,email from users where user_name=? and password=?");
				
				lPstmt	= lConn.prepareStatement(lBuilder.toString());			 
				/*lPstmt.setString(1, lUserName);
				lPstmt.setString(2, lPassword);	*/
				lRst=lPstmt.executeQuery();
				while(lRst.next()){
					lSigninFlag=true;
					lUser.setUsername(lRst.getString(1));
					lUser.setEmail(lRst.getString(4));
					lUser.setFirst_name(lRst.getString(2));
					lUser.setLast_name(lRst.getString(3));
				}
				
				if(lSigninFlag){
					HttpSession session=request.getSession();  
    				session.setAttribute("user", lUser.getFirst_name());
        			//session.setAttribute("name",lFirstName);
        			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/recipe-page-1.jsp");
        			rd.forward(request, response);
	        
				}
				else{
						}
	        }catch(Exception e){
	        }
	        
	        finally{
	        	try{
	        		
	        	}catch(Exception e1){
	        		//
	        	}
	        }
	        
	      }  
		
		protected void doGet(HttpServletRequest request, HttpServletResponse response)  
                throws ServletException, IOException{
			doPost(request, response);
			
		}
		
		
	}  

