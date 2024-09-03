<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Contact Us - ABC Restaurant</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
<header>
    <h1>Contact Us</h1>
</header>
<section>
    <form action="query" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required><br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br>

        <label for="message">Your Query:</label><br>
        <textarea id="message" name="message" rows="5" required></textarea><br>

        <input type="submit" value="Submit Query">
    </form>
</section>
</body>
</html>
