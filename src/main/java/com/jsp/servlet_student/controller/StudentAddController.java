package com.jsp.servlet_student.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jsp.servlet_student.dto.Student;
import com.jsp.servlet_student.service.StudentService;

@WebServlet(value="/addstudent")
public class StudentAddController extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name=req.getParameter("user");
		String course=req.getParameter("course");
		String email=req.getParameter("email");
		String DOB=req.getParameter("dob");
		double total_fees=Double.parseDouble(req.getParameter("fee"));
		double paid_fees=Double.parseDouble(req.getParameter("paidfee"));
		double due_fees=Double.parseDouble(req.getParameter("duefee"));
		int roll=Integer.parseInt(req.getParameter("rollno"));
		String address=req.getParameter("address");
		String country=req.getParameter("country");
		String state=req.getParameter("state");
		String city=req.getParameter("city");
		long mobile=Long.parseLong(req.getParameter("mobile"));
		int pincode=Integer.parseInt(req.getParameter("pincode"));
		
		Student student=new Student();
		student.setName(name);
		student.setCourse(course);
		student.setEmail(email);
		student.setDate(DOB);
		student.setTotalfees(total_fees);
		student.setPaidfees(paid_fees);
		student.setDuefees(due_fees);
		student.setRollno(roll);
		student.setAddress(address);
		student.setCountry(country);
		student.setState(state);
		student.setCity(city);
		student.setMobile(mobile);
		student.setPincode(pincode);
		
		PrintWriter printWriter=resp.getWriter();
		StudentService studentService=new StudentService();
		boolean b=studentService.getRoll(roll);
		printWriter.write("<html><body>");
		if(b==false) {
			studentService.insertStudent(student);
			printWriter.write("<h2 style='color:black; border:7px'>Student data entered Succesfully !!!</h2>");
			RequestDispatcher dispatcher=req.getRequestDispatcher("add_student.jsp");
			dispatcher.include(req, resp);
		}else {
			printWriter.write("<h4 style='color:red'>Roll no. already present. Please enter different roll no. !!!</h4>");
			RequestDispatcher dispatcher=req.getRequestDispatcher("add_student.jsp");
			dispatcher.include(req, resp);
		}
		printWriter.write("</body></html>");
	}
}
