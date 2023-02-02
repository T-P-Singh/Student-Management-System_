package com.jsp.servlet_student.dto;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Accountant {
	
	
	private String name;
	@Id
	private String email;
	private long number;
	private String passowrd;
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
	public long getNumber() {
		return number;
	}
	public void setNumber(long number) {
		this.number = number;
	}
	public String getPassowrd() {
		return passowrd;
	}
	public void setPassowrd(String passowrd) {
		this.passowrd = passowrd;
	}
	
	
}
