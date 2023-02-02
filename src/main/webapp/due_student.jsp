<!DOCTYPE html>
<%@page import="com.jsp.servlet_student.dto.Student"%>
<%@page import="com.jsp.servlet_student.service.StudentService"%>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Due of Student</title>
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
        background-color: rgba(200, 200, 219, 0.671);
        display:flex;
        position: relative;
        left: 180px;
        top: 40px;
        display: inline-block;
        height: 400px;
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
        left: 340px;
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
        top: 37;
        left: 77px;
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
        left: 215px;
        font-family:cursive;
        background-color: rgba(240, 255, 255, 0.417);
        color: blue;
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
       
    </style>
</head>
<body>   
 <form action="due_loadstudent.jsp">
        <% 
      	    StudentService studentService =new StudentService();
  			int roll=Integer.parseInt(request.getParameter("rollno"));				
  			Student student=studentService.getAllDetails(roll); 
		%>
		
</form>

    <div class="login">
       
		<%if(student!=null){ %>
		  <%if(student.getRollno()==roll) { %>
            <h2 style="color:black;font-family: cursive; " class="heading">Due Student</h2>
            
            <fieldset class="personal" style="border: 2px dashed black"><legend style=" font-size: 16px;font-family:cursive;color: blue;">Personal Details</legend>
            <label class="input" for="user">Name: </label>
            <input class="input input1" type="text" id="user" name="user" readonly="readonly" value=<%= student.getName() %>> 
            <label class="input input3 course"  for="course">Course: </label>
            <input class="input2 course c"  type="text" id="course"  name="password" readonly="readonly" value=<%= student.getCourse()%>>
            <br><br>
            <label class="input11 input4"  for="email">Email: </label>
            <input class=" input5"  type="email" id="email"  name="email" readonly="readonly" value=<%= student.getEmail() %>>
            <label class="input12 input3 mobile"  for="mobile">Mobile: </label>
            <input class="input6  m"  type="number" id="mobile"  name="mobile" readonly="readonly" value=<%= student.getMobile() %>>
            <br><br>  
            <label class="input12 input3"  for="fee">Total fees: </label>
            <input class="input7"  type="number" id="fee"  name="fee" readonly="readonly" value=<%= student.getTotalfees() %>> 
            <label class="input12 input3 paid "  for="duefee">Paid fees: </label>
            <input class="input6 paid p"  type="number" id="paidfee"  name="paidfee" readonly="readonly" value=<%= student.getPaidfees() %>>
            <br><br>  
            <label class="input12 input3"  for="duefee">Due fees: </label>
            <input class="input8"  type="number" id="duefee"  name="fee" readonly="readonly" value=<%= student.getDuefees() %>> 
            <label class="input12 input3 roll"  for="rollno">Roll no: </label>
            <input class="input6 roll r"  type="text" id="rollno"  name="rollno" readonly="readonly" value=<%= student.getRollno() %>> 
        </fieldset>
       				<a href="due_loadstudent.jsp" >Back</a>
         <%} %>
         <%} %>
         <%if(student==null){ %>
         <h2 style='color:black;font-family: cursive; ' class="heading">Invalid Roll no !!!</h2>
            <a href="due_loadstudent.jsp" >Back</a>
           <%} %>
       
    </div> 
</body>
</html>