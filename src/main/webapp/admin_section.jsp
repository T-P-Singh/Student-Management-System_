<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Admin Section</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='main.css'>
    <script src='main.js'></script>
    <style>
         body{
        background-image: url(Accountant_staff.jpg);
        background-repeat: no-repeat;
        background-size:cover;
       }
       .login{
        background-color: rgba(200, 200, 219, 0.396);
        display:flex;
        position: relative;
        left: 480px;
        top: 10px;
        display: inline-block;
        height: 400px;
        width: 320px;
        border: 6px double rgba(9, 4, 47, 0.432);
        border-radius: 9px;
       }
       h2{
        position: relative;
        left: 83px;
        text-decoration: underline;
       }
       
       div{
        position: relative;
        left:75px;
        top: 7px;
       }
       a{
        display: inline-block;
        font-size: 16px;
        font-family:cursive;
        color: blue;
        text-decoration: none;
        background-color: rgba(255, 166, 0, 0.175);
        border: 2px solid rgb(7, 7, 7);
        border-radius: 7px;
        height: 30px;
        width: 170px;
        text-align: center;
       }
    </style>
</head>
<body>
    <marquee ><h1 style="color:rgb(9, 9, 9);font-family: cursive;font-size: 35px; ">Welcome To Admin Section Page</h1></marquee>
    <div class="login">
        <form action="">
            <h2 style="color:black;font-family: cursive; " class="heading">Choose One</h2>
            <div>
            <a href="add_accountant.jsp">Add Accountant</a><br><br><br><br>
            <a href="accountant_login.jsp">Login Accountant</a><br><br><br><br>
            <a href="accountant_display.jsp">View Accountant</a><br><br><br><br>
            <a href="Admin_logout">Logout</a>
        </div>
        </form>
    </div>
</body>
</html>