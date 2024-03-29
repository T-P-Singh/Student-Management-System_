package com.jsp.servlet_student.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.servlet_student.dto.Student;
import com.jsp.servlet_student.service.StudentService;

@WebServlet(value="/deletestudent")
public class StudentDeleteController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		StudentService studentService=new StudentService();
		
			
			studentService.deleteStudent(Integer.parseInt(req.getParameter("roll")));
	
		
		
		RequestDispatcher dispatcher=req.getRequestDispatcher("student_display.jsp");
		dispatcher.include(req, resp);
	}
}
