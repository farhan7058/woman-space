package com.entity;

public class owner {
	private String name;
	private String email;
	private String password;
	private int adhar;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getAdhar() {
		return adhar;
	}
	public void setAdhar(int adhar) {
		this.adhar = adhar;
	}
	public owner() {
		super();
		// TODO Auto-generated constructor stub
	}
	public owner(String name, String email, String password, int adhar) {
		super();
		this.name = name;
		this.email = email;
		this.password = password;
		this.adhar = adhar;
	}

}
