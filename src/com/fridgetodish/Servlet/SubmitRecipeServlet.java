package com.fridgetodish.Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 
@WebServlet(value="/SubmitRecipeServlet")
public class SubmitRecipeServlet extends HttpServlet {  
	/**
	* This class is used for submitting recipe page.
	*
	* @author  Siddant Mohanty
	* @version 1.0
	* @since   2018-03-10 
	*/
	
	private static final long serialVersionUID = 1L;
	//private static final Logger LOGGER = Logger.getLogger(LoginServlet.class);
	//private static final long serialVersionUID = 1L;

		protected void doPost(HttpServletRequest request, HttpServletResponse response)  
	                    throws ServletException, IOException {    
			//String email=request.getParameter("email").toString();  
	       // String password=request.getParameter("password");  
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/submit-recipe.jsp");
		    rd.forward(request, response);
	        
	        try{
	        	
	        }catch(Exception e){
	        	//LOGGER.error("Error Occured while validating user",e);
	        }finally{
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

