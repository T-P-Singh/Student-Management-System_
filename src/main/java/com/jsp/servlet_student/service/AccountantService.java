package com.jsp.servlet_student.service;

import java.util.List;

import com.jsp.servlet_student.dao.AccountantDao;
import com.jsp.servlet_student.dto.Accountant;

public class AccountantService {

	AccountantDao accountantDao=new AccountantDao();
	
	//insert method for accountant
		public void insertAccountant(Accountant accountant) {
			accountantDao.insertAccountant(accountant);
		}
		
	//getByemail method
	public boolean getByEmail(String email) {
		return accountantDao.getByEmail(email);
	}
	//getByemail method
	public Accountant getByEmailAll(String email) {
			return accountantDao.getByEmailAll(email);
		}
	//display method
	public List<Accountant> displayAccountant(){
			return accountantDao.displayAccountant();
		}
	//update password method
	public void updatePassword(Accountant accountant,String email) {
			accountantDao.updatePassword( accountant,email);
		}
}
