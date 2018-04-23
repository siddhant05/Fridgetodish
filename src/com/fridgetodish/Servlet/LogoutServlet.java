package com.fridgetodish.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

 
@WebServlet(value="/LogoutServlet")
public class LogoutServlet extends HttpServlet {  
	/**
	* This class is used for logging out from session.
	*
	* @author  Siddant Mohanty
	* @version 1.0
	* @since   2018-03-10 
	*/
	
	private static final long serialVersionUID = 1L;
	//private static final Logger LOGGER = Logger.getLogger(LogoutServlet.class);
	//private static final long serialVersionUID = 1L;

		protected void doPost(HttpServletRequest request, HttpServletResponse response)  
	                    throws ServletException, IOException {
			
				response.setContentType("text/html");  
	            PrintWriter out=response.getWriter();  
	            request.getRequestDispatcher("/LoginServlet").include(request, response);  
	            HttpSession session=request.getSession();  
	            session.invalidate();  
	            out.close();  

		}  
		
		protected void doGet(HttpServletRequest request, HttpServletResponse response)  
                throws ServletException, IOException{
			doPost(request, response);
			
		}
		
		
	}  

