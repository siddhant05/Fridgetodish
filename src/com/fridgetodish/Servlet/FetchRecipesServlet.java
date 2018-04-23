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

 
@WebServlet(value="/FetchRecipesServlet")
public class FetchRecipesServlet extends HttpServlet {  
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static final Logger LOGGER = Logger.getLogger(FetchRecipesServlet.class);
	//private static final long serialVersionUID = 1L;

		protected void doGet(HttpServletRequest request, HttpServletResponse response)  
	                    throws ServletException, IOException {    
			
			Connection lConn=null;
			//LinkedHashMap<String, String> lRecipeMap = new LinkedHashMap<String, String>();
			PreparedStatement lPstmt 					   = null;
			ResultSet lRst   							   = null;
			try{
				lConn=new DBConnection().getConnection();			
				StringBuilder lXMLBuilder = new StringBuilder();
				String[] lSelectedIngredients=request.getParameterValues("lRC[]");
			
				
				StringBuilder lSearchQuery=  new StringBuilder("select r.recipe_name, r.recipepage_link, r.image_link, r.cooking_time,C.recipe_id from ");
											 lSearchQuery.append(" (select  recipe_id, count(ingredient_id) as Count_Matched, (select count(ingredient_id) ");
											 lSearchQuery.append(" from recipes_ingredients_link ril  where rl.recipe_id=ril.recipe_id ) as Count_Total ");
											 lSearchQuery.append(" from recipes_ingredients_link rl where ingredient_id in (xxx) ");
											 lSearchQuery.append(" group by recipe_id) as C inner join recipes r on r.recipe_id=C.recipe_id where C.Count_Total-C.Count_Matched=0 ");
					
											 
					String lQs="";
					for(int i=0;i<lSelectedIngredients.length;i++){
						if(i==0){
							lQs="?";
						}else{
							lQs=lQs+","+"?";
						}
					}
					String lQueryFinal=	lSearchQuery.toString().replaceAll("xxx", lQs);	 
					lPstmt=lConn.prepareStatement(lQueryFinal);
					for(int j=0;j<lSelectedIngredients.length;j++){
						lPstmt.setInt(1+j, Integer.parseInt(lSelectedIngredients[j]));
					}
					
					lRst=lPstmt.executeQuery();
					lXMLBuilder.append("<recipes>");
					while(lRst.next()){
						lXMLBuilder.append("<recipe>");
						lXMLBuilder.append("<id>" + lRst.getInt(5)+"</id>");
						lXMLBuilder.append("<name>" + lRst.getString(1)+"</name>");
						lXMLBuilder.append("<link>" + lRst.getString(2) +"</link>");
						lXMLBuilder.append("<pic>" + lRst.getString(3) +"</pic>");
						lXMLBuilder.append("<time>" + lRst.getString(4) +"</time>");
						lXMLBuilder.append("</recipe>");
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
	}  

