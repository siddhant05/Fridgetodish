package com.fridgetodish.Servlet;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import org.apache.log4j.Logger;

import com.fridgetodish.Action.DBConnection;

 
@WebServlet(value="/SubmitRecipeServlet")
public class SubmitRecipeServlet extends HttpServlet {  
	/**
	 * 
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

