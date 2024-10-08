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
          <a class="nav-link" href="/admin?action=overview">Overview</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/admin?action=userManagement">User Management</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="/admin?action=reservations">Reservations</a>
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
          <a class="nav-link" href="/admin?action=reports">Reports</a>
        </li>
      </ul>
    </nav>
    <main class="col-md-10 content">
      <h2>Reservations</h2>
      <p>Manage all restaurant reservations.</p>

      <!-- Add Reservation Section -->
      <div class="add-reservation-section">
        <h3>Add New</h3>
        <form id="add-reservation-form" action="reservation-1?isAddNew=true" method="post">
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

<%--      <!-- Filter Section -->--%>
<%--      <div class="filter-section">--%>
<%--        <form class="form-inline">--%>
<%--          <label class="mr-2">Filter by:</label>--%>
<%--          <input type="date" class="form-control mr-2" placeholder="Date">--%>
<%--          <input type="time" class="form-control mr-2" placeholder="Time">--%>
<%--          <select class="form-control mr-2">--%>
<%--            <option value="">Status</option>--%>
<%--            <option value="confirmed">Confirmed</option>--%>
<%--            <option value="pending">Pending</option>--%>
<%--            <option value="cancelled">Cancelled</option>--%>
<%--          </select>--%>
<%--          <button type="submit" class="btn btn-primary">Apply Filters</button>--%>
<%--        </form>--%>
<%--      </div>--%>

      <!-- Reservations Table -->
      <div class="table-responsive">
        <%@ page import="java.util.*" %>
        <%@ page import="com.example.cis6003_app.servlets.Reservation" %>
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
          <%
            @SuppressWarnings("unchecked")
            List<Reservation> reservations = (List<Reservation>) request.getAttribute("reservations");
          %>
          <% if(reservations != null) {
            for (Reservation reservation : reservations) {
          %> <tr>
            <td><%= reservation.getId() %></td>
            <td><%= reservation.getCustomerName() %></td>
            <td><%= reservation.getDate() %></td>
            <td><%= reservation.getTime() %></td>
            <td><%= reservation.getType() %></td>
            <td><%= reservation.getStatus() %></td>
            <td>
              <button class="btn btn-sm btn-info" data-toggle="modal" data-target="#editReservationsModal">Edit</button>
              <button class="btn btn-sm btn-danger" data-toggle="modal" data-target="#deleteReservationModal">Cancel</button>
            </td>
          </tr> <%
              }
            } %>
          </tbody>
        </table>
      </div>

      <!-- Edit Reservations Modal -->
      <div class="modal fade" id="editReservationsModal" tabindex="-1" role="dialog" aria-labelledby="editReservationsModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="editReservationsModalLabel">Edit Reservation</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <form id="edit-reservation-form" action="reservation-1?isAddNew=true" method="post">
                <div class="form-group">
                  <label for="reservationNo">reservation ID:</label>
                  <input type="text" id="reservationNo" name="reservationNo">
                </div>

                <div class="form-group">
                  <label for="customerName">Customer Name:</label>
                  <input type="text" id="editCustomerName" name="customerName">
                </div>

                <div class="form-group">
                  <label for="reservationDate">Date:</label>
                  <input type="date" id="editReservationDate" name="reservationDate">
                </div>

                <div class="form-group">
                  <label for="reservationTime">Time:</label>
                  <input type="time" id="editReservationTime" name="reservationTime">
                </div>

                <div class="form-group">
                  <label for="reservationType">Type:</label>
                  <select id="editReservationType" name="reservationType">
                    <option value="Dine-in">Dine-in</option>
                    <option value="Delivery">Delivery</option>
                  </select>
                </div>

                <div class="form-group">
                  <label for="status">Status:</label>
                  <select id="editStatus" name="status">
                    <option value="Confirmed">Confirmed</option>
                    <option value="Pending">Pending</option>
                    <option value="Cancelled">Cancelled</option>
                  </select>
                </div>

                <button type="submit" class="btn btn-primary">Save Changes</button>
              </form>
            </div>
          </div>
        </div>
      </div>

      <!-- Delete Reservation Modal -->
      <div class="modal fade" id="deleteReservationModal" tabindex="-1" role="dialog" aria-labelledby="deleteReservationModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="deleteReservationModalLabel">Delete User</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              Are you sure you want to delete this reservations?
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
              <button type="button" class="btn btn-danger">Yes, Delete</button>
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
