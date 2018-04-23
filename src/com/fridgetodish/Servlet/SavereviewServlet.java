package com.fridgetodish.Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import org.apache.log4j.Logger;

import com.fridgetodish.Action.DBConnection;
import com.fridgetodish.Pojo.User;

 
@WebServlet(value="/SavereviewServlet")
public class SavereviewServlet extends HttpServlet {  
	/**
	* This class is used for saving reviews from recipe page.
	*
	* @author  Siddant Mohanty
	* @version 1.0
	* @since   2018-03-10 
	*/
	
	private static final long serialVersionUID = 1L;
	
	//private static final long serialVersionUID = 1L;

		protected void doPost(HttpServletRequest request, HttpServletResponse response)  
	                    throws ServletException, IOException {    
			String lRecipe=request.getParameter("recipeid");
			ResultSet lRst = null;
			User lUser=(User)request.getSession().getAttribute("user");
			String lComment=request.getParameter("comments");
			
			Connection lConn						=null;
			PreparedStatement lPstmt				=null;
			StringBuilder lXMLBuilder				= new StringBuilder();
			try{
				lConn= new DBConnection().getConnection();
				StringBuilder lBuilder = new StringBuilder("insert into reviews (user_id,recipe_id,post_time,review) values ");
										 lBuilder.append("(?,?,?,?)");
				
				lPstmt	= lConn.prepareStatement(lBuilder.toString());			 
				lPstmt.setInt(1, lUser.getUserid());
				lPstmt.setInt(2, Integer.parseInt(lRecipe));
				
				java.util.Date dt = new java.util.Date();

				java.text.SimpleDateFormat sdf = 
				     new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

				String currentTime = sdf.format(dt);
				lPstmt.setString(3, currentTime);
				lPstmt.setString(4, lComment);
				
				lPstmt.executeUpdate();
				String lQuery="select  b.first_name,a.review,date(a.post_time) from reviews a join users b on a.user_id=b.user_id where a.recipe_id=?";
				lPstmt.clearParameters();
				lPstmt	= lConn.prepareStatement(lQuery);
				lPstmt.setInt(1, Integer.parseInt(lRecipe));
				lRst=lPstmt.executeQuery();
				lXMLBuilder.append("<reviews>");
				while(lRst.next()){
					lXMLBuilder.append("<review>");
					lXMLBuilder.append("<name>" + lRst.getString(1)+"</name>");
					lXMLBuilder.append("<date>" + lRst.getString(2)+"</date>");
					lXMLBuilder.append("<comment>" + lRst.getString(3)+"</comment>");
					lXMLBuilder.append("</review>");
				}
				lXMLBuilder.append("</reviews>");
				
				response.setContentType("text/xml");
				response.setHeader("Cache-Control", "no-cache");
				response.getWriter().write(lXMLBuilder.toString());
				
				
			}catch(Exception e){
				System.out.println("There is an error in upload,"+e.getMessage());
			}
		
			
			
	        
	        
	      }  
		
		protected void doGet(HttpServletRequest request, HttpServletResponse response)  
                throws ServletException, IOException{
			doPost(request, response);
			
		}
		
		
	}  

