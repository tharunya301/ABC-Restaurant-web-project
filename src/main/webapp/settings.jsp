<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin Dashboard - Settings</title>
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
    .form-group { margin-bottom: 1.5rem; }
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
          <a class="nav-link active" href="settings.html">Settings</a>
        </li>
      </ul>
    </nav>
    <main class="col-md-10 content">
      <h2>Settings</h2>
      <p>Configure system-wide settings below:</p>

      <!-- Application Settings -->
      <div class="card mb-4">
        <div class="card-header">Application Settings</div>
        <div class="card-body">
          <form>
            <div class="form-group">
              <label for="appName">Application Name</label>
              <input type="text" class="form-control" id="appName" placeholder="Enter application name">
            </div>
            <div class="form-group">
              <label for="appDescription">Application Description</label>
              <textarea class="form-control" id="appDescription" rows="3" placeholder="Enter application description"></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Save Settings</button>
          </form>
        </div>
      </div>

      <!-- Contact Information -->
      <div class="card mb-4">
        <div class="card-header">Contact Information</div>
        <div class="card-body">
          <form>
            <div class="form-group">
              <label for="contactEmail">Contact Email</label>
              <input type="email" class="form-control" id="contactEmail" placeholder="Enter contact email">
            </div>
            <div class="form-group">
              <label for="contactPhone">Contact Phone</label>
              <input type="tel" class="form-control" id="contactPhone" placeholder="Enter contact phone number">
            </div>
            <button type="submit" class="btn btn-primary">Update Contact Info</button>
          </form>
        </div>
      </div>

      <!-- Business Hours -->
      <div class="card mb-4">
        <div class="card-header">Business Hours</div>
        <div class="card-body">
          <form>
            <div class="form-group">
              <label for="businessHours">Business Hours</label>
              <input type="text" class="form-control" id="businessHours" placeholder="Enter business hours (e.g., Mon-Fri: 9 AM - 5 PM)">
            </div>
            <button type="submit" class="btn btn-primary">Update Business Hours</button>
          </form>
        </div>
      </div>

      <!-- System Appearance -->
      <div class="card mb-4">
        <div class="card-header">System Appearance</div>
        <div class="card-body">
          <form>
            <div class="form-group">
              <label for="themeSelect">Theme</label>
              <select class="form-control" id="themeSelect">
                <option>Light</option>
                <option>Dark</option>
              </select>
            </div>
            <div class="form-group">
              <label for="logoUpload">Upload Logo</label>
              <input type="file" class="form-control-file" id="logoUpload">
            </div>
            <button type="submit" class="btn btn-primary">Save Appearance Settings</button>
          </form>
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
