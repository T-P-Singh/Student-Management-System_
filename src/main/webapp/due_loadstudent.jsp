<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Due Student</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='main.css'>
    <script src='main.js'></script>
    <style>
        body{
        background-image: url(Accountant_staff.jpg);
        background-repeat: no-repeat;
        background-size:cover;
        }
        .roll{
        position: relative;
        left: 150px;
        font-family:cursive;
        font-size: 20px;
        color: blue;
        }
        .roll1{
        position: relative;
        left: 250px;
        font-family:cursive;
        color: blue;
        background-color: rgba(240, 255, 255, 0.417);
        }
        button{
        border: 2px solid black;
        background-color: rgba(208, 180, 27, 0.242);
        display: inline-block;
        height: 30px;
        width: 120px;
        text-align: center;
        border-radius: 7px;
        position: relative;
        left: 320px;
        font-family:cursive;
        color: blue;
        text-decoration: none;
        }
        .back{
        position: relative;
        top: -3px;
        text-decoration: none;
        font-size: 16px;
        left: 350px;
        font-family:cursive;
        color: blue;
         display:inline-block;
     	background-color: rgba(255, 166, 0, 0.175);
        border: 2px solid rgb(7, 7, 7);
        border-radius:7px;
        width:50px;
        height:30px;
        text-align:center;
    </style>
</head>
<body>
    <div>
        <marquee ><h1 style="color:rgb(9, 9, 9);font-family: cursive;font-size: 35px; ">Welcome To Due Student Page</h1></marquee>
        <form action="due_student.jsp" method="post">
            <label class="roll" for="roll">Roll no. :</label>
            <input class="roll1" type="text" name="rollno" id="roll" placeholder="Enter your roll no." required autofocus>
            
            <button>View Due</button>
            <a class="back" href="accountant_section.jsp">Back</a>
            <hr><hr>
        </form>
    </div>
</body>
</html>