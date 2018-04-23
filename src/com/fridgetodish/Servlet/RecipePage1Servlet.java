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

import com.fridgetodish.Pojo.User;

 
@WebServlet(value="/RecipePage1Servlet")
public class RecipePage1Servlet extends HttpServlet {  
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	//private static final Logger LOGGER = Logger.getLogger(SignInServlet.class);
	//private static final long serialVersionUID = 1L;

		protected void doPost(HttpServletRequest request, HttpServletResponse response)  
	                    throws ServletException, IOException {  
			
		    
					try{
						String lRecipeID=request.getParameter("recipe");
						request.setAttribute("recipeid", lRecipeID);
						response.setContentType("text/html; charset=UTF-8");
        				response.setCharacterEncoding("utf-8");
						RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/recipe-page-1.jsp");
		        		    rd.forward(request, response);
		        			
							
						
						
						
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

