package com.jsp.servlet_student.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import com.jsp.servlet_student.dto.Accountant;


public class AccountantDao {
	
	EntityManagerFactory entityManagerFactory=Persistence.createEntityManagerFactory("Tejinder");
	EntityManager entityManager=entityManagerFactory.createEntityManager();
	EntityTransaction entityTransaction=entityManager.getTransaction();
	
	
	//insert method for accountant
	public void insertAccountant(Accountant accountant){
		entityTransaction.begin();
		entityManager.persist(accountant);
		entityTransaction.commit();
	}
	//getByemail method
	public boolean getByEmail(String email) {
		Accountant accountant= entityManager.find(Accountant.class, email);
		if(accountant!=null) {
			return true;
		}else {
			return false;
		}
	}
	//getByemail method
	public Accountant getByEmailAll(String email) {
		Accountant accountant1 =entityManager.find(Accountant.class, email);
		if(accountant1!=null) {
			return accountant1;
		}else {
			return null;
		}
	}
	//display method
	public List<Accountant> displayAccountant(){
		String dislay="select a from Accountant a";
		return entityManager.createQuery(dislay,Accountant.class).getResultList();
	}
	//update password method
	public void updatePassword(Accountant accountant,String email) {
		Accountant accountant1=entityManager.find(Accountant.class , email);
		if(accountant1!=null) {
			if(accountant.getPassowrd()!=null)
			accountant1.setPassowrd(accountant.getPassowrd());
			entityTransaction.begin();
			entityManager.merge(accountant1);
			entityTransaction.commit();
		}
	}
}
