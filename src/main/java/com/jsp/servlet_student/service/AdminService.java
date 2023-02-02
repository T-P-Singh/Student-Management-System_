package com.jsp.servlet_student.service;

import com.jsp.servlet_student.dao.AdminDao;
import com.jsp.servlet_student.dto.Admin;

public class AdminService {

	AdminDao adminDao =new AdminDao();
	
	//insert method for admin
		public void insertAdmin(Admin admin) {
			adminDao.insertAdmin(admin);
		}
}
