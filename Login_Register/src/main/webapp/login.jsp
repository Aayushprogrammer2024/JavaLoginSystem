<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Into Your Page</title>
<link rel="stylesheet" href="Style.css">
</head>
<body>

<div class="box">
<h1>Login Page</h1>
<form action="LoginServlet" method="post">
<label for="userName">Name:</label><br>
<input type="text" name="userName" required><br>

<label for="userPass">Password:</label><br>
<input type="password" name="userPass" required><br>
<button>Login</button><br>
</form>
<p>
<a href="index.html">Back to Home.</a>
<p><a href="ForgotPassword.jsp" style="color: red;">Forgot Password?</a></p>


 <% String error = request.getParameter("error");
            if (error != null && error.equals("1")) { %>
                <p style="color: red;">Invalid username or password. Please try again.</p>
        <% } %>
        
       
        <% String rs = request.getParameter("registration");
            if (rs != null && rs.equals("success")) { %>
                <p style="color: green;">Your Registration is Successful. Please Login.</p>
        <% } %>

</div>
</body>
</html>