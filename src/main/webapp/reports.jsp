<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title>ABC Restaurant</title>
    <meta name="description" content="">
    <meta name="keywords" content="">

    <!-- Favicons -->
    <link href="assets/img/logo.png" rel="icon">
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="assets/vendor/aos/aos.css" rel="stylesheet">
    <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('assets/img/hero-bg.jpg');
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
            .content { padding: 20px; }
            .nav-item .active {
                background-color: #b68d2c;
                color: black;
                font-weight: bold;
            }
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
        .report-section { margin-top: 20px; }
        .card-header { background-color: #007bff; color: white; }
        .btn-export { margin-top: 10px; }
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <nav class="col-md-2 sidebar">
            <h4>Admin Dashboard</h4>
            <ul class="nav flex-column">
                <li class="nav-item">
                    <a class="nav-link" href="/admin?action=overview">Overview</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/admin?action=userManagement">User Management</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/admin?action=reservations">Reservations</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/admin?action=queries">Queries</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/admin?action=offersPromotions">Offers & Promotions</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/admin?action=facilitiesServices">Facilities & Services</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="/admin?action=reports">Reports</a>
                </li>
            </ul>
        </nav>
        <main class="col-md-10 content">
            <h2>Reports</h2>
            <div class="report-section">
                <div class="card">
                    <div class="card-header">
                        Generate Report
                    </div>
                    <div class="card-body">
                        <form>
                            <div class="form-group">
                                <label for="reportType">Select Report Type</label>
                                <select class="form-control" id="reportType">
                                    <option>Reservations</option>
                                    <option>Revenue</option>
                                    <option>Customer Activity</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="reportDateRange">Select Date Range</label>
                                <input type="text" class="form-control" id="reportDateRange" placeholder="e.g., 01/01/2024 - 01/31/2024">
                            </div>
                            <button type="submit" class="btn btn-primary">Generate Report</button>
                        </form>
                    </div>
                </div>
                <div class="card mt-4">
                    <div class="card-header">
                        Available Reports
                    </div>
                    <div class="card-body">
                        <ul class="list-group">
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                Monthly Revenue
                                <button class="btn btn-outline-primary btn-sm btn-export">Export PDF</button>
                                <button class="btn btn-outline-success btn-sm btn-export">Export Excel</button>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                Daily Reservations
                                <button class="btn btn-outline-primary btn-sm btn-export">Export PDF</button>
                                <button class="btn btn-outline-success btn-sm btn-export">Export Excel</button>
                            </li>
                            <!-- Add more report items here -->
                        </ul>
                    </div>
                </div>
            </div>
        </main>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
