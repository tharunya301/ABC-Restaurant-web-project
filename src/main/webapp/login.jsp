<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login - ABC Restaurant</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
<header>
    <h1>Login to ABC Restaurant</h1>
</header>
<section>
    <form action="login" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required><br>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br>

        <label for="role">Role:</label>
        <select id="role" name="role">
            <option value="admin">Admin</option>
            <option value="staff">Restaurant Staff</option>
            <option value="customer">Customer</option>
        </select><br>

        <input type="submit" value="Login">
    </form>
    <p>New user? <a href="register.jsp">Register here</a>.</p>
</section>
</body>
</html>
