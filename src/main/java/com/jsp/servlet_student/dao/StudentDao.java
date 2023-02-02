package com.jsp.servlet_student.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import com.jsp.servlet_student.dto.Student;

public class StudentDao {
	EntityManagerFactory entityManagerFactory=Persistence.createEntityManagerFactory("Tejinder");
	EntityManager entityManager=entityManagerFactory.createEntityManager();
	EntityTransaction entityTransaction=entityManager.getTransaction();
	
	//insert method
	public void insertStudent(Student Student) {
		entityTransaction.begin();
		entityManager.persist(Student);
		entityTransaction.commit();
	}
	//getroll method
	public boolean getRoll(int roll) {
		Student student= entityManager.find(Student.class, roll);
		if(student!=null) {
			return true;
		}else {
			return false;
		}
	}
	//studentDisplay method
	public List<Student> displayStudent(){
		String display="Select s from Student s";
		return entityManager.createQuery(display,Student.class).getResultList();
		
	}
	//GetStudentDetailbyId
	public Student getAllDetails(int roll) {
		Student student= entityManager.find(Student.class, roll);
		if(student!=null) {
			return student;
		}
		else {
			return null;
		}
	}
	
	//Student update method
	public void updateStudent(Student student,int roll) {
	Student student1= entityManager.find(Student.class,roll );
	if(student1!=null) {
		student1.setAddress(student.getAddress());
		student1.setCity(student.getCity());
		student1.setCountry(student.getCountry());
		student1.setCourse(student.getCourse());
		student1.setDate(student.getDate());
		student1.setDuefees(student.getDuefees());
		student1.setEmail(student.getEmail());
		student1.setMobile(student.getMobile());
		student1.setName(student.getName());
		student1.setPaidfees(student.getPaidfees());
		student1.setPincode(student.getPincode());
		student1.setState(student.getState());
		student1.setTotalfees(student.getTotalfees());
		entityTransaction.begin();
		entityManager.merge(student1);
		entityTransaction.commit();
		System.out.println("data updated for all");
	}
		else {
			System.out.println("student roll no not valid !!!");
		}
	}
	//delete method
	public void deleteStudent(int roll) {
		 entityTransaction.begin();
		 entityManager.remove(entityManager.find(Student.class, roll));
		 entityTransaction.commit();
	 
	}
	}

