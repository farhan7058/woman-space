package com.entity;

import java.sql.Timestamp;

public class book {
	private String email;
	private Timestamp enter;
	private Timestamp out;
	private String city;
	private int age;
	private int mob;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Timestamp getEnter() {
		return enter;
	}
	public void setEnter(Timestamp enter) {
		this.enter = enter;
	}
	public Timestamp getOut() {
		return out;
	}
	public void setOut(Timestamp out) {
		this.out = out;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public int getMob() {
		return mob;
	}
	public void setMob(int mob) {
		this.mob = mob;
	}
	@Override
	public String toString() {
		return "book [email=" + email + ", enter=" + enter + ", out=" + out + ", city=" + city + ", age=" + age
				+ ", mob=" + mob + "]";
	}
	public book(String email, Timestamp enter, Timestamp out, String city, int age, int mob) {
		super();
		this.email = email;
		this.enter = enter;
		this.out = out;
		this.city = city;
		this.age = age;
		this.mob = mob;
	}
	public book() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

}
