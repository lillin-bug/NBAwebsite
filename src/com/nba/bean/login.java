package com.nba.bean;
/**
 * 
 * @author kong
 *	对数据库login表的封装
 */
public class login {
	private int id;
	private String username;
	private String password;
	private int admin;
	private String email;
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getAdmin() {
		return admin;
	}
	public void setAdmin(int admin) {
		this.admin = admin;
	}
	@Override
	public String toString() {
		return "login [id=" + id + ", username=" + username + ", password=" + password + ", admin=" + admin + "]";
	}
	
}
