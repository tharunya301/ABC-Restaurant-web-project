<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>ABC Restaurant</title>
  <meta name="description" content="">
  <meta name="keywords" content="">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <!-- <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon"> -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">



  <!-- Fonts -->
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Playfair+Display:ital,wght@0,400;0,500;0,600;0,700;0,800;0,900;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Main CSS File -->
  <link href="assets/css/main.css" rel="stylesheet">

  <style>
    body {
      padding-top: 56px; /* Adjust for fixed navbar */
    }

    .navbar {
      margin-bottom: 20px;
    }

    .card-header {
      font-size: 1.25rem;
      font-weight: bold;
    }

    .card-body a {
      margin-bottom: 10px;
    }

  </style>
</head>
<body>
<header id="header" class="header fixed-top">
  <div class="branding d-flex align-items-cente">

    <div class="container position-relative d-flex align-items-center justify-content-between">
      <a href="customer_dashboard.html" class="logo d-flex align-items-center me-auto me-xl-0">
        <h1 class="sitename">ABC Restaurant</h1>
      </a>

      <nav id="navmenu" class="navmenu">
        <ul>
          <li><a href="#hero" class="active">Home<br></a></li>
          <li><a href="#menu">Menu</a></li>
          <li><a href="#specials">Specials</a></li>
          <li><a href="#events">Events</a></li>
          <li><a href="#chefs">Chefs</a></li>
          <li><a href="#offers">Offers</a></li>
          <li><a href="#queries">Queries</a></li>
        </ul>
        <i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
      </nav>
      <a class="btn-login d-none d-xl-block" href="#book-a-table">Book a Table</a>

    </div>

  </div>
</header>

