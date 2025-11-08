<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Page</title>
<link rel="stylesheet" href="Style.css">
</head>
<body>
    <%
       
        String userName = (String) session.getAttribute("username");

        
        if (userName == null) {
            response.sendRedirect("login.jsp");
            return;
        }
    %>

    <div class="box">
        <h1>Welcome, <%= userName %>!</h1>
        <p>We're delighted to have you on our platform. 🌟</p>
        <h3>Explore, learn, and connect with our vibrant community! 🚀</h3>
        <p>Feel free to stay as long as you like, and when you're ready,</p>
        You can <a href="Logout.jsp">LOGOUT</a> securely.
    </div>
</body>
</html>
