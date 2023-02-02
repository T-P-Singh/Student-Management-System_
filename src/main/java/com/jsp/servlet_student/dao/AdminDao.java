package com.jsp.servlet_student.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import com.jsp.servlet_student.dto.Admin;

public class AdminDao {
	
	EntityManagerFactory entityManagerFactory=Persistence.createEntityManagerFactory("Tejinder");
	EntityManager entityManager=entityManagerFactory.createEntityManager();
	EntityTransaction entityTransaction=entityManager.getTransaction();
	
	//insert method for admin
	public void insertAdmin(Admin admin) {
		entityTransaction.begin();
		entityManager.persist(admin);
		entityTransaction.commit();
	}
	

}
