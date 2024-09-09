<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Restaurant Staff Dashboard</title>
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

        .service-table th, .service-table td { text-align: center; }
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <nav class="col-md-2 sidebar">
            <h4>Staff Dashboard</h4>
            <ul class="nav flex-column">
                <li class="nav-item">
                    <a class="nav-link" href="/staff?action=staffReservations">Reservations</a>
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
                    <a class="nav-link active" href="/staff?action=serviceManagement">Service Management</a>
                </li>
            </ul>
        </nav>
        <main class="col-md-10 content">
            <h2>Service Management</h2>
            <!-- Add New Service Form -->
            <div class="card mb-4">
                <div class="card-header">
                    <h5>Add or Edit Service</h5>
                </div>
                <div class="card-body">
                    <form>
                        <div class="form-group">
                            <label for="serviceName">Service Name</label>
                            <input type="text" class="form-control" id="serviceName" placeholder="Enter service name">
                        </div>
                        <div class="form-group">
                            <label for="serviceDescription">Description</label>
                            <textarea class="form-control" id="serviceDescription" rows="3" placeholder="Enter service description"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="servicePrice">Price</label>
                            <input type="number" class="form-control" id="servicePrice" placeholder="Enter service price">
                        </div>
                        <button type="submit" class="btn btn-primary">Save Service</button>
                    </form>
                </div>
            </div>
            <!-- Services Table -->
            <div class="card">
                <div class="card-header">
                    <h5>Existing Services</h5>
                </div>
                <div class="card-body">
                    <table class="table service-table">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Description</th>
                            <th>Price</th>
                            <th>Actions</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>1</td>
                            <td>Service 1</td>
                            <td>Detailed description of Service 1</td>
                            <td>$10.00</td>
                            <td>
                                <button class="btn btn-warning btn-sm">Edit</button>
                                <button class="btn btn-danger btn-sm">Delete</button>
                            </td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Service 2</td>
                            <td>Detailed description of Service 2</td>
                            <td>$20.00</td>
                            <td>
                                <button class="btn btn-warning btn-sm">Edit</button>
                                <button class="btn btn-danger btn-sm">Delete</button>
                            </td>
                        </tr>
                        <!-- Additional service rows can be added here -->
                        </tbody>
                    </table>
                </div>
            </div>
        </main>
    </div>
</div>
</body>
</html>
``
