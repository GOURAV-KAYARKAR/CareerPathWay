<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Event Registration</title>

    <!-- CSS FILES -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@100;200;400;700&display=swap" rel="stylesheet"/>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/bootstrap-icons.css" rel="stylesheet" />
    <link href="css/templatemo-festava-live.css" rel="stylesheet" />
  </head>
  <body>
    <main>
      <header class="site-header">
        <div class="container">
          <div class="row">
            <div class="col-lg-12 col-12 d-flex flex-wrap">
              <p class="d-flex me-4 mb-0">
                <i class="bi-person custom-icon me-2"></i>
                <strong class="text-dark"
                  >Welcome to Event Carnival Live
                </strong>
              </p>
            </div>
          </div>
        </div>
      </header>

      <nav class="navbar navbar-expand-lg">
        <div class="container">
          <a class="navbar-brand" href="index.jsp"> Event Carnival Live </a>

          <a href="ticket.jsp" class="btn custom-btn d-lg-none ms-auto me-4">Buy Ticket</a>
          <button class="navbar-toggler"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navbarNav"
            aria-controls="navbarNav"
            aria-expanded="false"
            aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav align-items-lg-center ms-auto me-lg-5">
              <li class="nav-item">
                <a class="nav-link click-scroll" href="index.jsp#section_1">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link click-scroll" href="index.jsp#section_2">About</a>
              </li>
              <li class="nav-item">
                <a class="nav-link click-scroll" href="index.jsp#section_3">Artists</a>
              </li>
              <li class="nav-item">
                <a class="nav-link click-scroll" href="index.jsp#section_4">Schedule</a>
              </li>
              <li class="nav-item">
                <a class="nav-link click-scroll" href="index.jsp#section_5">Pricing</a>
              </li>
              <li class="nav-item">
                <a class="nav-link click-scroll" href="index.jsp#section_6">Contact</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>

      <section class="ticket-section section-padding">
    <div class="section-overlay"></div>
    <div class="container">
        <div class="row justify-content-center">
            <form class="custom-form ticket-form mb-5 mb-lg-0" action="eventRegistration" method="post" role="form" enctype="multipart/form-data">
                <h2 class="text-center mb-4">Event Registration</h2>
                <div class="ticket-form-body">
                    <div class="row justify-content-center">
                        <div class="col-4 mb-3">
                            <input type="text" name="ticket-show-date" id="ticket-show-date" class="form-control" placeholder="Event Date (YYYY-MM-DD)" required>
                        </div>
                        <div class="col-4 mb-3">
                            <input type="text" name="ticket-show-name" id="ticket-show-name" class="form-control" placeholder="Event Name" required>
                        </div>
                        <div class="col-4 mb-3">
                            <input type="text" name="ticket-timing" id="ticket-timing" class="form-control" placeholder="Time Duration (xx:xx - x:xx AM/PM)" required>
                        </div>
                        <div class="col-4 mb-3">
                            <input type="text" name="ticket-author" id="ticket-author" class="form-control" placeholder="Host/ Organizers Name" required>
                        </div>
                        <div class="col-4 mb-3">
                            <input type="text" name="total-ticket" id="total-ticket" class="form-control" placeholder="Total Tickets" required>
                        </div>
                        <div class="col-4 mb-3">
                            <input type="text" name="ticket-price" id="ticket-price" class="form-control" placeholder="Ticket Price" required>
                        </div>
                        <div class="col-4 mb-3">
                            <input type="file" name="ticket-image" id="ticket-image" class="form-control" accept="image/*" required>
                        </div>
                    </div>
                    <div class="row justify-content-center">
                        <div class="col-lg-2 col-md-4 col-6">
                            <button id="redirectWEB" type="submit" class="btn btn-primary form-control">Register</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>

    </main>

    <footer class="site-footer">
      <div class="site-footer-top">
        <div class="container">
          <div class="row">
            <div class="col-lg-6 col-12">
              <h2 class="text-white mb-lg-0">Event Carnival Live</h2>
            </div>
            <div
              class="col-lg-6 col-12 d-flex justify-content-lg-end align-items-center">
              <ul class="social-icon d-flex justify-content-lg-end">
                <li class="social-icon-item">
                  <a href="https://twitter.com/?lang=en" class="social-icon-link">
                    <span class="bi-twitter"></span>
                  </a>
                </li>
                <li class="social-icon-item">
                  <a href="https://www.instagram.com/" class="social-icon-link">
                    <span class="bi-instagram"></span>
                  </a>
                </li>
                <li class="social-icon-item">
                  <a href="https://www.youtube.com/" class="social-icon-link">
                    <span class="bi-youtube"></span>
                  </a>
                </li>
                <li class="social-icon-item">
                  <a href="https://www.pinterest.com/" class="social-icon-link">
                    <span class="bi-pinterest"></span>
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="container">
        <div class="row">
          <div class="col-lg-6 col-12 mb-4 pb-2">
            <h5 class="site-footer-title mb-3">Links</h5>
            <ul class="site-footer-links">
              <li class="site-footer-link-item">
                <a href="index.jsp#section_1" class="site-footer-link">Home</a>
              </li>
              <li class="site-footer-link-item">
                <a href="index.jsp#section_2" class="site-footer-link">About</a>
              </li>
              <li class="site-footer-link-item">
                <a href="index.jsp#section_3" class="site-footer-link">Artists</a>
              </li>
              <li class="site-footer-link-item">
                <a href="index.jsp#section_4" class="site-footer-link">Schedule</a>
              </li>
              <li class="site-footer-link-item">
                <a href="index.jsp#section_5" class="site-footer-link">Sponsor's</a>
              </li>
              <li class="site-footer-link-item">
                <a href="index.jsp#section_6" class="site-footer-link">Contact</a>
              </li>
              
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0">
            <h5 class="site-footer-title mb-3">Have a question?</h5>
            <p class="text-white d-flex mb-1">
              <a href="tel: 7448255689" class="site-footer-link">
                +91 - 7448255689
              </a>
            </p>
            
              <p class="text-white d-flex mb-1">
              <a href="tel: 7387970984" class="site-footer-link">
                +91 - 7387970984
              </a>
            </p>
            
            <p class="text-white d-flex mb-1">
              <a href="tel: 9356560211" class="site-footer-link">
                +91 - 9356560211
              </a>
            </p>

            <p class="text-white d-flex">
              <a href="mailto:roshan.khandagale07@gmail.com" class="site-footer-link">
                roshan.khandagale07@gmail.com
              </a>
            </p>
            <p class="text-white d-flex">
              <a href="mailto:gdkayarkar2002@gmail.com" class="site-footer-link">
                gdkayarkar2002@gmail.com
              </a>
            </p>
            <p class="text-white d-flex">
              <a href="mailto:omkarapatankar807@gmail.com" class="site-footer-link">
                omkarapatankar807@gmail.com
              </a>
            </p>
          </div>

          <div class="col-lg-3 col-md-6 col-11 mb-4 mb-lg-0 mb-md-0">
            <h5 class="site-footer-title mb-3">Location</h5>
            <p class="text-white d-flex mt-3 mb-2">
              Near Nandanvan Road, Nagpur, 440024
            </p>
          </div>
        </div>
      </div>

      <div class="site-footer-bottom">
        <div class="container">
          <div class="row">
            <div class="col-lg-3 col-12 mt-5">
              <p class="copyright-text">Copyright © 2024 Event Carnival Live</p>
              <p class="copyright-text">
                Distributed by:
                <a href="https://www.linkedin.com/in/roshan-khandagale/">ROG PVT. LTD</a>
              </p>
            </div>

            <div class="col-lg-8 col-12 mt-lg-5">
              <ul class="site-footer-links">
                <li class="site-footer-link-item">
                  <a href="#" class="site-footer-link">Terms &amp; Conditions</a>
                </li>
                <li class="site-footer-link-item">
                  <a href="#" class="site-footer-link">Privacy Policy</a>
                </li>
                <li class="site-footer-link-item">
                  <a href="#" class="site-footer-link">Your Feedback</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </footer>

    <!-- JAVASCRIPT FILES -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.sticky.js"></script>
    <script src="js/custom.js"></script>

    <!-- MEET REDIRECT -->
    <script>
      // Add an event listener to the button
      document
        .getElementById("redirectWEB")
        .addEventListener("click", function () {
          window.location.href = "index.jsp#section_4";
        });
    </script>
  </body>
</html>
