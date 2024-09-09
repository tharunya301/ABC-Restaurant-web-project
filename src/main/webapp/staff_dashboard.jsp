<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Staff Dashboard</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>

        body {
            font-family: Arial, sans-serif;
            background-image: url('assets/img/events-bg.jpg');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            color: #333;
        }

        .sidebar {
            background: rgba(36, 35, 35, 0.8);
            height: 100vh;
            padding: 20px;
            border-right: 1px solid #ddd;
        }

        .sidebar h4 {
            margin-bottom: 20px;
            color: #ffffff;
        }

        .sidebar .nav-link {
            color: #ffffff;
            font-weight: bold;
            padding: 10px 15px;
            border-radius: 5px;
        }

        .sidebar .nav-link:hover {
            background-color: #d9cda4;
        }

        .content {
            padding: 20px;
            background: rgba(255, 255, 255, 0.8);
            border-radius: 5px;
            margin-top: 20px;
        }

        .content h2 {
            margin-bottom: 20px;
        }

        .nav-item .active {
            background-color: #b68d2c;
            color: black;
            font-weight: bold;
        }

        .reservation-card {
            margin-bottom: 20px;
        }

    </style>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <nav class="col-md-2 sidebar">
            <h4>Staff Dashboard</h4>
            <ul class="nav flex-column">
                <li class="nav-item">
                    <a class="nav-link active" href="/staff?action=staffReservations">Reservations</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/staff?action=staffQueries">Queries</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/staff?action=payments">Payments</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/staff?action=dailyTasks">Daily Tasks</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/staff?action=serviceManagement">Service Management</a>
                </li>
            </ul>
        </nav>
        <main class="col-md-10 content">
            <h2>Manage Reservations</h2>

            <!-- com.example.cis6003_app.servlets.Reservation Cards -->
            <div class="card reservation-card">
                <div class="card-body">
                    <h5 class="card-title">com.example.cis6003_app.servlets.Reservation #12345</h5>
                    <p class="card-text">
                        <strong>Customer Name:</strong> John Doe <br>
                        <strong>Date:</strong> 2024-09-15 <br>
                        <strong>Time:</strong> 7:00 PM <br>
                        <strong>Guests:</strong> 4 <br>
                        <strong>Service Type:</strong> Dine-in
                    </p>
                    <div class="reservation-actions">
                        <button class="btn btn-success btn-sm">Confirm</button>
                        <button class="btn btn-warning btn-sm">Modify</button>
                        <button class="btn btn-danger btn-sm">Cancel</button>
                    </div>
                </div>
            </div>

            <div class="card reservation-card">
                <div class="card-body">
                    <h5 class="card-title">com.example.cis6003_app.servlets.Reservation #12346</h5>
                    <p class="card-text">
                        <strong>Customer Name:</strong> Jane Smith <br>
                        <strong>Date:</strong> 2024-09-16 <br>
                        <strong>Time:</strong> 12:00 PM <br>
                        <strong>Guests:</strong> 2 <br>
                        <strong>Service Type:</strong> Delivery
                    </p>
                    <div class="reservation-actions">
                        <button class="btn btn-success btn-sm">Confirm</button>
                        <button class="btn btn-warning btn-sm">Modify</button>
                        <button class="btn btn-danger btn-sm">Cancel</button>
                    </div>
                </div>
            </div>

            <div class="card reservation-card">
                <div class="card-body">
                    <h5 class="card-title">com.example.cis6003_app.servlets.Reservation #12347</h5>
                    <p class="card-text">
                        <strong>Customer Name:</strong> Jane Smith <br>
                        <strong>Date:</strong> 2024-09-16 <br>
                        <strong>Time:</strong> 12:00 PM <br>
                        <strong>Guests:</strong> 2 <br>
                        <strong>Service Type:</strong> Delivery
                    </p>
                    <div class="reservation-actions">
                        <button class="btn btn-success btn-sm">Confirm</button>
                        <button class="btn btn-warning btn-sm">Modify</button>
                        <button class="btn btn-danger btn-sm">Cancel</button>
                    </div>
                </div>
            </div>

            <!-- Add more reservation cards as needed -->

            <!-- Pagination for Reservations -->
            <nav aria-label="com.example.cis6003_app.servlets.Reservation pagination">
                <ul class="pagination justify-content-center">
                    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#">Next</a></li>
                </ul>
            </nav>

        </main>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
