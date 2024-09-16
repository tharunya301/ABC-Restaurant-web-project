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
        .offer-card { margin-bottom: 15px; }
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
                    <a class="nav-link active" href="/admin?action=offersPromotions">Offers & Promotions</a>
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
            <h2>Offers & Promotions</h2>

            <!-- View Current Offers -->
            <div class="mb-4">
                <h4>Current Offers</h4>
                <div class="list-group">
                    <!-- Example offer item -->
                    <div class="list-group-item offer-card">
                        <h5 class="mb-1">20% Off on All Pizzas</h5>
                        <p class="mb-1">Valid from September 1, 2024 to September 30, 2024.</p>
                        <div class="d-flex justify-content-between align-items-center">
                            <small class="text-muted">Created on August 25, 2024</small>
                            <button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#editOfferModal">Edit</button>
                            <button class="btn btn-danger btn-sm">Remove</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Create New Offer -->
            <div class="mb-4">
                <h4>Create New Offer</h4>
                <form>
                    <div class="form-group">
                        <label for="offerTitle">Offer Title</label>
                        <input type="text" class="form-control" id="offerTitle" placeholder="Enter offer title">
                    </div>
                    <div class="form-group">
                        <label for="offerDescription">Description</label>
                        <textarea class="form-control" id="offerDescription" rows="3" placeholder="Enter offer description"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="offerStartDate">Start Date</label>
                        <input type="date" class="form-control" id="offerStartDate">
                    </div>
                    <div class="form-group">
                        <label for="offerEndDate">End Date</label>
                        <input type="date" class="form-control" id="offerEndDate">
                    </div>
                    <button type="submit" class="btn btn-primary">Create Offer</button>
                </form>
            </div>

            <!-- Edit Offer Modal -->
            <div class="modal fade" id="editOfferModal" tabindex="-1" role="dialog" aria-labelledby="editOfferModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="editOfferModalLabel">Edit Offer</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form>
                                <div class="form-group">
                                    <label for="editOfferTitle">Offer Title</label>
                                    <input type="text" class="form-control" id="editOfferTitle" value="20% Off on All Pizzas">
                                </div>
                                <div class="form-group">
                                    <label for="editOfferDescription">Description</label>
                                    <textarea class="form-control" id="editOfferDescription" rows="3">Valid from September 1, 2024 to September 30, 2024.</textarea>
                                </div>
                                <div class="form-group">
                                    <label for="editOfferStartDate">Start Date</label>
                                    <input type="date" class="form-control" id="editOfferStartDate" value="2024-09-01">
                                </div>
                                <div class="form-group">
                                    <label for="editOfferEndDate">End Date</label>
                                    <input type="date" class="form-control" id="editOfferEndDate" value="2024-09-30">
                                </div>
                                <button type="submit" class="btn btn-primary">Save Changes</button>
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
