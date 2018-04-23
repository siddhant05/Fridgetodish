package com.fridgetodish.Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.util.LinkedHashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fridgetodish.Action.CommonMethods;

//import org.apache.log4j.Logger;

import com.fridgetodish.Action.DBConnection;

/**
* This class is used for rendering browse recipe page.
*
* @author  Siddant Mohanty
* @version 1.0
* @since   2018-03-10 
*/
@WebServlet(value="/BrowseRecipeServlet")
public class BrowseRecipeServlet extends HttpServlet {  
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
		protected void doPost(HttpServletRequest request, HttpServletResponse response)  
	                    throws ServletException, IOException {    
			  
			Connection lConn=null;
			try{
				lConn=new DBConnection().getConnection();
				LinkedHashMap<Integer,String>lIngredientMap=new LinkedHashMap<Integer,String>();
				RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/browse-recipes.jsp");
				lIngredientMap=new CommonMethods().getIngredients(lConn);
				request.setAttribute("protien", lIngredientMap);
				response.setContentType("text/html; charset=UTF-8");
				response.setCharacterEncoding("utf-8");
				rd.forward(request, response);
			}catch(Exception e){
				
			}
			
	     
	        
	      }  
		
		protected void doGet(HttpServletRequest request, HttpServletResponse response)  
                throws ServletException, IOException{
			doPost(request, response);
			
		}
		
		
	}  

