<%@page import="java.util.List"%>
<%@page import="com.jsp.servlet_student.dto.Student"%>
<%@page import="com.jsp.servlet_student.service.StudentService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Accountant Section</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='main.css'>
    <script src='main.js'></script>
    <style>
    body{
background-color:#c25346;
background-repeat: no-repeat;
background-size: cover;
}
     .back{
     	display:inline-block;
     	background-color: (yellow);
        border: 2px solid rgb(7, 7, 7);
        width:50px;
        height:30px;
        text-align:center;
        position: relative;
        top: 40px;
        text-decoration: none;
        font-size: 16px;
        left: 150px;
        font-family:cursive;
        color: black;
       }
       .delete{
       display:inline-block;
     	background-color: (yellow);
        border: 2px solid rgb(7, 7, 7);
        width:100px;
        height:30px;
        text-align:center;
        position: relative;
        text-decoration: none;
        font-size: 16px;
        font-weight:bolder;
        font-family:cursive;
        color: black;
       }
       button{
       background-color: #c25346;
       
       }
table{
border:2px solid black;
		font-family:cursive;
        color: black;
        text-align: center;
}
.columnheading{
font-family:cursive;
        color: black;
}
</style>
</head>
<body>
<h1 style="color:black;font-family: cursive;font-size: 35px;text-align: center; ">Student Display Table</h1>
<%StudentService studentService=new StudentService();
List<Student> studentlist=studentService.displayStudent(); 
%>
<table border='2px' >
<tr class="columnheading"> 
	<td>Student_Rollno </td>
	<td>Student_Name </td>
	<td>Student_Course </td>
	<td>Student_Email</td>
	<td>Student_DOB </td>
	<td>Student_Total_Fees </td>
	<td>Student_Paid_Fees </td>
	<td>Student_Due_Fees </td>
	
	<td>Student_Address </td>
	<td>Student_Country </td>
	<td>Student_State </td>
	<td>Student_City </td>
	<td>Student_pincode </td>
	<td>Student_mobileno. </td>
	<td>Delete_Student </td>
</tr>
<% for(Student student:studentlist ) { %>
<tr>
	<td><%=student.getRollno() %> </td>
   <td><%=student.getName() %> </td>
   <td><%=student.getCourse() %> </td>
   <td><%=student.getEmail() %> </td>
   <td><%=student.getDate() %> </td>
   <td><%=student.getTotalfees() %> </td>
   <td><%=student.getPaidfees() %> </td>
   <td><%=student.getDuefees() %> </td>
   <td><%=student.getAddress() %> </td>
   <td><%=student.getCountry() %> </td>
   <td><%=student.getState() %> </td>
   <td><%=student.getCity() %> </td>
   <td><%=student.getPincode() %> </td>
   <td><%=student.getMobile() %> </td>
   <td><button><a class="delete" href="deletestudent?roll=<%=student.getRollno() %>">Delete</a></button></td>
 </tr>
 <%} %>
</table>
<a class="back" href="accountant_section.jsp">Back</a>
</body>
</html>