package com.jsp.servlet_student.dto;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Student {
	
	private String name;
	private String course;
	private String email;
	private String date;
	private double totalfees;
	private double paidfees;
	private double duefees;
	@Id
	private int rollno;
	private String address;
	private String country;
	private String state;
	private String city;
	private long mobile;
	private int pincode;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public double getTotalfees() {
		return totalfees;
	}
	public void setTotalfees(double totalfees) {
		this.totalfees = totalfees;
	}
	public double getPaidfees() {
		return paidfees;
	}
	public void setPaidfees(double paidfees) {
		this.paidfees = paidfees;
	}
	public double getDuefees() {
		return duefees;
	}
	public void setDuefees(double duefees) {
		this.duefees = duefees;
	}
	public int getRollno() {
		return rollno;
	}
	public void setRollno(int rollno) {
		this.rollno = rollno;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public long getMobile() {
		return mobile;
	}
	public void setMobile(long mobile) {
		this.mobile = mobile;
	}
	public int getPincode() {
		return pincode;
	}
	public void setPincode(int pincode) {
		this.pincode = pincode;
	}
	
	
	


}
	


