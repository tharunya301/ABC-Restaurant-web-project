<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin Dashboard - User Management</title>
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

    .table th, .table td {
      vertical-align: middle;
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
          <a class="nav-link active" href="user_managemet.html">User Management</a>
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
        <li class="nav-item">
          <a class="nav-link" href="settings.html">Settings</a>
        </li>
      </ul>
    </nav>
    <main class="col-md-10 content">
      <h2>User Management</h2>
      <div class="d-flex justify-content-between mb-3">
        <h4>Manage Users</h4>
        <button class="btn btn-primary" data-toggle="modal" data-target="#addUserModal">Add New User</button>
      </div>
      <table class="table table-bordered">
        <thead>
        <tr>
          <th>#</th>
          <th>Name</th>
          <th>Email</th>
          <th>Role</th>
          <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <!-- Example Row -->
        <tr>
          <td>1</td>
          <td>John Doe</td>
          <td>johndoe@example.com</td>
          <td>Admin</td>
          <td>
            <button class="btn btn-sm btn-warning" data-toggle="modal" data-target="#editUserModal">Edit</button>
            <button class="btn btn-sm btn-danger" data-toggle="modal" data-target="#deleteUserModal">Delete</button>
          </td>
        </tr>
        <!-- More rows can be added dynamically -->
        </tbody>
      </table>
    </main>
  </div>
</div>

<!-- Add User Modal -->
<div class="modal fade" id="addUserModal" tabindex="-1" role="dialog" aria-labelledby="addUserModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="addUserModalLabel">Add New User</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
          <div class="form-group">
            <label for="userName">Name</label>
            <input type="text" class="form-control" id="userName" placeholder="Enter name">
          </div>
          <div class="form-group">
            <label for="userEmail">Email</label>
            <input type="email" class="form-control" id="userEmail" placeholder="Enter email">
          </div>
          <div class="form-group">
            <label for="userRole">Role</label>
            <select class="form-control" id="userRole">
              <option>Admin</option>
              <option>Staff</option>
              <option>Customer</option>
            </select>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save User</button>
      </div>
    </div>
  </div>
</div>

<!-- Edit User Modal -->
<div class="modal fade" id="editUserModal" tabindex="-1" role="dialog" aria-labelledby="editUserModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="editUserModalLabel">Edit User</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
          <div class="form-group">
            <label for="editUserName">Name</label>
            <input type="text" class="form-control" id="editUserName" value="John Doe">
          </div>
          <div class="form-group">
            <label for="editUserEmail">Email</label>
            <input type="email" class="form-control" id="editUserEmail" value="johndoe@example.com">
          </div>
          <div class="form-group">
            <label for="editUserRole">Role</label>
            <select class="form-control" id="editUserRole">
              <option>Admin</option>
              <option>Staff</option>
              <option>Customer</option>
            </select>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save Changes</button>
      </div>
    </div>
  </div>
</div>

<!-- Delete User Modal -->
<div class="modal fade" id="deleteUserModal" tabindex="-1" role="dialog" aria-labelledby="deleteUserModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="deleteUserModalLabel">Delete User</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        Are you sure you want to delete this user?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
        <button type="button" class="btn btn-danger">Yes, Delete</button>
      </div>
    </div>
  </div>
</div>

<!-- <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> -->
</body>
</html>
