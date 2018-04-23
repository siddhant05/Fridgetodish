package com.fridgetodish.Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import org.apache.log4j.Logger;

import com.fridgetodish.Action.DBConnection;
import com.fridgetodish.Pojo.User;

 
@WebServlet(value="/SaveBookmarks")
public class SaveBookmarks extends HttpServlet {  
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	//private static final long serialVersionUID = 1L;

		protected void doPost(HttpServletRequest request, HttpServletResponse response)  
	                    throws ServletException, IOException {    
			String lRecipe=request.getParameter("recipeid");
			
			User lUser=(User)request.getSession().getAttribute("user");
			
			
			Connection lConn					=null;
			PreparedStatement lPstmt				=null;
			try{
				lConn= new DBConnection().getConnection();
				
				StringBuilder lBuilder = new StringBuilder("insert into bookmarks (user_id,recipe_id) values");
										 lBuilder.append("(?,?)");
				
				lPstmt	= lConn.prepareStatement(lBuilder.toString());			 
				lPstmt.setInt(1, lUser.getUserid());
				lPstmt.setInt(2, Integer.parseInt(lRecipe));
				lPstmt.executeUpdate();
			}catch(Exception e){
				System.out.println("There is an error in upload,"+e.getMessage());
			}
		
			
	        
	      }  
		
		protected void doGet(HttpServletRequest request, HttpServletResponse response)  
                throws ServletException, IOException{
			doPost(request, response);
			
		}
		
		
	}  

