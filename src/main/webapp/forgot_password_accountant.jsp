<!DOCTYPE html>
<%@page import="com.jsp.servlet_student.dto.Accountant"%>
<%@page import="com.jsp.servlet_student.service.AccountantService"%>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Forgot Password</title>
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
        left: 90;
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
        position:absolute;
        top: 37;
        left: 130px;
        width: 130px;
        font-family:cursive;
        background-color: rgba(240, 255, 255, 0.417);
       }
       .input2{
        position: absolute;
        top: 25px;
        left: 130px;
        font-family:cursive;
        background-color: rgba(240, 255, 255, 0.417);
        color: blue;
        width: 130px;
        
       }
       .input3{
        position: relative;
        top: 25px;
        font-size: 16px;
        font-family:cursive;
        color: blue;
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
        left: -50px;
        font-family:cursive;
        color: white;
       }
    </style>
</head>
<body>
   
    <marquee ><h1 style="color:white;font-family: cursive;font-size: 35px; ">Welcome To Accountant Forgot Password Page</h1></marquee>
    <div class="login">
        <form action="accountant_email_check_for_password.jsp" method="post" >
            <h2 style="color:black;font-family: cursive; " class="heading">Enter Your Details</h2>
            <label class="input" for="user">Email: </label>
            <input class="input input1" type="text" id="user" name="email_from_frontend" placeholder="Enter your email" required autofocus> 
            <br><br>
            <input class="reset" type="reset"> 
            <button class="button">Click to Check</button>
            <a class="back" href="accountant_login.jsp" >Back</a>
            	
        </form>
    </div>
</body>
</html>