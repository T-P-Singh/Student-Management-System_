package com.jsp.servlet_student.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.servlet_student.dao.AccountantDao;
import com.jsp.servlet_student.dto.Accountant;
import com.jsp.servlet_student.service.AccountantService;

@WebServlet(value="/addaccountant")
public class AccountantController extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name=req.getParameter("user");
		String email=req.getParameter("email");
		String passowrd=req.getParameter("password");
		long mobile=Long.parseLong(req.getParameter("mobile"));
	
		Accountant accountant=new Accountant();
		
		
		accountant.setName(name);;
		accountant.setEmail(email);
		accountant.setPassowrd(passowrd);
		accountant.setNumber(mobile);
		
		AccountantService accountantService=new AccountantService();
		PrintWriter printWriter=resp.getWriter();
		boolean b=accountantService.getByEmail(email);
		
		printWriter.write("<html><body>");
		if(b==false) {
			accountantService.insertAccountant(accountant);
			printWriter.write("<h2 style='color:green'>Data Entered Successfully</h2>");
			RequestDispatcher dispatcher=req.getRequestDispatcher("add_accountant.jsp");
			dispatcher.include(req, resp);
		}else {
			printWriter.write("<h6 style='color:red'>Duplicate entry. Email already present.Please enter different mail</h6>");
			RequestDispatcher dispatcher=req.getRequestDispatcher("add_accountant.jsp");
			dispatcher.include(req, resp);
		}
		printWriter.write("</body></html>");
	}
}
