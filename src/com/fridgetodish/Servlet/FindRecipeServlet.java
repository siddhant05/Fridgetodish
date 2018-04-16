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

import org.apache.log4j.Logger;

import com.fridgetodish.Action.CommonMethods;
import com.fridgetodish.Action.DBConnection;

 
@WebServlet(value="/FindRecipeServlet")
public class FindRecipeServlet extends HttpServlet {  
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static final Logger LOGGER = Logger.getLogger(FindRecipeServlet.class);
	//private static final long serialVersionUID = 1L;

		protected void doPost(HttpServletRequest request, HttpServletResponse response)  
	                    throws ServletException, IOException {    
			
			Connection lConn=null;
			try{
				lConn=new DBConnection().getConnection();
				LinkedHashMap<Integer,String>lIngredientMap=new LinkedHashMap<Integer,String>();
				lIngredientMap=new CommonMethods().getIngredients(lConn);
				request.setAttribute("protien", lIngredientMap);
				request.setAttribute("vegetable", lIngredientMap);
				request.setAttribute("spices", lIngredientMap);
				request.setAttribute("dairy", lIngredientMap);
				RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/analysisPage.jsp");
			    rd.forward(request, response);
				
			}catch(Exception e){
				
			}
			
	       finally{
	        	try{
	        		lConn.close();
	        	}catch(Exception e1){
	        		LOGGER.error("Error Occured while closing connection",e1);
	        	}
	        }
	        
	      }  
		
		protected void doGet(HttpServletRequest request, HttpServletResponse response)  
                throws ServletException, IOException{
			doPost(request, response);
			
		}
		
		
	}  

