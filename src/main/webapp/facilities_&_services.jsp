<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - Facilities & Services</title>
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
        .modal-header { background: #007bff; color: #fff; }
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
                    <a class="nav-link" href="/admin?action=reservations">Reservations</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/admin?action=queries">Queries</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/admin?action=offersPromotions">Offers & Promotions</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="/admin?action=facilitiesServices">Facilities & Services</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/admin?action=reports">Reports</a>
                </li>
            </ul>
        </nav>
        <main class="col-md-10 content">
            <h2>Facilities & Services</h2>

            <!-- Button to Open Add Facility/Service Modal -->
            <button type="button" class="btn btn-primary mb-3" data-toggle="modal" data-target="#addModal">
                Add New Facility/Service
            </button>

            <!-- Facilities & Services Table -->
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Description</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                <!-- Example Row -->
                <tr>
                    <td>1</td>
                    <td>Outdoor Seating</td>
                    <td>Spacious outdoor seating area with a view.</td>
                    <td>
                        <button class="btn btn-warning btn-sm" data-toggle="modal" data-target="#editModal">Edit</button>
                        <button class="btn btn-danger btn-sm">Delete</button>
                    </td>
                </tr>
                <!-- Add more rows as needed -->
                </tbody>
            </table>

            <!-- Add Facility/Service Modal -->
            <div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="addModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="addModalLabel">Add New Facility/Service</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <form>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label for="facilityName">Name</label>
                                    <input type="text" class="form-control" id="facilityName" placeholder="Enter name">
                                </div>
                                <div class="form-group">
                                    <label for="facilityDescription">Description</label>
                                    <textarea class="form-control" id="facilityDescription" rows="3" placeholder="Enter description"></textarea>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-primary">Save</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <!-- Edit Facility/Service Modal -->
            <div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="editModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="editModalLabel">Edit Facility/Service</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <form>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label for="editFacilityName">Name</label>
                                    <input type="text" class="form-control" id="editFacilityName" value="Outdoor Seating">
                                </div>
                                <div class="form-group">
                                    <label for="editFacilityDescription">Description</label>
                                    <textarea class="form-control" id="editFacilityDescription" rows="3">Spacious outdoor seating area with a view.</textarea>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-primary">Save Changes</button>
                            </div>
                        </form>
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
