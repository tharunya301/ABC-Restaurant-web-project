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

    .task-list { margin-top: 20px; }
    .task-item { padding: 15px; border-radius: 5px; background: #e9ecef; margin-bottom: 10px; }
    .task-item.completed { background: #d4edda; }
    .task-actions { display: flex; justify-content: flex-end; }
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
          <a class="nav-link active" href="/staff?action=dailyTasks">Daily Tasks</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/staff?action=serviceManagement">Service Management</a>
        </li>
      </ul>
    </nav>
    <main class="col-md-10 content">

      <!-- Daily Tasks Section -->
      <section id="daily-tasks" class="task-list">
        <h2>Daily Tasks</h2>

        <!-- Add New Task -->
        <form class="form-inline mb-4">
          <input type="text" class="form-control mr-2" placeholder="Enter new task">
          <button type="submit" class="btn btn-primary">Add Task</button>
        </form>

        <!-- Task Items -->
        <div class="task-item">
          <span>Prepare the dining area for lunch service.</span>
          <div class="task-actions">
            <button class="btn btn-success btn-sm mr-2">Mark as Completed</button>
            <button class="btn btn-danger btn-sm">Delete</button>
          </div>
        </div>

        <div class="task-item completed">
          <span>Stock the kitchen with fresh ingredients.</span>
          <div class="task-actions">
            <button class="btn btn-secondary btn-sm disabled">Completed</button>
            <button class="btn btn-danger btn-sm">Delete</button>
          </div>
        </div>

        <div class="task-item">
          <span>Check inventory levels for the bar.</span>
          <div class="task-actions">
            <button class="btn btn-success btn-sm mr-2">Mark as Completed</button>
            <button class="btn btn-danger btn-sm">Delete</button>
          </div>
        </div>

        <!-- Add more tasks as needed -->
      </section>
    </main>
  </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
