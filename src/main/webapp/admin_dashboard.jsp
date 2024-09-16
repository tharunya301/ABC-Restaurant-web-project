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

    .card {
      margin-bottom: 20px;
    }
    .chart-container {
      height: 300px;
    }

  </style>
</head>
<body>
<%
  String message = request.getParameter("message");
%>
<script>
  // Check if the parameters are not null or empty before showing the alert
  <% if (message != null && !message.isEmpty()) { %>
  alert('<%= message %>');
  <% } %>
</script>
<div class="container-fluid">
  <div class="row">
    <nav class="col-md-2 sidebar">
      <h4>Admin Dashboard</h4>
      <ul class="nav flex-column">
        <li class="nav-item">
          <a class="nav-link active" href="/admin?action=overview">Overview</a>
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
          <a class="nav-link" href="/admin?action=reports">Reports</a>
        </li>
      </ul>
    </nav>
    <main class="col-md-10 content">

      <!-- Overview -->
      <div id="overview">
        <h2>Overview</h2>
        <%@ page import="java.sql.*" %>
        <%@ page import="javax.sql.*" %>

        <%
          // Establish connection to MySQL
          Connection conn = null;
          PreparedStatement ps = null;
          ResultSet rs = null;
          String url = "jdbc:mysql://localhost:3306/test";
          String user = "tharunya";
          String password = "1234";

          try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url, user, password);

            // Query for total reservations
            String queryTotalReservations = "SELECT COUNT(*) FROM reservations";
            ps = conn.prepareStatement(queryTotalReservations);
            rs = ps.executeQuery();
            rs.next();
            int totalReservations = rs.getInt(1);
            rs.close();
            ps.close();

            // Query for total revenue
            String queryTotalRevenue = "SELECT SUM(revenue) FROM reservations";
            ps = conn.prepareStatement(queryTotalRevenue);
            rs = ps.executeQuery();
            rs.next();
            double totalRevenue = rs.getDouble(1);
            rs.close();
            ps.close();

            // Query for pending queries
            String queryPendingQueries = "SELECT COUNT(*) FROM queries WHERE status='Pending'";
            ps = conn.prepareStatement(queryPendingQueries);
            rs = ps.executeQuery();
            rs.next();
            int pendingQueries = rs.getInt(1);
            rs.close();
            ps.close();

            // Query for cancelled orders
            String queryCancelledOrders = "SELECT COUNT(*) FROM reservations WHERE status='Cancelled'";
            ps = conn.prepareStatement(queryCancelledOrders);
            rs = ps.executeQuery();
            rs.next();
            int cancelledOrders = rs.getInt(1);
            rs.close();
            ps.close();
        %>
          <div class="overview">
            <!-- Overview Cards -->
            <div class="row">
              <div class="col-md-3">
                <div class="card text-white bg-primary">
                  <div class="card-body">
                    <h5 class="card-title">Total Reservations</h5>
                    <p class="card-text"><%= totalReservations %></p>
                  </div>
                </div>
              </div>
              <div class="col-md-3">
                <div class="card text-white bg-success">
                  <div class="card-body">
                    <h5 class="card-title">Total Revenue</h5>
                    <p class="card-text">Rs. <%= totalRevenue %></p>
                  </div>
                </div>
              </div>
              <div class="col-md-3">
                <div class="card text-white bg-warning">
                  <div class="card-body">
                    <h5 class="card-title">Pending Queries</h5>
                    <p class="card-text"><%= pendingQueries %></p>
                  </div>
                </div>
              </div>
              <div class="col-md-3">
                <div class="card text-white bg-danger">
                  <div class="card-body">
                    <h5 class="card-title">Cancelled Orders</h5>
                    <p class="card-text"><%= cancelledOrders %></p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        <%
          } catch (Exception e) {
            e.printStackTrace();
          } finally {
            if (rs != null) rs.close();
            if (ps != null) ps.close();
            if (conn != null) conn.close();
          }
        %>

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
                  <canvas id="reservationsOverTimeChart"></canvas>

                  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

                  <script>
                    var ctx = document.getElementById('reservationsOverTimeChart').getContext('2d');

                    var reservationDates = [
                      <c:forEach var="entry" items="${reservationsOverTime}">
                      '${entry.key}',
                      </c:forEach>
                    ];

                    var reservationCounts = [
                      <c:forEach var="entry" items="${reservationsOverTime}">
                      ${entry.value},
                      </c:forEach>
                    ];

                    var reservationsOverTimeChart = new Chart(ctx, {
                      type: 'line',
                      data: {
                        labels: reservationDates, // X-axis labels
                        datasets: [{
                          label: 'Reservations Over Time',
                          data: reservationCounts, // Y-axis values
                          backgroundColor: 'rgba(75, 192, 192, 0.2)',
                          borderColor: 'rgba(75, 192, 192, 1)',
                          borderWidth: 1
                        }]
                      },
                      options: {
                        scales: {
                          y: {
                            beginAtZero: true
                          }
                        }
                      }
                    });
                  </script>

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
                  <canvas id="revenueBreakdownChart"></canvas>

                  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

                  <script>
                    var ctx = document.getElementById('revenueBreakdownChart').getContext('2d');

                    var revenueLabels = [
                      <c:forEach var="entry" items="${revenueBreakdown}">
                      '${entry.key}',
                      </c:forEach>
                    ];

                    var revenueData = [
                      <c:forEach var="entry" items="${revenueBreakdown}">
                      ${entry.value},
                      </c:forEach>
                    ];

                    var revenueBreakdownChart = new Chart(ctx, {
                      type: 'pie',
                      data: {
                        labels: revenueLabels, // Statuses like "Confirmed", "Pending", "Cancelled"
                        datasets: [{
                          data: revenueData, // Revenue values
                          backgroundColor: ['#28a745', '#ffc107', '#dc3545'],
                          hoverOffset: 4
                        }]
                      }
                    });
                  </script>

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

                <%@ page import="java.util.*" %>
                <%@ page import="com.example.cis6003_app.servlets.Reservation" %>

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
                          <td><%= reservation.getStatus() %></td>
                        </tr> <%
                      }
                    } %>
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
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

</body>
</html>
