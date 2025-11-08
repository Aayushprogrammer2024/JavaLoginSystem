<!DOCTYPE html>
<html>
<head>
    <title>Forgot Password</title>
    <style>
        body {
            font-family: Arial;
            background: url('background.jpg') no-repeat center center fixed;
            background-size: cover;
        }
        .container {
            width: 350px;
            margin: 100px auto;
            background: #fff;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px gray;
            text-align: center;
        }
        input {
            width: 90%;
            padding: 10px;
            margin: 10px 0;
        }
        button {
            background-color: #007BFF;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Forgot Password</h2>
        <form action="ForgotPasswordServlet" method="post">
            <input type="text" name="username" placeholder="Enter Username" required><br>
            <input type="email" name="email" placeholder="Enter Registered Email" required><br>
            <input type="password" name="newPassword" placeholder="Enter New Password" required><br>
            <button type="submit">Reset Password</button>
        </form>
        <a href="Login.jsp">Back to Login</a>
    </div>
</body>
</html>
