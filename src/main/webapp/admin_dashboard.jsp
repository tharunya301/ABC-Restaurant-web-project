<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin Dashboard</title>
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
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

    .card {
      margin-bottom: 20px;
    }
    .chart-container {
      height: 300px;
    }

  </style>
</head>
<body>
<div class="container-fluid">
  <div class="row">
    <nav class="col-md-2 sidebar">
      <h4>Admin Dashboard</h4>
      <ul class="nav flex-column">
        <li class="nav-item">
          <a class="nav-link active" href="admin_dashboard.html">Overview</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="user_managemet.html">User Management</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="reservation.html">Reservations</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="queries_section.html">Queries</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="admin_offers_promotions.html">Offers & Promotions</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="facilities_&_services.html">Facilities & Services</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="reports.html">Reports</a>
        </li>
      </ul>
    </nav>
    <main class="col-md-10 content">
      <!-- Overview -->
      <div id="overview">
        <h2>Overview</h2>

        <!-- Overview Cards -->
        <div class="row">
          <div class="col-md-3">
            <div class="card text-white bg-primary">
              <div class="card-body">
                <h5 class="card-title">Total Reservations</h5>
                <p class="card-text">1,234</p>
              </div>
            </div>
          </div>
          <div class="col-md-3">
            <div class="card text-white bg-success">
              <div class="card-body">
                <h5 class="card-title">Total Revenue</h5>
                <p class="card-text">Rs.45,678</p>
              </div>
            </div>
          </div>
          <div class="col-md-3">
            <div class="card text-white bg-warning">
              <div class="card-body">
                <h5 class="card-title">Pending Queries</h5>
                <p class="card-text">56</p>
              </div>
            </div>
          </div>
          <div class="col-md-3">
            <div class="card text-white bg-danger">
              <div class="card-body">
                <h5 class="card-title">Cancelled Orders</h5>
                <p class="card-text">12</p>
              </div>
            </div>
          </div>
        </div>

        <!-- Chart Section -->
        <div class="row">
          <div class="col-md-8">
            <div class="card">
              <div class="card-header">
                Reservations Over Time
              </div>
              <div class="card-body">
                <div class="chart-container">
                  <!-- Placeholder for chart (e.g., Line chart) -->
                  <canvas id="reservationsChart"></canvas>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="card">
              <div class="card-header">
                Revenue Breakdown
              </div>
              <div class="card-body">
                <div class="chart-container">
                  <!-- Placeholder for chart (e.g., Pie chart) -->
                  <canvas id="revenueChart"></canvas>
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- Summary Table -->
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                Recent Reservations
              </div>
              <div class="card-body">
                <table class="table table-striped">
                  <thead>
                  <tr>
                    <th>#</th>
                    <th>Customer Name</th>
                    <th>Date</th>
                    <th>Time</th>
                    <th>Status</th>
                  </tr>
                  </thead>
                  <tbody>
                  <tr>
                    <td>1</td>
                    <td>John Doe</td>
                    <td>2024-09-01</td>
                    <td>7:00 PM</td>
                    <td>Confirmed</td>
                  </tr>
                  <tr>
                    <td>2</td>
                    <td>Jane Smith</td>
                    <td>2024-09-01</td>
                    <td>8:00 PM</td>
                    <td>Pending</td>
                  </tr>
                  <tr>
                    <td>3</td>
                    <td>Bob Johnson</td>
                    <td>2024-09-02</td>
                    <td>6:00 PM</td>
                    <td>Cancelled</td>
                  </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- End Overview -->
    </main>
  </div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
