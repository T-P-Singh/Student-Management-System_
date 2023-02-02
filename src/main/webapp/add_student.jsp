<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Add Student</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='main.css'>
    <script src='main.js'></script>
    <style>
            body{
        background-image: url(addstu.jpg);
        background-repeat: no-repeat;
        background-size:cover;
       }
       .login{
        background-color: rgba(200, 200, 219, 0.671);
        display:flex;
        position: relative;
        left: 180px;
        top: 40px;
        display: inline-block;
        height: 600px;
        width: 720px;
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
        top: 60px;
        text-decoration: none;
        font-size: 16px;
        left: -70px;
        font-family:cursive;
        color: blue;
       }
       h2{
        position: relative;
        left: 280px;
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
        position: relative;
        top: 17;
        left: 74px;
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
        left: 77px;
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
        left: 330px;
        top: 60px;
        font-size: 16px;
        font-family:cursive;
        color: blue;
        border: 2px solid black;
        background-color: rgba(185, 124, 26, 0.242);
       }
       .reset{
        position: relative;
        left: 220px;
        top: 60px;
        font-size: 16px;
        font-family:cursive;
        color: blue;
        border: 2px solid black;
        background-color: rgba(185, 124, 26, 0.242);
       }
       .address{
        position: relative;
        top: 40px;
        height: 160px;
        border: 2px dashed black;
        margin: 10px;
       }
       .personal{
        position: relative;
        top: 10px;
        height: 200px;
        margin: 10px;
       }
       .roll{
        position: relative;
        top: 25px;
        left: 150px;
        font-family:cursive;
        color: blue;
       }
       .paid{
        position: relative;
        top: 25px;
        left: 142px;
        font-family:cursive;
        color: blue;
       }
       .course{
        position: relative;
        top: 18px;
        left: 177px;
        font-family:cursive;
        color: blue;
       }
       .mobile{
        position: relative;
        top: 22px;
        left: 152px;
        font-family:cursive;
        color: blue;
       }
       .dob{
        position: relative;
        top: 22px;
        left: 179px;
        font-family:cursive;
        color: blue;
       }
       .input7{
        position: relative;
        top: 25px;
        left: 39px;
        font-family:cursive;
        background-color: rgba(240, 255, 255, 0.417);
        color: blue;
        width: 130px;
        
       }
       .input8{
        position: relative;
        top: 25px;
        left: 50px;
        font-family:cursive;
        background-color: rgba(240, 255, 255, 0.417);
        color: blue;
        width: 130px;
       }
       .c{
        position: relative;
        top: 18px;
        left: 210px;
        font-family:cursive;
        background-color: rgba(240, 255, 255, 0.417);
        color: blue;
        width: 130px;
       }
       .m{
        position: relative;
        top: 25px;
        left: 195px;
        font-family:cursive;
        background-color: rgba(240, 255, 255, 0.417);
        color: blue;
        width: 130px;
       }
       .d{
        position: relative;
        top: 25px;
        left: 230px;
        font-family:cursive;
        background-color: rgba(240, 255, 255, 0.417);
        color: rgba(0, 0, 255, 0.611);
        width: 130px;
       }
       
       .p{
        position: relative;
        top: 25px;
        left: 158px;
        font-family:cursive;
        background-color: rgba(240, 255, 255, 0.417);
        color: blue;
        width: 130px; 
       }
       .r{
        position: relative;
        top: 25px;
        left: 190px;
        font-family:cursive;
        background-color: rgba(240, 255, 255, 0.417);
        color: blue;
        width: 130px;
       }
       .add{
        position: relative;
        top: 25px;
        left: 20px;
        font-family:cursive;
        color: blue;
       }
       .city{
        position: relative;
        top: 25px;
        left: 169px;
        font-family:cursive;
        color: blue;
       }
       .state{
        position: relative;
        top: 25px;
        left: 20px;
        font-family:cursive;
        color: blue;
       }
       .country{
        position: relative;
        top: 25px;
        left: 150px;
        font-family:cursive;
        color: blue;
       }
       .pincode{
        position: relative;
        top: 25px;
        left: 20px;
        font-family:cursive;
        color: blue;
       }
       .pincode1{
        position: relative;
        top: 25px;
        left: 50px;
        font-family:cursive;
        background-color: rgba(240, 255, 255, 0.417);
        color: blue;
        width: 130px;
       }
       .state1{
        position: relative;
        top: 25px;
        left: 64px;
        font-family:cursive;
        background-color: rgba(240, 255, 255, 0.417);
        color: blue;
        width: 130px;
       }
       .add1{
        position: relative;
        top: 25px;
        left: 45px;
        font-family:cursive;
        background-color: rgba(240, 255, 255, 0.417);
        color: blue;
        width: 130px;
       }
       .city1{
        position: relative;
        top: 25px;
        left: 225px;
        font-family:cursive;
        background-color: rgba(240, 255, 255, 0.417);
        color: blue;
        width: 130px;
       }
       .country1{
        position: relative;
        top: 25px;
        left: 180px;
        font-family:cursive;
        background-color: rgba(240, 255, 255, 0.417);
        color: blue;
        width: 130px;
       }
    </style>
