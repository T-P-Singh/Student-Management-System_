<%@page import="com.jsp.servlet_student.dto.Accountant"%>
<%@page import="java.util.List"%>
<%@page import="com.jsp.servlet_student.service.AccountantService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Accountant Display Page</title>
<style >
body{
background-image: url(accdis.jpg);
background-repeat: no-repeat;
background-size: cover;
}
.back{
        position: relative;
        top: 30px;
        text-decoration: none;
        font-size: 16px;
        left: 150px;
        font-family:cursive;
        color: white;
         display:inline-block;
     	background-color: rgba(255, 166, 0, 0.175);
        border: 2px solid rgb(7, 7, 7);
        width:50px;
        height:30px;
        text-align:center;
}
table{
border:2px solid black;
		font-family:cursive;
        color: white;
}
.columnheading{
font-family:cursive;
        color: black;
}
</style>
</head>
<body>
<h1 style="color:white;font-family: cursive;font-size: 35px; text-align: center;">Accountant Display Table</h1>
<% AccountantService accountantService=new AccountantService();
List <Accountant> accountantlist=accountantService.displayAccountant(); 
%>
<table border='2'>
<tr class="columnheading">
	<th>Accountant_Name</th>
	<th>Accountant_Email</th>
	<th>Accountant_Mobile</th>
	<th>Accountant_Password</th>
</tr> 	

<% for(Accountant accountant1:accountantlist){ %>
<tr>
	<td><%=accountant1.getName()%> </td>
	<td><%=accountant1.getEmail()%> </td>
	<td><%=accountant1.getNumber()%> </td>
	<td><%=accountant1.getPassowrd()%> </td>
</tr>	
<%} %>
</table>
<a class="back" href="admin_section.jsp">Back</a>
</body>
</html>