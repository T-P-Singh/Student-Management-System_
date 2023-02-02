package com.jsp.servlet_student.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.servlet_student.dto.Accountant;
import com.jsp.servlet_student.service.AccountantService;

@WebServlet(value="/updatepassword")
public class AccountantPasswordUpdateController extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String new_password =req.getParameter("new_password");
		String email_for_backend=req.getParameter("email_from_frontend");
		Accountant accountant=new Accountant();
		AccountantService accountantService=new AccountantService();
		
		accountantService.updatePassword(accountant,email_for_backend);
		Accountant accountant2=accountantService.getByEmailAll(email_for_backend);
		
		if(accountant2!=null) {
		if(accountant2.getEmail().equals(email_for_backend)) {
			accountant.setPassowrd(new_password);
			PrintWriter printWriter=resp.getWriter();
			printWriter.write("<html><body>");
			printWriter.write("<h2 style='color:green'>Password updated !!</h2>");
			printWriter.write("</body></html>");
			RequestDispatcher dispatcher=req.getRequestDispatcher("accountant_login.jsp");
			dispatcher.include(req, resp);
		}else {
			PrintWriter printWriter=resp.getWriter();
			printWriter.write("<html><body>");
			printWriter.write("<h2 style='color:red'>Wrong email address !!</h2>");
			printWriter.write("</body></html>");
			RequestDispatcher dispatcher=req.getRequestDispatcher("accountant_email_check_for_password.jsp");
			dispatcher.include(req, resp);
		}
		}
		else {
				PrintWriter printWriter=resp.getWriter();
				printWriter.write("<html><body>");
				printWriter.write("</body></html>");
				RequestDispatcher dispatcher=req.getRequestDispatcher("accountant_email_check_for_password.jsp");
				dispatcher.include(req, resp);
			
		}
	}
}
