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

 
@WebServlet(value="/Findbookmarks")
public class Findbookmarks extends HttpServlet {  
	/**
	* This class is used for finding recipe page.
	*
	* @author  Siddant Mohanty
	* @version 1.0
	* @since   2018-03-10 
	*/
	
	private static final long serialVersionUID = 1L;
	
	

		protected void doPost(HttpServletRequest request, HttpServletResponse response)  
	                    throws ServletException, IOException {    
			
			ResultSet lRst = null;
			User lUser=(User)request.getSession().getAttribute("user");
			
			
			Connection lConn						=null;
			PreparedStatement lPstmt				=null;
			StringBuilder lXMLBuilder				= new StringBuilder();
			try{
				lConn= new DBConnection().getConnection();
				String lQuery="select  b.recipe_name,b.recipepage_link From bookmarks a join recipes b on  a.recipe_id=b.recipe_id join users c on c.user_id=a.user_id where c.user_id=?";
				
				lPstmt	= lConn.prepareStatement(lQuery);
				lPstmt.setInt(1, lUser.getUserid());
				lRst=lPstmt.executeQuery();
				lXMLBuilder.append("<recipes>");
				while(lRst.next()){
					lXMLBuilder.append("<recipe>");
					lXMLBuilder.append("<name>" + lRst.getString(1)+"</name>");
					lXMLBuilder.append("<path>" + lRst.getString(2)+"</path>");
					lXMLBuilder.append("</recipe>");
				}
				lXMLBuilder.append("</recipes>");
				
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

