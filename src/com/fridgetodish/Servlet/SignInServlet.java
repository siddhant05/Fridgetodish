package com.fridgetodish.Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//import org.apache.log4j.Logger;

import com.fridgetodish.Action.DBConnection;
import com.fridgetodish.Pojo.User;

 
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
					//String lFirstName					=null;
					User lUser 				  			=new User();
					try{
						lConn= new DBConnection().getConnection();
						StringBuilder lBuilder = new StringBuilder("select user_name,first_name,last_name,email from users where user_name=? and password=?");
						
						lPstmt	= lConn.prepareStatement(lBuilder.toString());			 
						lPstmt.setString(1, lUserName);
						lPstmt.setString(2, lPassword);	
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
	        				session.setAttribute("user", lUser);
		        			//session.setAttribute("name",lFirstName);
		        			
		        			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/analysisPage.jsp");
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
		
		public User fetchUserDetails(String pEmail,Connection pConnection){
			
			PreparedStatement lPstmnt = null;
			ResultSet lRst			  = null;
			User lUser 				  = new User();
			
			try{
				StringBuilder lBuilder = new StringBuilder("select a.user_name,a.first_name,a.last_name,a.email from users a where a.email=? ");
										 lBuilder.append(" and a.rowstate!=-1");
				
				lPstmnt = pConnection.prepareStatement(lBuilder.toString());
				lPstmnt.setString(1, pEmail);
				lRst=lPstmnt.executeQuery();
				
				while(lRst.next()){
					lUser.setUsername(lRst.getString(1));
					lUser.setEmail(lRst.getString(4));
					lUser.setFirst_name(lRst.getString(2));
					lUser.setLast_name(lRst.getString(3));
					
					
				}
				
				
			}catch(Exception e){
				//LOGGER.error("Error Occured while fetching user details", e);
			}
			finally 
			{
				try {
					pConnection.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			return lUser;
		}
	}  

