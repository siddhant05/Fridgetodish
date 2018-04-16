package com.fridgetodish.Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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

 
@WebServlet(value="/RecipeInfoServlet")
public class RecipeInfoServlet extends HttpServlet {  
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static final Logger LOGGER = Logger.getLogger(RecipeInfoServlet.class);
	//private static final long serialVersionUID = 1L;

		protected void doGet(HttpServletRequest request, HttpServletResponse response)  
	                    throws ServletException, IOException {    
			
			Connection lConn=null;
			
			PreparedStatement lPstmt 					   = null;
			ResultSet lRst   							   = null;
			try{
				StringBuilder lXMLBuilder = new StringBuilder();
				lConn=new DBConnection().getConnection();
				String lSelectedRecipe=request.getParameter("lRC");
				StringBuilder lSearchQuery=  new StringBuilder("select recipe_id,recipe_desc from recipes where recipe_id=?");
											
											 
					lPstmt=lConn.prepareStatement(lSearchQuery.toString());
					
					lPstmt.setInt(1, Integer.parseInt(lSelectedRecipe));	
					lRst=lPstmt.executeQuery();
					lXMLBuilder.append("<recipes>");
					while(lRst.next()){
						
						lXMLBuilder.append("<recipe>"+lRst.getString(2)+"</recipe>");
						
					}
											 
					lXMLBuilder.append("</recipes>");
					response.setContentType("text/xml");
					response.setHeader("Cache-Control", "no-cache");
					
					response.getWriter().write(lXMLBuilder.toString());
				
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
		
		protected void doPost(HttpServletRequest request, HttpServletResponse response)  
                throws ServletException, IOException{
			
			
		}
		
		
	}  

