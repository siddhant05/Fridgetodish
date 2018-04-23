package com.fridgetodish.Pojo;

/**
* This class provides object class for users.
*
* @author  Siddant Mohanty
* @version 1.0
* @since   2018-03-10 
*/




public class User{
	
	
	

	
	private String first_name;
	private String last_name;
	private String username;
	private String email;
	private Integer userid;
	
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	
	
}
