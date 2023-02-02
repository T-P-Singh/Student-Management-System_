<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
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
        height: 300px;
        width: 320px;
        border: 6px double rgba(9, 4, 47, 0.432);
        border-radius: 9px;
        
       }
       .heading{
        position:  relative;
        left: 85px;
        
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
        color: black;
       }
       .input1{
        position: absolute;
        top: 73;
        left: 111px;
        width: 130px;
        color: black;
        font-family:cursive;
        background-color: rgba(240, 255, 255, 0.417);
       }
       .input2{
        position: relative;
        top: 25px;
        left: 30px;
        font-family:cursive;
        background-color: rgba(240, 255, 255, 0.417);
        color: black;
        width: 130px;
        
       }
       .input3{
        position: relative;
        top: 25px;
        font-size: 16px;
        font-family:cursive;
        color: black;
       }
       .button{
        position: relative;
        left: 107px;
        top: 35px;
        font-size: 16px;
        font-family:cursive;
        color: black;
        border: 2px solid black;
        background-color: rgba(13, 14, 14, 0.242);
       }
       .reset{
        position: relative;
        left: 77px;
        top: 35px;
        font-size: 16px;
        font-family:cursive;
        color: black;
        border: 2px solid black;
        background-color: rgba(13, 14, 14, 0.242);
       }
    </style>
</head>
<body>
   
    <marquee ><h1 style="color:red;font-family: cursive;font-size: 35px; ">Welcome To Admin Login Page</h1></marquee>
    <div class="login">
        <form action="login" method= "post">
            <h2 style="color:black;font-family: cursive; " class="heading">Admin Details</h2>
            <label class="input" for="user">Name: </label>
            <input class=" input1" type="text" id="user" name="user" placeholder="Enter your name" required autofocus> 
            <br><br>
            <label class="input input3"  for="password">Password: </label>
            <input class="input2"  type="password" id="password"  name="password" autofocus required placeholder="Enter the passowrd">
            <br><br>  
            <input class="reset" type="reset"> 
            <button class="button">Login</button>
            
            <!--<a href="admin_name_confirmation.jsp" >Forgot Passowrd ?</a>  -->
        </form>
    </div>
</body>
</html>