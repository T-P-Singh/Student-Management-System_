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

import com.jsp.servlet_student.dto.Admin;

@WebServlet(value="/login")
public class AdminInsertController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name=req.getParameter("user");
		String password=req.getParameter("password");	
		
		HttpSession httpSession=req.getSession();
		PrintWriter printWriter=resp.getWriter();
		
	
		
		if(name.equalsIgnoreCase("tejinder") && password.equalsIgnoreCase("123") ) {
			httpSession.setAttribute("user", name);
			
			printWriter.write("<h2 style='color:green'>Login Successfully</h2>");
			RequestDispatcher dispatcher=req.getRequestDispatcher("admin_section.jsp");
			dispatcher.include(req, resp);
		}
		else {
			printWriter.write("<h1 style=' color:red'> Invalid Credential !!!</h1> ");
			RequestDispatcher dispatcher=req.getRequestDispatcher("admin_login.jsp");
			dispatcher.include(req, resp);
		}
		
	}
}
