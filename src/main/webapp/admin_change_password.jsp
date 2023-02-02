<!DOCTYPE html>
<%@page import="com.jsp.servlet_student.dto.Accountant"%>
<%@page import="com.jsp.servlet_student.service.AccountantService"%>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Update Password</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='main.css'>
    <script src='main.js'></script>
    <style>
         body{
            background-image: url(admin2.jpg);
            background-repeat: no-repeat;
            background-size:cover;
        }
       .login{
        background-color: rgba(200, 200, 219, 0.396);
        display:flex;
        position: relative;
        left: 90px;
        top: 80px;
        display: inline-block;
        height: 330px;
        width: 320px;
        border: 6px double rgba(9, 4, 47, 0.432);
        border-radius: 9px;
        
       }
       .heading{
        position:  relative;
        left: 40;
       }
       a{
        position: relative;
        top: 90px;
        text-decoration: none;
        font-size: 16px;
        left: -20px;
        font-family:cursive;
        color: blue;
       }
       h2{
        position: relative;
        left: 43px;
        text-decoration: underline;
       }
       .input{
        position: relative;
        left: 20px;
        font-family:cursive;
        color: blue;
       }
       .input1{
        position: absolute;
        top: 37;
        left: 146px;
        width: 130px;
        font-family:cursive;
        background-color: rgba(240, 255, 255, 0.417);
        width: 157px;
       }
       .input2{
        position: relative;
        top: -1px;
        left: 30px;
        font-family:cursive;
        background-color: rgba(240, 255, 255, 0.417);
        color: blue;
        width: 157px;
        
       }
       
       .button{
        position: relative;
        left: 107px;
        top: 35px;
        font-size: 16px;
        font-family:cursive;
        color: white;
        border: 2px solid black;
        background-color: rgba(13, 14, 14, 0.242);
       }
       .reset{
        position: relative;
        left: 77px;
        top: 35px;
        font-size: 16px;
        font-family:cursive;
        color: white;
        border: 2px solid black;
        background-color: rgba(13, 14, 14, 0.242);
       }
       .back{
        position: relative;
        top: 120px;
        text-decoration: none;
        font-size: 16px;
        left: -70px;
        font-family:cursive;
        color: white;
       }
       .wrongback{
       display:inline-block;	
        position: relative;
        top: 120px;
        text-decoration: none;
        font-size: 16px;
        left: 70px;
        font-family:cursive;
        color: white;
        border: 2px solid black;
        background-color: rgba(13, 14, 14);
        border-radius: 7px;
        height: 30px;
        width: 60px;
        text-align: center;
        
        }
    </style>
</head>
<body>
<form action="admin_name_confirmation.jsp" method="post">
 <%  
        String name =request.getParameter("name_from_frontend");
   %>
   			 
   </form> 
   				
    				<marquee ><h1 style="color:white;font-family: cursive;font-size: 35px; ">Welcome To Accountant Update Password Page</h1></marquee>
   				 	<div class="login">
   				 	<%if(name.equals("tejinder")){ %>
       				<form action="updatepassword" method="post" >
           			 <h2 style="color:black;font-family: cursive; " class="heading">Enter Your Details</h2>
            		<label class="input" for="password">New Password: </label>
           			<input class=" input2" type="text" id="passowrd" name="new_password" placeholder="Enter your new password " required autofocus> 
               		<br><br>
            		<input class="reset" type="reset"> 
            		<button class="button">Update Password</button>
            		<a class="back" href="admin_login.jsp" >Back</a>
            		<%} %>
            	<%if(!(name.equals("tejinder"))){ %>
           			 <h2 style="color:red;font-family: cursive; " class="heading">Wrong Name !!</h2>
            		 <a class="wrongback" href="admin_name_confirmation.jsp" >Back</a>
            	<%} %>
        </form>
    </div>
</body>
</html>