<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Into Your Page</title>
<link rel="stylesheet" href="Style.css">
</head>
<body>
<div class="box">
<h1>Registration Page</h1>
<form action="RegisterServlet" method="post">
<label for="userName">Name:</label><br>
<input type="text" name="userName" required><br>

<label for="userPass">Password:</label><br>
<input type="password" name="userPass" required><br>

<label for="userMail">Email:</label><br>
<input type="email" name="userMail" required><br>

<button>Register</button><br>
</form>
<p><a href="login.jsp">Back to Login Page.</a>
 <% String error = request.getParameter("error");
           if (error != null && error.equals("1")) { %>
            <p style="color: red;">Registration failed. Please try again.</p>
        <% } %>

</div>
</body>
</html>