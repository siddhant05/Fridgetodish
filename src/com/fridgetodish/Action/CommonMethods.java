package com.fridgetodish.Action;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.LinkedHashMap;

import org.apache.log4j.Logger;

public class CommonMethods {
	private static final Logger LOGGER = Logger.getLogger(CommonMethods.class);
	public LinkedHashMap<Integer, String> getIngredients(Connection pConnection) {

		
		LinkedHashMap<Integer, String> lIngredienteMap = new LinkedHashMap<Integer, String>();
		PreparedStatement lPstmt = null;
		ResultSet lRst = null;
		try {
			
			String lBuilder = "select ingredient_id,ingredient_name from ingredients";
			lPstmt = pConnection.prepareStatement(lBuilder);
			lRst = lPstmt.executeQuery();
			while (lRst.next()) {

				lIngredienteMap.put(lRst.getInt(1), lRst.getString(2));

			}

		} catch (Exception e) {
			LOGGER.error("Error Occured while getting the cellline names", e);
		}
		return lIngredienteMap;
	}

}
