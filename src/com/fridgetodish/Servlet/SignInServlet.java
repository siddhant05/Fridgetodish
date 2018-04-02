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

//import org.apache.log4j.Logger;

import com.fridgetodish.Action.DBConnection;

 
@WebServlet(value="/SignInServlet")
public class SignInServlet extends HttpServlet {  
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	//private static final Logger LOGGER = Logger.getLogger(SignInServlet.class);
	//private static final long serialVersionUID = 1L;

		protected void doPost(HttpServletRequest request, HttpServletResponse response)  
	                    throws ServletException, IOException {  
			
		    
					String lUserName					=request.getParameter("user").toString();  
					String lPassword					=request.getParameter("password").toString();  
					PreparedStatement lPstmt			=null;
					Connection lConn					=null;
					ResultSet lRst						=null;
					boolean lSigninFlag					=false;
					String lFirstName					=null;
					try{
						lConn= new DBConnection().getConnection();
						StringBuilder lBuilder = new StringBuilder("select first_name from users where user_name=? and password=?");
						
						lPstmt	= lConn.prepareStatement(lBuilder.toString());			 
						lPstmt.setString(1, lUserName);
						lPstmt.setString(2, lPassword);	
						lRst=lPstmt.executeQuery();
						while(lRst.next()){
							lSigninFlag=true;
							lFirstName=lRst.getString(1);
						}
						
						if(lSigninFlag){
							HttpSession session=request.getSession();  
		        			session.setAttribute("name",lFirstName);
		        			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/success.jsp");
		        		    rd.forward(request, response);
		        			
							
						}else{
							
							//
						}
						
						
					}catch(Exception e){
						System.out.println("There is an error in upload,"+e.getMessage());
					}		      
			
			finally{
	        	try{
	        		
	        	}catch(Exception e1){
	        		//LOGGER.error("Error Occured while closing connection",e1);
	        	}
	        }

				
			             		
	        
	      }  
		
		protected void doGet(HttpServletRequest request, HttpServletResponse response)  
                throws ServletException, IOException{
			doPost(request, response);
			
		}
		
		
	}  

