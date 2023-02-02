<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Add Accountant</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='main.css'>
    <script src='main.js'></script>
    <style>
          body{
        background-image: url(accadd.jpg);
        background-repeat: no-repeat;
        background-size:cover;
       }
       .login{
        background-color: rgba(200, 200, 219, 0.396);
        display:flex;
        position: relative;
        left: 180px;
        top: 40px;
        display: inline-block;
        height: 370px;
        width: 320px;
        border: 6px double rgba(9, 4, 47, 0.432);
        border-radius: 9px;
       }
       h2{
        position: relative;
        left: 83px;
        text-decoration: underline;
       }
       a{
        position: relative;
        top: 90px;
        text-decoration: none;
        font-size: 16px;
        left: -70px;
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
        top: 15px;
        left: 20px;
        font-family:cursive;
        color: blue;
       }
       .input1{
        position: absolute;
        top: 90;
        left: 110px;
        width: 130px;
        font-family:cursive;
        background-color: rgba(240, 255, 255, 0.417);
       }
       .input2{
        position: relative;
        top: 18px;
        left: 30px;
        font-family:cursive;
        background-color: rgba(240, 255, 255, 0.417);
        color: blue;
        width: 130px;
        
       }
       .input3{
        position: relative;
        top: 18px;
        font-size: 16px;
        font-family:cursive;
        color: blue;
       }
       .input4{
        position: relative;
        top: 25px;
        font-size: 16px;
        font-family:cursive;
        color: blue;
       }
       .input5{
        position: relative;
        top: 22px;
        left: 60px;
        font-family:cursive;
        background-color: rgba(240, 255, 255, 0.417);
        color: blue;
        width: 130px;
        
       }
       .input6{
        position: relative;
        top: 25px;
        left: 50px;
        font-family:cursive;
        background-color: rgba(240, 255, 255, 0.417);
        color: blue;
        width: 130px;
        
       }
       .input11{
        position: relative;
        top: 22px;
        left: 20px;
        font-family:cursive;
        color: blue;
       }
       .input12{
        position: relative;
        top: 25px;
        left: 20px;
        font-family:cursive;
        color: blue;
       }
       .button{
        position: relative;
        left: 87px;
        top: 35px;
        font-size: 16px;
        font-family:cursive;
        color: blue;
        border: 2px solid black;
        background-color: rgba(185, 124, 26, 0.242);
       }
       .reset{
        position: relative;
        left: 47px;
        top: 35px;
        font-size: 16px;
        font-family:cursive;
        color: blue;
        border: 2px solid black;
        background-color: rgba(185, 124, 26, 0.242);
       }
    </style>
</head>
<body>
    <marquee ><h1 style="color:rgb(9, 9, 9);font-family: cursive;font-size: 35px; ">Welcome To Add Accoountant Page</h1></marquee>
    <div class="login">
        <form action="addaccountant" method="post">
            <h2 style="color:black;font-family: cursive; " class="heading">Add Accountant</h2>
            <label class="input" for="user">Name: </label>
            <input class="input input1" type="text" id="user" name="user" placeholder="Enter your name" required autofocus> 
            <br><br>
            <label class="input input3"  for="password">Password: </label>
            <input class="input2"  type="password" id="password"  name="password" autofocus required placeholder="Enter the passowrd">
            <br><br>
            <label class="input11 input4"  for="email">Email: </label>
            <input class="input2 input5"  type="email" id="email"  name="email" autofocus required placeholder="Enter your email">
            <br><br>
            <label class="input12 input3"  for="mobile">Mobile: </label>
            <input class="input6"  type="number" id="mobile"  name="mobile" autofocus required placeholder="Enter your mobile no.">
            <br><br>  
            <input class="reset" type="reset"> 
            <button class="button">Add Accountant</button>
            <a href="admin_section.jsp" >Back</a>
        </form>
    </div> 
</body>
</html>