<main>
  <!-- Hero Section -->
  <section id="hero" class="hero section dark-background">

    <img src="assets/img/hero-bg.jpg" alt="" data-aos="fade-in">

    <div class="container">
      <div class="row">
        <div class="col-lg-8 d-flex flex-column align-items-center align-items-lg-start">
          <h2 data-aos="fade-up" data-aos-delay="100">Visit us <span>Book your Table</span></h2>
          <p data-aos="fade-up" data-aos-delay="200">Delivering great food for more than 10 years!</p>
          <div class="d-flex mt-4" data-aos="fade-up" data-aos-delay="300">
            <a href="#menu" class="cta-btn">Our Menu</a>
            <a href="#book-a-table" class="cta-btn">Book a Table</a>
          </div>
        </div>
      </div>
    </div>
  </section><!-- /Hero Section -->

  <!-- Book A Table Section -->
  <section id="book-a-table" class="book-a-table section">
    <!-- Section Title -->
    <div class="container section-title" data-aos="fade-up">
      <h2>RESERVATION</h2>
      <p>Book a Table</p>
    </div><!-- End Section Title -->
    <div class="container" data-aos="fade-up" data-aos-delay="100">
      <form action="forms/book-a-table.php" method="post" role="form" class="php-email-form">
        <div class="row gy-4">
          <div class="col-lg-4 col-md-6">
            <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" required="">
          </div>
          <div class="col-lg-4 col-md-6">
            <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" required="">
          </div>
          <div class="col-lg-4 col-md-6">
            <input type="text" class="form-control" name="phone" id="phone" placeholder="Your Phone" required="">
          </div>
          <div class="col-lg-4 col-md-6">
            <input type="date" name="date" class="form-control" id="date" placeholder="Date" required="">
          </div>
          <div class="col-lg-4 col-md-6">
            <input type="time" class="form-control" name="time" id="time" placeholder="Time" required="">
          </div>
          <div class="col-lg-4 col-md-6">
            <input type="number" class="form-control" name="people" id="people" placeholder="# of people" required="">
          </div>
        </div>
        <div class="form-group mt-3">
          <textarea class="form-control" name="message" rows="5" placeholder="Message"></textarea>
        </div>
        <div class="text-center mt-3">
          <div class="loading">Loading</div>
          <div class="error-message"></div>
          <div class="sent-message">Your booking request was sent. We will call back or send an Email to confirm your reservation. Thank you!</div>
          <button type="submit">Book a Table</button>
        </div>
      </form><!-- End com.example.cis6003_app.servlets.Reservation Form -->
    </div>
  </section><!-- /Book A Table Section -->

  <!-- Menu Section -->
  <section id="menu" class="menu section">
    <!-- Section Title -->
    <div class="container section-title" data-aos="fade-up">
      <h2>Menu</h2>
      <p>Check Our Tasty Menu</p>
    </div><!-- End Section Title -->
    <div class="container isotope-layout" data-default-filter="*" data-layout="masonry" data-sort="original-order">
      <div class="row" data-aos="fade-up" data-aos-delay="100">
        <div class="col-lg-12 d-flex justify-content-center">
          <ul class="menu-filters isotope-filters">
            <li data-filter="*" class="filter-active">All</li>
            <li data-filter=".filter-starters">Starters</li>
            <li data-filter=".filter-salads">Salads</li>
            <li data-filter=".filter-specialty">Specialty</li>
          </ul>
        </div>
      </div><!-- Menu Filters -->
      <div class="row isotope-container" data-aos="fade-up" data-aos-delay="200">
        <div class="col-lg-6 menu-item isotope-item filter-starters">
          <img src="assets/img/menu/lobster-bisque.jpg" class="menu-img" alt="">
          <div class="menu-content">
            <a href="#">Lobster Bisque</a><span>$5.95</span>
          </div>
          <div class="menu-ingredients">
            Lorem, deren, trataro, filede, nerada
          </div>
        </div><!-- Menu Item -->
        <div class="col-lg-6 menu-item isotope-item filter-specialty">
          <img src="assets/img/menu/bread-barrel.jpg" class="menu-img" alt="">
          <div class="menu-content">
            <a href="#">Bread Barrel</a><span>$6.95</span>
          </div>
          <div class="menu-ingredients">
            Lorem, deren, trataro, filede, nerada
          </div>
        </div><!-- Menu Item -->
        <div class="col-lg-6 menu-item isotope-item filter-starters">
          <img src="assets/img/menu/cake.jpg" class="menu-img" alt="">
          <div class="menu-content">
            <a href="#">Crab Cake</a><span>$7.95</span>
          </div>
          <div class="menu-ingredients">
            A delicate crab cake served on a toasted roll with lettuce and tartar sauce
          </div>
        </div><!-- Menu Item -->
        <div class="col-lg-6 menu-item isotope-item filter-salads">
          <img src="assets/img/menu/caesar.jpg" class="menu-img" alt="">
          <div class="menu-content">
            <a href="#">Caesar Selections</a><span>$8.95</span>
          </div>
          <div class="menu-ingredients">
            Lorem, deren, trataro, filede, nerada
          </div>
        </div><!-- Menu Item -->
        <div class="col-lg-6 menu-item isotope-item filter-specialty">
          <img src="assets/img/menu/tuscan-grilled.jpg" class="menu-img" alt="">
          <div class="menu-content">
            <a href="#">Tuscan Grilled</a><span>$9.95</span>
          </div>
          <div class="menu-ingredients">
            Grilled chicken with provolone, artichoke hearts, and roasted red pesto
          </div>
        </div><!-- Menu Item -->
        <div class="col-lg-6 menu-item isotope-item filter-starters">
          <img src="assets/img/menu/mozzarella.jpg" class="menu-img" alt="">
          <div class="menu-content">
            <a href="#">Mozzarella Stick</a><span>$4.95</span>
          </div>
          <div class="menu-ingredients">
            Lorem, deren, trataro, filede, nerada
          </div>
        </div><!-- Menu Item -->
        <div class="col-lg-6 menu-item isotope-item filter-salads">
          <img src="assets/img/menu/greek-salad.jpg" class="menu-img" alt="">
          <div class="menu-content">
            <a href="#">Greek Salad</a><span>$9.95</span>
          </div>
          <div class="menu-ingredients">
            Fresh spinach, crisp romaine, tomatoes, and Greek olives
          </div>
        </div><!-- Menu Item -->
        <div class="col-lg-6 menu-item isotope-item filter-salads">
          <img src="assets/img/menu/spinach-salad.jpg" class="menu-img" alt="">
          <div class="menu-content">
            <a href="#">Spinach Salad</a><span>$9.95</span>
          </div>
          <div class="menu-ingredients">
            Fresh spinach with mushrooms, hard boiled egg, and warm bacon vinaigrette
          </div>
        </div><!-- Menu Item -->
        <div class="col-lg-6 menu-item isotope-item filter-specialty">
          <img src="assets/img/menu/lobster-roll.jpg" class="menu-img" alt="">
          <div class="menu-content">
            <a href="#">Lobster Roll</a><span>$12.95</span>
          </div>
          <div class="menu-ingredients">
            Plump lobster meat, mayo and crisp lettuce on a toasted bulky roll
          </div>
        </div><!-- Menu Item -->
      </div><!-- Menu Container -->
    </div>
  </section><!-- /Menu Section -->

  <!-- Specials Section -->
  <section id="specials" class="specials section">
    <!-- Section Title -->
    <div class="container section-title" data-aos="fade-up">
      <h2>Specials</h2>
      <p>Check Our Specials</p>
    </div><!-- End Section Title -->
    <div class="container" data-aos="fade-up" data-aos-delay="100">
      <div class="row">
        <div class="col-lg-3">
          <ul class="nav nav-tabs flex-column">
            <li class="nav-item">
              <a class="nav-link active show" data-bs-toggle="tab" href="#specials-tab-1">Modi sit est</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" data-bs-toggle="tab" href="#specials-tab-2">Unde praesentium sed</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" data-bs-toggle="tab" href="#specials-tab-3">Pariatur explicabo vel</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" data-bs-toggle="tab" href="#specials-tab-4">Nostrum qui quasi</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" data-bs-toggle="tab" href="#specials-tab-5">Iusto ut expedita aut</a>
            </li>
          </ul>
        </div>
        <div class="col-lg-9 mt-4 mt-lg-0">
          <div class="tab-content">
            <div class="tab-pane active show" id="specials-tab-1">
              <div class="row">
                <div class="col-lg-8 details order-2 order-lg-1">
                  <h3>Architecto ut aperiam autem id</h3>
                  <p class="fst-italic">Qui laudantium consequatur laborum sit qui ad sapiente dila parde sonata raqer a videna mareta paulona marka</p>
                  <p>Et nobis maiores eius. Voluptatibus ut enim blanditiis atque harum sint. Laborum eos ipsum ipsa odit magni. Incidunt hic ut molestiae aut qui. Est repellat minima eveniet eius et quis magni nihil. Consequatur dolorem quaerat quos qui similique accusamus nostrum rem vero</p>
                </div>
                <div class="col-lg-4 text-center order-1 order-lg-2">
                  <img src="assets/img/specials-1.png" alt="" class="img-fluid">
                </div>
              </div>
            </div>
            <div class="tab-pane" id="specials-tab-2">
              <div class="row">
                <div class="col-lg-8 details order-2 order-lg-1">
                  <h3>Et blanditiis nemo veritatis excepturi</h3>
                  <p class="fst-italic">Qui laudantium consequatur laborum sit qui ad sapiente dila parde sonata raqer a videna mareta paulona marka</p>
                  <p>Ea ipsum voluptatem consequatur quis est. Illum error ullam omnis quia et reiciendis sunt sunt est. Non aliquid repellendus itaque accusamus eius et velit ipsa voluptates. Optio nesciunt eaque beatae accusamus lerode pakto madirna desera vafle de nideran pal</p>
                </div>
                <div class="col-lg-4 text-center order-1 order-lg-2">
                  <img src="assets/img/specials-2.png" alt="" class="img-fluid">
                </div>
              </div>
            </div>
            <div class="tab-pane" id="specials-tab-3">
              <div class="row">
                <div class="col-lg-8 details order-2 order-lg-1">
                  <h3>Impedit facilis occaecati odio neque aperiam sit</h3>
                  <p class="fst-italic">Eos voluptatibus quo. Odio similique illum id quidem non enim fuga. Qui natus non sunt dicta dolor et. In asperiores velit quaerat perferendis aut</p>
                  <p>Iure officiis odit rerum. Harum sequi eum illum corrupti culpa veritatis quisquam. Neque necessitatibus illo rerum eum ut. Commodi ipsam minima molestiae sed laboriosam a iste odio. Earum odit nesciunt fugiat sit ullam. Soluta et harum voluptatem optio quae</p>
                </div>
                <div class="col-lg-4 text-center order-1 order-lg-2">
                  <img src="assets/img/specials-3.png" alt="" class="img-fluid">
                </div>
              </div>
            </div>
            <div class="tab-pane" id="specials-tab-4">
              <div class="row">
                <div class="col-lg-8 details order-2 order-lg-1">
                  <h3>Fuga dolores inventore laboriosam ut est accusamus laboriosam dolore</h3>
                  <p class="fst-italic">Totam aperiam accusamus. Repellat consequuntur iure voluptas iure porro quis delectus</p>
                  <p>Eaque consequuntur consequuntur libero expedita in voluptas. Nostrum ipsam necessitatibus aliquam fugiat debitis quis velit. Eum ex maxime error in consequatur corporis atque. Eligendi asperiores sed qui veritatis aperiam quia a laborum inventore</p>
                </div>
                <div class="col-lg-4 text-center order-1 order-lg-2">
                  <img src="assets/img/specials-4.png" alt="" class="img-fluid">
                </div>
              </div>
            </div>
            <div class="tab-pane" id="specials-tab-5">
              <div class="row">
                <div class="col-lg-8 details order-2 order-lg-1">
                  <h3>Est eveniet ipsam sindera pad rone matrelat sando reda</h3>
                  <p class="fst-italic">Omnis blanditiis saepe eos autem qui sunt debitis porro quia.</p>
                  <p>Exercitationem nostrum omnis. Ut reiciendis repudiandae minus. Omnis recusandae ut non quam ut quod eius qui. Ipsum quia odit vero atque qui quibusdam amet. Occaecati sed est sint aut vitae molestiae voluptate vel</p>
                </div>
                <div class="col-lg-4 text-center order-1 order-lg-2">
                  <img src="assets/img/specials-5.png" alt="" class="img-fluid">
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section><!-- /Specials Section -->

  <!-- Events Section -->
  <section id="events" class="events section">
    <img class="slider-bg" src="assets/img/events-bg.jpg" alt="" data-aos="fade-in">
    <div class="container">
      <div class="swiper init-swiper" data-aos="fade-up" data-aos-delay="100">
        <script type="application/json" class="swiper-config">
          {
            "loop": true,
            "speed": 600,
            "autoplay": {
              "delay": 5000
            },
            "slidesPerView": "auto",
            "pagination": {
              "el": ".swiper-pagination",
              "type": "bullets",
              "clickable": true
            }
          }
        </script>
        <div class="swiper-wrapper">
          <div class="swiper-slide">
            <div class="row gy-4 event-item">
              <div class="col-lg-6">
                <img src="assets/img/events-slider/events-slider-1.jpg" class="img-fluid" alt="">
              </div>
              <div class="col-lg-6 pt-4 pt-lg-0 content">
                <h3>Birthday Parties</h3>
                <div class="price">
                  <p><span>$189</span></p>
                </div>
                <p class="fst-italic">
                  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
                  magna aliqua.
                </p>
                <ul>
                  <li><i class="bi bi-check2-circle"></i> <span>Ullamco laboris nisi ut aliquip ex ea commodo consequat.</span></li>
                  <li><i class="bi bi-check2-circle"></i> <span>Duis aute irure dolor in reprehenderit in voluptate velit.</span></li>
                  <li><i class="bi bi-check2-circle"></i> <span>Ullamco laboris nisi ut aliquip ex ea commodo consequat.</span></li>
                </ul>
                <p>
                  Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
                  velit esse cillum dolore eu fugiat nulla pariatur
                </p>
              </div>
            </div>
          </div><!-- End Slider item -->
          <div class="swiper-slide">
            <div class="row gy-4 event-item">
              <div class="col-lg-6">
                <img src="assets/img/events-slider/events-slider-2.jpg" class="img-fluid" alt="">
              </div>
              <div class="col-lg-6 pt-4 pt-lg-0 content">
                <h3>Private Parties</h3>
                <div class="price">
                  <p><span>$290</span></p>
                </div>
                <p class="fst-italic">
                  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
                  magna aliqua.
                </p>
                <ul>
                  <li><i class="bi bi-check2-circle"></i> <span>Ullamco laboris nisi ut aliquip ex ea commodo consequat.</span></li>
                  <li><i class="bi bi-check2-circle"></i> <span>Duis aute irure dolor in reprehenderit in voluptate velit.</span></li>
                  <li><i class="bi bi-check2-circle"></i> <span>Ullamco laboris nisi ut aliquip ex ea commodo consequat.</span></li>
                </ul>
                <p>
                  Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
                  velit esse cillum dolore eu fugiat nulla pariatur
                </p>
              </div>
            </div>
          </div><!-- End Slider item -->
          <div class="swiper-slide">
            <div class="row gy-4 event-item">
              <div class="col-lg-6">
                <img src="assets/img/events-slider/events-slider-3.jpg" class="img-fluid" alt="">
              </div>
              <div class="col-lg-6 pt-4 pt-lg-0 content">
                <h3>Custom Parties</h3>
                <div class="price">
                  <p><span>$99</span></p>
                </div>
                <p class="fst-italic">
                  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
                  magna aliqua.
                </p>
                <ul>
                  <li><i class="bi bi-check2-circle"></i> <span>Ullamco laboris nisi ut aliquip ex ea commodo consequat.</span></li>
                  <li><i class="bi bi-check2-circle"></i> <span>Duis aute irure dolor in reprehenderit in voluptate velit.</span></li>
                  <li><i class="bi bi-check2-circle"></i> <span>Ullamco laboris nisi ut aliquip ex ea commodo consequat.</span></li>
                </ul>
                <p>
                  Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
                  velit esse cillum dolore eu fugiat nulla pariatur
                </p>
              </div>
            </div>
          </div><!-- End Slider item -->
        </div>
        <div class="swiper-pagination"></div>
      </div>
    </div>
  </section><!-- /Events Section -->

  <!-- Chefs Section -->
  <section id="chefs" class="chefs section">
    <!-- Section Title -->
    <div class="container section-title" data-aos="fade-up">
      <h2>Team</h2>
      <p>Necessitatibus eius consequatur</p>
    </div><!-- End Section Title -->
    <div class="container">
      <div class="row gy-4">
        <div class="col-lg-4" data-aos="fade-up" data-aos-delay="100">
          <div class="member">
            <img src="assets/img/chefs/chefs-1.jpg" class="img-fluid" alt="">
            <div class="member-info">
              <div class="member-info-content">
                <h4>Walter White</h4>
                <span>Master Chef</span>
              </div>
              <div class="social">
                <a href=""><i class="bi bi-twitter-x"></i></a>
                <a href=""><i class="bi bi-facebook"></i></a>
                <a href=""><i class="bi bi-instagram"></i></a>
                <a href=""><i class="bi bi-linkedin"></i></a>
              </div>
            </div>
          </div>
        </div><!-- End Team Member -->
        <div class="col-lg-4" data-aos="fade-up" data-aos-delay="200">
          <div class="member">
            <img src="assets/img/chefs/chefs-2.jpg" class="img-fluid" alt="">
            <div class="member-info">
              <div class="member-info-content">
                <h4>Sarah Jhonson</h4>
                <span>Patissier</span>
              </div>
              <div class="social">
                <a href=""><i class="bi bi-twitter-x"></i></a>
                <a href=""><i class="bi bi-facebook"></i></a>
                <a href=""><i class="bi bi-instagram"></i></a>
                <a href=""><i class="bi bi-linkedin"></i></a>
              </div>
            </div>
          </div>
        </div><!-- End Team Member -->
        <div class="col-lg-4" data-aos="fade-up" data-aos-delay="300">
          <div class="member">
            <img src="assets/img/chefs/chefs-3.jpg" class="img-fluid" alt="">
            <div class="member-info">
              <div class="member-info-content">
                <h4>William Anderson</h4>
                <span>Cook</span>
              </div>
              <div class="social">
                <a href=""><i class="bi bi-twitter-x"></i></a>
                <a href=""><i class="bi bi-facebook"></i></a>
                <a href=""><i class="bi bi-instagram"></i></a>
                <a href=""><i class="bi bi-linkedin"></i></a>
              </div>
            </div>
          </div>
        </div><!-- End Team Member -->
      </div>
    </div>
  </section><!-- /Chefs Section -->

  <!-- Offers Section -->
  <section id="offers" class="offers section"></section>
  <div class="col-md-4">
    <div class="card">
      <div class="card-header bg-danger text-white">
        Offers & Promotions
      </div>
      <div class="card-body">
        <a href="#" class="btn btn-danger btn-block">View Available Offers</a>
        <a href="#" class="btn btn-danger btn-block">Apply Promo Codes</a>
      </div>
    </div>
  </div>
  </section>

  <!-- Queries Section -->
  <section id="queries" class="queries section">
    <!-- Section Title -->
    <div class="container section-title" data-aos="fade-up">
      <h2>Queries</h2>
      <p>Send your Query</p>
    </div><!-- End Section Title -->
    <div class="container" data-aos="fade-up" data-aos-delay="100">
      <div class="row gy-4">
        <div class="col-lg-8">
          <form method="post" class="php-email-form" data-aos="fade-up" data-aos-delay="200">
            <div class="row gy-4">
              <div class="col-md-6">
                <input type="text" name="name" class="form-control" placeholder="Your Name" required="">
              </div>
              <div class="col-lg-4 col-md-6">
                <input type="date" name="date" class="form-control" required="">
              </div>
              <div class="col-md-12">
                <input type="text" class="form-control" name="subject" placeholder="Subject" required="">
              </div>
              <div class="col-md-12">
                <textarea class="form-control" name="message" rows="6" placeholder="Message" required=""></textarea>
              </div>
              <div class="col-md-12 text-center">
                <div class="loading">Loading</div>
                <div class="error-message"></div>
                <div class="sent-message">Your message has been sent. Thank you!</div>
                <button type="submit">Send Message</button>
              </div>
            </div>
          </form>
        </div><!-- End Queries Form -->
      </div>
    </div>
  </section><!-- /Queries Section -->
