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

    .query-table th, .query-table td {
      text-align: center; vertical-align: middle;
    }

    .query-detail {
      border: 1px solid #dee2e6; padding: 15px; margin-top: 20px;
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
          <a class="nav-link" href="/staff?action=staffReservations">Reservations</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="/staff?action=staffQueries">Queries</a>
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
      <h2>Customer Queries</h2>

      <!-- Queries Table -->
      <div class="table-responsive">
        <table class="table table-striped query-table">
          <thead>
          <tr>
            <th>Query ID</th>
            <th>Customer Name</th>
            <th>Subject</th>
            <th>Date Submitted</th>
            <th>Status</th>
            <th>Action</th>
          </tr>
          </thead>
          <tbody>
          <tr>
            <td>001</td>
            <td>John Doe</td>
            <td>com.example.cis6003_app.servlets.Reservation Issue</td>
            <td>2024-09-01</td>
            <td><span class="badge badge-warning">Pending</span></td>
            <td><button class="btn btn-sm btn-primary" data-toggle="modal" data-target="#queryModal">View</button></td>
          </tr>
          <tr>
            <td>002</td>
            <td>Jane Smith</td>
            <td>Service Inquiry</td>
            <td>2024-09-02</td>
            <td><span class="badge badge-success">Resolved</span></td>
            <td><button class="btn btn-sm btn-primary" data-toggle="modal" data-target="#queryModal">View</button></td>
          </tr>
          <!-- Add more queries as needed -->
          </tbody>
        </table>
      </div>

      <!-- Query Detail Modal -->
      <div class="modal fade" id="queryModal" tabindex="-1" aria-labelledby="queryModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="queryModalLabel">Query Details</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <div class="query-detail">
                <h5>Subject: com.example.cis6003_app.servlets.Reservation Issue</h5>
                <p><strong>Customer Name:</strong> John Doe</p>
                <p><strong>Date Submitted:</strong> 2024-09-01</p>
                <p><strong>Status:</strong> Pending</p>
                <hr>
                <p><strong>Message:</strong> I have an issue with my reservation. The date I selected was incorrect, and I need to change it. Can you assist me with this?</p>
              </div>

              <!-- Response Form -->
              <form>
                <div class="form-group">
                  <label for="response">Your Response</label>
                  <textarea class="form-control" id="response" rows="4" placeholder="Write your response here..."></textarea>
                </div>
                <button type="submit" class="btn btn-primary">Send Response</button>
              </form>
            </div>
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
