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

		protected void doPost(HttpServletRequest request, HttpServletResponse response)  
	                    throws ServletException, IOException {    
			
			Connection lConn=null;
			LinkedHashMap<Integer, String> lRecipeMap = new LinkedHashMap<Integer, String>();
			PreparedStatement lPstmt 					   = null;
			ResultSet lRst   							   = null;
			try{
				lConn=new DBConnection().getConnection();				
				String[] lSelectedIngredients=request.getParameterValues("protien");
				
				StringBuilder lSearchQuery=  new StringBuilder("select b.recipe_id,b.recipe_name from recipes_ingredients_link a join recipes b on a.recipe_id=b.recipe_id");
											 lSearchQuery.append(" join ingredients c on c.ingredient_id=a.ingredient_id where a.ingredient_id in (xxx)");
				
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
					while(lRst.next()){
						lRecipeMap.put(lRst.getInt(1), lRst.getString(2));
					}
											 
			    RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/analysisPage.jsp");
			    LinkedHashMap<Integer,String>lIngredientMap=new LinkedHashMap<Integer,String>();
				lIngredientMap=new CommonMethods().getIngredients(lConn);
				request.setAttribute("protien", lIngredientMap);
			    request.setAttribute("recipes", lRecipeMap); 
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

