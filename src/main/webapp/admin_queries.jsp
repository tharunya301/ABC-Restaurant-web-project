<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin Dashboard - Queries</title>
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
    .query-card { margin-bottom: 20px; }
    .query-status { font-weight: bold; }
    .respond-btn { margin-top: 10px; }
  </style>
</head>
<body>
<div class="container-fluid">
  <div class="row">
    <nav class="col-md-2 sidebar">
      <h4>Admin Dashboard</h4>
      <ul class="nav flex-column">
        <li class="nav-item">
          <a class="nav-link" href="admin_dashboard.html">Overview</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="user_managemet.html">User Management</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="reservation.html">Reservations</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="queries_section.html">Queries</a>
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
      <h2>Manage Customer Queries</h2>
      <div class="card">
        <div class="card-header">
          <h4>All Queries</h4>
        </div>
        <div class="card-body">
          <!-- Query List -->
          <div class="query-card card">
            <div class="card-body">
              <h5 class="card-title">Query #1</h5>
              <p class="card-text"><strong>Status:</strong> <span class="query-status">Pending</span></p>
              <p class="card-text"><strong>Customer:</strong> John Doe</p>
              <p class="card-text"><strong>Message:</strong> How do I update my reservation?</p>
              <textarea class="form-control" rows="3" placeholder="Type your response here..."></textarea>
              <button class="btn btn-primary respond-btn mt-2">Send Response</button>
              <button class="btn btn-success mt-2">Mark as Resolved</button>
            </div>
          </div>
          <div class="query-card card">
            <div class="card-body">
              <h5 class="card-title">Query #2</h5>
              <p class="card-text"><strong>Status:</strong> <span class="query-status">Resolved</span></p>
              <p class="card-text"><strong>Customer:</strong> Jane Smith</p>
              <p class="card-text"><strong>Message:</strong> I need a refund for my last order.</p>
              <p class="card-text"><strong>Response:</strong> Your refund has been processed.</p>
              <button class="btn btn-secondary mt-2" disabled>Send Response</button>
              <button class="btn btn-success mt-2" disabled>Mark as Resolved</button>
            </div>
          </div>
          <!-- Add more queries here -->
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