</main>

<footer id="footer" class="footer">

  <div class="container footer-top">
    <div class="row gy-4">
      <div class="col-lg-4 col-md-6 footer-about">
        <a href="index.html" class="logo d-flex align-items-center">
          <span class="sitename">ABC Restaurant</span>
        </a>
        <div class="footer-queries pt-3">
          <p>Colombo</p>
          <p>Kurunegala</p>
          <p>Kandy</p>
          <p>Galle</p>
          <p>Matara</p>
          <p class="mt-3"><strong>Phone:</strong> <span>+94 123 456 789</span></p>
          <p><strong>Email:</strong> <span>info@abcrestaurant.com</span></p>
        </div>
        <div class="social-links d-flex mt-4">
          <a href="https://www.facebook.com/login/"><i class="bi bi-facebook"></i></a>
          <a href="https://www.instagram.com/accounts/login/"><i class="bi bi-instagram"></i></a>
        </div>
      </div>

      <div class="col-lg-2 col-md-3 footer-links">
        <h4>Quick Links</h4>
        <ul>
          <li><a href="#hero" class="active">Home<br></a></li>
          <li><a href="#about">About</a></li>
          <li><a href="#gallery">Gallery</a></li>
          <li><a href="#services">Services</a></li>
          <li><a href="#queries">queries</a></li>
        </ul>
      </div>

    </div>
  </div>

  <div class="container copyright text-center mt-4">
    <p>&copy; 2024 ABC Restaurant. All rights reserved.</p>
  </div>

</footer>

<!-- Scroll Top -->
<a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<!-- Preloader -->
<div id="preloader"></div>

<!-- Vendor JS Files -->
<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="assets/vendor/php-email-form/validate.js"></script>
<script src="assets/vendor/aos/aos.js"></script>
<script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
<script src="assets/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>
<script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
<script src="assets/vendor/swiper/swiper-bundle.min.js"></script>

<!-- Main JS File -->
<script src="assets/js/main.js"></script>

</body>

</html>