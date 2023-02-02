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

@WebServlet(value="/Admin_logout")
public class AdminLogOutController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession httpSession=req.getSession();
		httpSession.invalidate();
		PrintWriter printWriter=resp.getWriter();
		printWriter.write("<h3 style='color:red'>Invalid Credential !!</h3>");
		RequestDispatcher dispatcher=req.getRequestDispatcher("admin_login.jsp");
		dispatcher.include(req, resp);
	}
}
