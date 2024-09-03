<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Reservation - ABC Restaurant</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
<header>
    <h1>Make a Reservation</h1>
</header>
<section>
    <form action="reservation" method="post">
        <label for="serviceType">Service Type:</label>
        <select id="serviceType" name="serviceType">
            <option value="dine-in">Dine-In</option>
            <option value="delivery">Delivery</option>
        </select><br>

        <label for="date">Date:</label>
        <input type="date" id="date" name="date" required><br>

        <label for="time">Time:</label>
        <input type="time" id="time" name="time" required><br>

        <label for="guests">Number of Guests:</label>
        <input type="number" id="guests" name="guests" required><br>

        <input type="submit" value="Reserve Now">
    </form>
</section>
</body>
</html>
