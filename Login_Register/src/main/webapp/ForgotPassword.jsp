<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Forgot Password</title>
    <style>
        body {
            margin:0;
            align-items:center;
            justify-content:center;
            height:100vh;
            font-family:Arial,Sans-serif;
            background-color:#AEFD6C;
            background-image:url('backimg.jpg');
            background-size:cover;
            background-repeat:no-repeat;
            background-position:center center;
            display: flex;
            color:#333;
            flex-direction:column;
        }
        .box {
            width:350px;
            max-width:400px;
            text-align:center;
            padding:20px;
            border-radius:10px;
            background-color:white;
            box-shadow:0 0 10px rgba(0,0,1,0.5);
        }
        input {
            text-align:center;
            width: 90%;
            padding: 10px;
            margin: 10px 0;
        }
      button {
    width: 100%;
    padding: 12px;
    cursor: pointer;
    background-color: #007BFF;
    color: #fff;
    border: none;
    border-radius: 5px;
    font-size: 16px;
    transition: background-color 0.3s ease, transform 0.3s ease;
}

button:hover {
    background-color: #0056b3;
    transform: scale(1.05);
}
        a {
            text-decoration:none;
            display:block;
            margin-top: 10px;
            transition: color 0.3s ease;
            font-weight:bold;
            color:blue;
        }
        
       a:hover{
          color:green;
	     text-transform:uppercase;
	     font-size:20px;
       }
        
        .message {
            color: red; 
            margin-top: 10px;
            font-weight: bold;
        }
        
        h2{
        color:blue;
        }
    </style>
</head>
<body>
    <div class="box">
        <h2>Forgot Password</h2>
        <form action="ForgotPasswordServlet" method="post">
            <input type="text" name="userName" placeholder="Enter Username" required><br>
            <input type="email" name="email" placeholder="Enter Registered Email" required><br>
            <input type="password" name="userPass" placeholder="Enter New Password" required><br>
            <button type="submit">Reset Password</button>
        </form>

        <a href="login.jsp" >Back to Login</a>

     <% 
String msg = request.getParameter("msg");
if (msg != null) { 
%>
    <p style="color: red;"><%= msg %></p>
<% 
} 
%>

    </div>
</body>
</html>
