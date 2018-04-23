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

/**
* This class is used for fetching comments from database.
*
* @author  Siddant Mohanty
* @version 1.0
* @since   2018-03-10 
*/

@WebServlet(value="/FindCommentsServlet")
public class FindCommentsServlet extends HttpServlet {  
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	//private static final long serialVersionUID = 1L;

		protected void doPost(HttpServletRequest request, HttpServletResponse response)  
	                    throws ServletException, IOException {    
			String lRecipe=request.getParameter("recipeid");
			ResultSet lRst = null;
			
			Connection lConn						=null;
			PreparedStatement lPstmt				=null;
			StringBuilder lXMLBuilder				= new StringBuilder();
			try{
				lConn= new DBConnection().getConnection();
				
				String lQuery="select  b.first_name,a.comments,date(a.post_time) from reviews a join users b on a.user_id=b.user_id where a.recipe_id=?";
				
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

