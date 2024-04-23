package com.entity;

public class room {
	private String email;
	private String address;
	private String city;
	private int mob;
	private int rate;
	private String photo;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public int getMob() {
		return mob;
	}
	public void setMob(int mob) {
		this.mob = mob;
	}
	public int getRate() {
		return rate;
	}
	public void setRate(int rate) {
		this.rate = rate;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public room(String email, String address, String city, int mob, int rate, String photo) {
		super();
		this.email = email;
		this.address = address;
		this.city = city;
		this.mob = mob;
		this.rate = rate;
		this.photo = photo;
	}
	public room() {
		super();
		// TODO Auto-generated constructor stub
	}

}
