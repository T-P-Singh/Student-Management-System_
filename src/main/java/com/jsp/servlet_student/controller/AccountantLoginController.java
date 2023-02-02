package com.jsp.servlet_student.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jsp.servlet_student.dto.Accountant;
import com.jsp.servlet_student.service.AccountantService;

@WebServlet(value="/accountantlogin")
public class AccountantLoginController  extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String email_from_frontend=req.getParameter("email");
		String password_from_frontend=req.getParameter("password");

		HttpSession httpSession=req.getSession();
		PrintWriter printWriter=resp.getWriter();
		
		AccountantService accountantService=new AccountantService();

		Accountant get_email=accountantService.getByEmailAll(email_from_frontend);
//		System.out.println(get_email.getEmail());
//		System.out.println(email_from_frontend);
//		System.out.println(get_email.getPassowrd());
//		System.out.println(password_from_frontend);
//		List < Accountant> get_password=accountantService.getByPassword();
		
		printWriter.write("<html><body>");
			if(get_email!=null) {
			if ( (get_email.getEmail().equals(email_from_frontend)) && (get_email.getPassowrd().equals(password_from_frontend))) {
				httpSession.setAttribute("email", email_from_frontend);
				printWriter.write("<h1 style='color:green'>Login Successfully</h1>");
				RequestDispatcher dispatcher=req.getRequestDispatcher("accountant_section.jsp");
				dispatcher.include(req, resp);
			}else {
				printWriter.write("<h1 style='color:red'>Invalid Credential</h1>");
				RequestDispatcher dispatcher=req.getRequestDispatcher("accountant_login.jsp");
				dispatcher.include(req, resp);
			}
			printWriter.write("</body></html>");
		}	
			else {
				printWriter.write("<h1 style='color:red'>Invalid Credential</h1>");
				RequestDispatcher dispatcher=req.getRequestDispatcher("accountant_login.jsp");
				dispatcher.include(req, resp);
			}
	}
}
