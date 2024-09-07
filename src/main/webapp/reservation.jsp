<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin Dashboard - Reservations</title>
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

    .sidebar .nav-item .active {
      background-color: #b68d2c;
      color: black;
      font-weight: bold;
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

    .reservation-table th, .reservation-table td {
      vertical-align: middle;
    }

    .filter-section {
      margin-bottom: 20px;
      margin-top: 50px;
    }

    .status-badge {
      font-size: 0.9rem;
      padding: 0.4em 0.6em;
    }

    .status-confirmed {
      background-color: #28a745;
      color: white;
    }

    .status-pending {
      background-color: #ffc107;
      color: black;
    }

    .status-cancelled {
      background-color: #dc3545;
      color: white;
    }

    .add-reservation-section {
      margin-top: 20px;
      padding: 20px;
      background-color: #f7f7f7;
      border-radius: 8px;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }

    .add-reservation-section h3 {
      margin-bottom: 15px;
      color: #333;
    }

    .form-group {
      margin-bottom: 15px;
    }

    .form-group label {
      display: block;
      font-weight: bold;
      margin-bottom: 5px;
      color: #555;
    }

    .form-group input,
    .form-group select {
      width: 100%;
      padding: 8px;
      border: 1px solid #ccc;
      border-radius: 4px;
      font-size: 16px;
    }

    .btn-submit {
      background-color: #28a745;
      color: white;
      padding: 10px 20px;
      border: none;
      border-radius: 4px;
      font-size: 16px;
      cursor: pointer;
    }

    .btn-submit:hover {
      background-color: #218838;
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
          <a class="nav-link" href="admin_dashboard.html">Overview</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="user_managemet.html">User Management</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="reservation.html">Reservations</a>
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
        <li class="nav-item">
          <a class="nav-link" href="settings.html">Settings</a>
        </li>
      </ul>
    </nav>
    <main class="col-md-10 content">
      <h2>Reservations</h2>
      <p>Manage all restaurant reservations.</p>

      <!-- Add Reservation Section -->
      <div class="add-reservation-section">
        <h3>Add New</h3>
        <form id="add-reservation-form">
          <div class="form-group">
            <label for="customerName">Customer Name:</label>
            <input type="text" id="customerName" name="customerName" required>
          </div>

          <div class="form-group">
            <label for="reservationDate">Date:</label>
            <input type="date" id="reservationDate" name="reservationDate" required>
          </div>

          <div class="form-group">
            <label for="reservationTime">Time:</label>
            <input type="time" id="reservationTime" name="reservationTime" required>
          </div>

          <div class="form-group">
            <label for="reservationType">Type:</label>
            <select id="reservationType" name="reservationType" required>
              <option value="Dine-in">Dine-in</option>
              <option value="Delivery">Delivery</option>
            </select>
          </div>

          <div class="form-group">
            <label for="status">Status:</label>
            <select id="status" name="status" required>
              <option value="Confirmed">Confirmed</option>
              <option value="Pending">Pending</option>
              <option value="Cancelled">Cancelled</option>
            </select>
          </div>

          <button type="submit" class="btn-submit">Add Reservation</button>
        </form>
      </div>

      <!-- Filter Section -->
      <div class="filter-section">
        <form class="form-inline">
          <label class="mr-2">Filter by:</label>
          <input type="date" class="form-control mr-2" placeholder="Date">
          <input type="time" class="form-control mr-2" placeholder="Time">
          <select class="form-control mr-2">
            <option value="">Status</option>
            <option value="confirmed">Confirmed</option>
            <option value="pending">Pending</option>
            <option value="cancelled">Cancelled</option>
          </select>
          <button type="submit" class="btn btn-primary">Apply Filters</button>
        </form>
      </div>

      <!-- Reservations Table -->
      <div class="table-responsive">
        <table class="table table-bordered reservation-table">
          <thead class="thead-light">
          <tr>
            <th>#</th>
            <th>Customer Name</th>
            <th>Date</th>
            <th>Time</th>
            <th>Type</th>
            <th>Status</th>
            <th>Actions</th>
          </tr>
          </thead>
          <tbody>
          <tr>
            <td>1</td>
            <td>John Doe</td>
            <td>2024-09-15</td>
            <td>19:00</td>
            <td>Dine-in</td>
            <td><span class="badge status-badge status-confirmed">Confirmed</span></td>
            <td>
              <button class="btn btn-sm btn-info">Edit</button>
              <button class="btn btn-sm btn-danger">Cancel</button>
            </td>
          </tr>
          <tr>
            <td>2</td>
            <td>Jane Smith</td>
            <td>2024-09-16</td>
            <td>12:30</td>
            <td>Delivery</td>
            <td><span class="badge status-badge status-pending">Pending</span></td>
            <td>
              <button class="btn btn-sm btn-info">Edit</button>
              <button class="btn btn-sm btn-danger">Cancel</button>
            </td>
          </tr>
          <tr>
            <td>3</td>
            <td>Mark Wilson</td>
            <td>2024-09-17</td>
            <td>18:00</td>
            <td>Dine-in</td>
            <td><span class="badge status-badge status-cancelled">Cancelled</span></td>
            <td>
              <button class="btn btn-sm btn-info">Edit</button>
              <button class="btn btn-sm btn-danger">Cancel</button>
            </td>
          </tr>
          </tbody>
        </table>
      </div>
    </main>
  </div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
