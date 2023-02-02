package com.jsp.servlet_student.service;

import java.util.List;

import com.jsp.servlet_student.dao.StudentDao;
import com.jsp.servlet_student.dto.Student;

public class StudentService {
	
	StudentDao studentDao=new StudentDao();
	
	//insert method
		public void insertStudent(Student Student) {
			studentDao.insertStudent(Student);
		}
		//getroll method
		public boolean getRoll(int roll) {
			return studentDao.getRoll(roll);
		}
		//studentDisplay method
		public List<Student> displayStudent(){
			return studentDao.displayStudent();
		}
		//Student update method
		public void updateStudent(Student student,int roll) {
			studentDao.updateStudent(student,roll);
		}
		//GetStudentDetailbyId
		public Student getAllDetails(int roll) {
			return studentDao.getAllDetails(roll);
		}
		//delete method
		public void deleteStudent(int roll) {
			studentDao.deleteStudent(roll);
		}
		
}
