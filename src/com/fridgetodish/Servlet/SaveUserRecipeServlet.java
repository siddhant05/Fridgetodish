package com.fridgetodish.Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import org.apache.log4j.Logger;

import com.fridgetodish.Action.DBConnection;
import com.fridgetodish.Pojo.User;

 
@WebServlet(value="/SaveUserRecipeServlet")
public class SaveUserRecipeServlet extends HttpServlet {  
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	//private static final long serialVersionUID = 1L;

		protected void doPost(HttpServletRequest request, HttpServletResponse response)  
	                    throws ServletException, IOException {    
			String lRecipeTitle=request.getParameter("recipe_title");
			String lRecipeDesc=request.getParameter("summary");
			
			User lUser=(User)request.getSession().getAttribute("user");
			Connection lConn						=null;
			PreparedStatement lPstmt				=null;
			
			try{
				lConn= new DBConnection().getConnection();
				StringBuilder lBuilder = new StringBuilder("insert into suggested_recipes (user_id,recipe_title,recipe_description) values ");
										 lBuilder.append("(?,?,?)");
				
				lPstmt	= lConn.prepareStatement(lBuilder.toString());			 
				lPstmt.setInt(1, lUser.getUserid());
				lPstmt.setString(2, lRecipeTitle);
				lPstmt.setString(3, lRecipeDesc);
				
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

