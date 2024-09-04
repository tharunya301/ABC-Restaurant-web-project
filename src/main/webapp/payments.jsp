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

    .table-container {
      margin-top: 20px;
    }

    .form-container {
      margin-top: 30px;
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
          <a class="nav-link" href="staff_dashboard.html">Reservations</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="queries.html">Queries</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="payments.html">Payments</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="daily_taks.html">Daily Tasks</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="service_management.html">Service Management</a>
        </li>
      </ul>
    </nav>
    <main class="col-md-10 content">
      <div class="table-container">
        <h2>Payments</h2>
        <table class="table table-bordered table-striped">
          <thead class="thead-dark">
          <tr>
            <th>Payment ID</th>
            <th>Customer Name</th>
            <th>Reservation ID</th>
            <th>Amount</th>
            <th>Status</th>
            <th>Date</th>
            <th>Actions</th>
          </tr>
          </thead>
          <tbody>
          <tr>
            <td>001</td>
            <td>John Doe</td>
            <td>R-1001</td>
            <td>LKR 5000.00</td>
            <td>Completed</td>
            <td>2024-09-01</td>
            <td>
              <button class="btn btn-primary btn-sm">View</button>
              <button class="btn btn-danger btn-sm">Refund</button>
            </td>
          </tr>
          <!-- More rows as needed -->
          </tbody>
        </table>
      </div>

      <div class="form-container">
        <h4>Process New Payment</h4>
        <form>
          <div class="form-group">
            <label for="reservationID">Reservation ID</label>
            <input type="text" class="form-control" id="reservationID" placeholder="Enter Reservation ID">
          </div>
          <div class="form-group">
            <label for="customerName">Customer Name</label>
            <input type="text" class="form-control" id="customerName" placeholder="Enter Customer Name">
          </div>
          <div class="form-group">
            <label for="amount">Amount (LKR)</label>
            <input type="number" class="form-control" id="amount" placeholder="Enter Amount">
          </div>
          <div class="form-group">
            <label for="paymentStatus">Payment Status</label>
            <select class="form-control" id="paymentStatus">
              <option>Pending</option>
              <option>Completed</option>
              <option>Refunded</option>
            </select>
          </div>
          <button type="submit" class="btn btn-success">Process Payment</button>
        </form>
      </div>
    </main>
  </div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