</head>
<body>
    <marquee ><h1 style="color:rgb(9, 9, 9);font-family: cursive;font-size: 35px; ">Welcome To Add Student Page</h1></marquee>
    <div class="login">
        <form action="addstudent" method="post">
            <h2 style="color:black;font-family: cursive; " class="heading">Add Student</h2>
            
            <fieldset class="personal" style="border: 2px dashed black"><legend style=" font-size: 16px;font-family:cursive;color: blue;">Personal Details</legend>
            <label class="input" for="user">Name: </label>
            <input class="input input1" type="text" id="user" name="user" placeholder="Enter your name" required autofocus> 
            <label class="input input3 course"  for="course">Course: </label>
            <input class="input2 course c"  type="text" id="course"  name="course" autofocus required placeholder="Enter your course">
            <br><br>
            <label class="input11 input4"  for="email">Email: </label>
            <input class=" input5"  type="email" id="email"  name="email" autofocus required placeholder="Enter your email">
            <label class="input12 input3 dob"  for="dob">DOB: </label>
            <input class="input6  d"  type="date" id="dob"  name="dob" autofocus required placeholder="Enter your date of birth.">
            <br><br>  
            <label class="input12 input3"  for="fee">Total fees: </label>
            <input class="input7"  type="number" id="fee"  name="fee" autofocus required placeholder="Enter total fee."> 
            <label class="input12 input3 paid "  for="duefee">Paid fees: </label>
            <input class="input6 paid p"  type="number" id="paidfee"  name="paidfee" autofocus required placeholder="Enter paid fee.">
            <br><br>  
            <label class="input12 input3"  for="duefee">Due fees: </label>
            <input class="input8"  type="number" id="duefee"  name="duefee" autofocus required placeholder="Enter due fee."> 
            <label class="input12 input3 roll"  for="rollno">Roll no: </label>
            <input class="input6 roll r"  type="text" id="rollno"  name="rollno" autofocus required placeholder="Enter your rollno."> 
        </fieldset>
        <fieldset class="address"><legend style=" font-size: 16px;font-family:cursive;color: blue;">Address detail:</legend>
            <label class="add "  for="address">Address: </label>
            <input class="add1"  type="text" id="address"  name="address" autofocus required placeholder="Enter your address."> 
            <label class="country"  for="country">Country: </label>
            <input class="country1"  type="text" id="country"  name="country" autofocus required placeholder="Enter your Country."> 
            <br><br>
            <label class="state"  for="state">State: </label>
            <input class="state1"  type="text" id="state"  name="state" autofocus required placeholder="Enter your state."> 
            <label class="city"  for="city">City: </label>
            <input class="city1"  type="text" id="city"  name="city" autofocus required placeholder="Enter your city."> 
            <br><br>
            <label class="pincode"  for="pincode">Pincode: </label>
            <input class="pincode1"  type="number" id="pincode"  name="pincode" autofocus required placeholder="Enter your pincode."> 
            <label class="input12 input3 mobile"  for="mobile">Mobile: </label>
            <input class="input6  m"  type="number" id="mobile"  name="mobile" autofocus required placeholder="Enter your mobile no.">
        </fieldset>
            <input class="reset" type="reset"> 
            <button class="button">Add Student</button>
            <a href="accountant_section.jsp" >Back</a>
        </form>
    </div> 
</body>
</html>