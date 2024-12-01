<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.Base64"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

	<meta charset="ISO-8859-1">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Event Carnival - LIVE</title>
    
    <!-- CSS FILES -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">    
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@100;200;400;700&display=swap" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-icons.css" rel="stylesheet">
    <link href="css/templatemo-festava-live.css" rel="stylesheet">
    
    <!-- CSS Styling -->
    <style type="text/css">
		.sponsor-card {
		    transition: transform 0.3s ease;
		}
		
		.sponsor-card:hover {
		    transform: translateY(-5px);
		}
		
		@keyframes glow {
	        0% { box-shadow: 0 0 5px #fff; }
	        50% { box-shadow: 0 0 20px #ffcc00; }
	        100% { box-shadow: 0 0 5px #fff; }
	    }
    
	    .btn.custom-btn:hover {
	        transform: scale(1.1);
	    }
	
	    .btn.custom-btn span {
	        position: relative;
	        z-index: 1;
	    }
			
			.glow-animation {
	        animation: glow 2s infinite alternate;
	    }
		
    </style>
    
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
                <a class="navbar-brand" href="index.jsp">
                    Event Carnival
                </a>

                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav align-items-lg-center ms-auto me-lg-5">
                        <li class="nav-item">
                            <a class="nav-link click-scroll" href="#section_1">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link click-scroll" href="#section_2">About</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link click-scroll" href="#section_3">Artists</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link click-scroll" href="#section_4">Schedule</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link click-scroll" href="#section_5">Sponsor's</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link click-scroll" href="#section_6">Contact</a>
                        </li>
                    </ul>
                    
                </div>
            </div>
        </nav>

        <section class="hero-section" id="section_1">
            <div class="section-overlay"></div>
            <div class="container d-flex justify-content-center align-items-center">
                <div class="row">
                    <div class="col-12 mt-auto mb-4 text-center">
		                <small>Event Carnival Live Presents</small>
		                <h1 class="text-white mb-5">"Bringing the World Together!!"</h1>
		                <a class="btn custom-btn smoothscroll" href="ticket.jsp">Let's begin</a>
		            </div>
		            <div class="col-12 text-center">
		                <a class="btn custom-btn smoothscroll glow-animation" href="event.jsp"><span>Event Booking</span></a>
		            </div>

                    <div class="col-lg-12 col-12 mt-auto d-flex flex-column flex-lg-row text-center">
                        <div class="date-wrap">
                            <h5 class="text-white">
                                <i class="custom-icon bi-geo-alt me-2"></i>
                                Nandanvan, Nagpur, 440024
                            </h5>
                        </div>

                        <div class="location-wrap mx-auto py-3 py-lg-0">
                            <h5 class="text-white">
                                <i class=""></i>
                            </h5>
                        </div>

                        <div class="social-share">
                            <ul class="social-icon d-flex align-items-center justify-content-center">
                                <span class="text-white me-3">Share:</span>
                                <li class="social-icon-item">
                                    <a href="https://www.facebook.com/" class="social-icon-link">
                                        <span class="bi-facebook"></span>
                                    </a>
                                </li>
                                <li class="social-icon-item">
                                    <a href="https://www.instagram.com/" class="social-icon-link">
                                        <span class="bi-instagram"></span>
                                    </a>
                                </li>
                                <li class="social-icon-item">
                                    <a href="https://www.whatsapp.com/" class="social-icon-link">
                                        <span class="bi-whatsapp"></span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <div class="video-wrap">
                <video autoplay="" loop="" muted="" class="custom-video" poster="">
                    <source src="video/pexels-2022395.mp4" type="video/mp4">
                        Your browser does not support the video tag.
                </video>
            </div>
        </section>

<!-- ABOUT SECTION -->
        <section class="about-section section-padding" id="section_2">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-12 mb-4 mb-lg-0 d-flex align-items-center">
                        <div class="services-info">
                            <h2 class="text-white mb-4">About Event Carnival</h2>
                            <p class="text-white">Welcome to Event Carnival, where innovation meets connectivity. We specialize in hosting virtual events of all your Needs and types. Our platform seamlessly bridges distances, connecting people from around the globe in immersive and interactive virtual environments. Whether you're organizing a conference, trade show, webinar, or virtual meetup, we're here to empower you with the tools and technology to create memorable and impactful experiences. Join us as we redefine the future of events, one virtual gathering at a time.</p>
                            
                            <h6 class="text-white mt-4">Once in Lifetime Experience</h6>
                            <p class="text-white">"Embark on a once-in-a-lifetime journey with our virtual event platform, where every moment is crafted to create unforgettable experiences. From immersive interactions to groundbreaking presentations, elevate your events to extraordinary heights with us."</p>   
                        </div>
                    </div>

                    <div class="col-lg-6 col-12">
                        <div class="about-text-wrap">
                            <img src="images/About-Image.jpg" class="about-image img-fluid">
                            <div class="about-text-info d-flex">
                                <div class="d-flex">
                                    <i class="about-text-icon bi-person"></i>
                                </div>

                                <div class="ms-4">
                                    <h5>A Virtual Moment</h5>
                                    <p class="mb-0">Showcase your Event</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

<!-- ARTIST SECTION -->
        <section class="artists-section section-padding" id="section_3">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 text-center">
                        <h2 class="mb-4">Artists</h1>
                    </div>
                    <div class="col-lg-5 col-12">
                        <div class="artists-thumb">
                            <div class="artists-image-wrap">
                                <img src="images/artists/goku.png"
                                    class="artists-image img-fluid">
                            </div>
                            <div class="artists-hover">
                                <p>
                                    <strong>Name:</strong>
                                    SON-GOKU
                                </p>
                                <p>
                                    <strong>Hosting Date:</strong>
                                    March 05, 2024
                                </p>
                                <p>
                                    <strong>Category:</strong>
                                    Live Broadcast
                                </p>
                                    <hr>
                                <p class="mb-0">
                                    <strong>Youtube Channel:</strong>
                                    <a href="https://youtu.be/9VUN8zYVcdE?feature=shared" target="_blank">Dragon Ball Z - Tournament of Power</a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-5 col-12">
                        <div class="artists-thumb">
                            <div class="artists-image-wrap">
                                <img src="images/artists/martin-garrix.jpg"
                                    class="artists-image img-fluid">
                            </div>
                            <div class="artists-hover">
                                <p>
                                    <strong>Name:</strong>
                                    MARTIN GARRIX
                                </p>
                                <p>
                                    <strong>Hosting Date:</strong>
                                    March 10, 2024
                                </p>
                                <p>
                                    <strong>Category:</strong>
                                    Live Concert
                                </p>
                                <hr>
                                <p class="mb-0">
                                    <strong>Youtube Channel:</strong>
                                    <a href="https://youtu.be/cWJV0DgMqEA?feature=shared" target="_blank">MARTIN GARRIX LIVE @ IDEM (Amsterdam RAI 2023)</a>
                                </p>
                            </div>
                        </div>

                        <div class="artists-thumb">
                            <img src="images/artists/edX.png"
                                class="artists-image img-fluid">
                            <div class="artists-hover">
                                <p>
                                    <strong>Name:</strong>
                                    edX Professional Certificate Programs
                                </p>
                                <p>
                                    <strong>Hosting Date:</strong>
                                    April 8, 2024
                                </p>
                                <p>
                                    <strong>Category:</strong>
                                    Educational 
                                </p>
                                <hr>
                                <p class="mb-0">
                                    <strong>Youtube Channel:</strong>
                                    <a href="https://youtube.com/playlist?list=PL2fCZiDqOYYWlfoGYT-gc62Ud-RqWlx1w&feature=shared" target="_blank">Stand Out In Your Field</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

<!-- SCHEDULE SECTION -->
<section class="schedule-section section-padding" id="section_4">
    <div class="container">
        <div class="row">
            <div class="col-12 text-center">
                <h2 class="text-white mb-4">Event Schedule</h2>
                <!-- Nav tabs -->
                <nav class="d-flex justify-content-center">
                    <div class="nav nav-tabs justify-content-center" id="eventTabs" role="tablist" style="background-color: rgba(45, 45, 45, 0.9);">
                        <button class="nav-link" id="previous-tab" data-bs-toggle="tab" data-bs-target="#previous" type="button" role="tab" aria-controls="previous" aria-selected="false">
                            <h5>Previous</h5>
                        </button>
                        <button class="nav-link active" id="latest-tab" data-bs-toggle="tab" data-bs-target="#latest" type="button" role="tab" aria-controls="latest" aria-selected="true">
                            <h5>Latest Event</h5>
                        </button>
                        <button class="nav-link" id="upcoming-tab" data-bs-toggle="tab" data-bs-target="#upcoming" type="button" role="tab" aria-controls="upcoming" aria-selected="false">
                            <h5>Upcoming</h5>
                        </button>
                    </div>
                </nav>

                <!-- Tab panes -->
                <div class="tab-content" id="eventTabsContent" style="background-color: rgba(39, 39, 39, 0.1);">
                    <!-- Latest Event Tab -->
                    <div class="tab-pane fade show active" id="latest" role="tabpanel" aria-labelledby="latest-tab">
                        <div class="table-responsive">
                            <%
                                Connection con = null;
                                PreparedStatement statement = null;
                                ResultSet resultSet = null;

                                try {
                                    // Database connection
                                    Class.forName("com.mysql.cj.jdbc.Driver");
                                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/event", "root", "@root1234");

                                    // Query for the latest event
                                    String query = "SELECT * FROM EventRegistration WHERE Event_Date = ?";
                                    statement = con.prepareStatement(query);
                                    statement.setString(1, LocalDate.now().toString());

                                    resultSet = statement.executeQuery();
                            %>
                            <table id="schedule-table" class="schedule-table table table-dark">
                                <thead>
                                    <tr>
                                        <th scope="col">Date</th>
                                        <th scope="col">Event</th>
                                        <th scope="col">Time</th>
                                        <th scope="col">Host / Organizer</th>
                                        <th scope="col">JOIN</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <% while (resultSet.next()) { %>
                                    <tr>
                                        <td style="color: green; font-weight: bold;"><%= resultSet.getString("Event_Date") %></td>
                                        <td style="background-image: url('data:image/jpeg;base64,<%= Base64.getEncoder().encodeToString(resultSet.getBytes("Event_Image")) %>'); background-size: cover;"></td>
                                        <td style="color: red; font-weight: bold;"><%= resultSet.getString("Event_Timing") %></td>
                                        <td style="color: black; font-weight: bold;"><%= resultSet.getString("Event_Host") %></td>
                                        <td><a href="ticket.jsp?Event_Name=<%= resultSet.getString("Event_Name") %>" class="btn btn-primary">Join Event</a></td>
                                    </tr>
                                    <% } %>
                                </tbody>
                            </table>
                            <%
                                } catch (SQLException e) {
                                    out.println("<h2>Error fetching events: " + e.getMessage() + "</h2>");
                                    e.printStackTrace();
                                } catch (ClassNotFoundException e) {
                                    out.println("<h2>Error: MySQL Driver not found. " + e.getMessage() + "</h2>");
                                    e.printStackTrace();
                                } finally {
                                    // Close resources
                                    try {
                                        if (resultSet != null) resultSet.close();
                                        if (statement != null) statement.close();
                                        if (con != null) con.close();
                                    } catch (SQLException e) {
                                        e.printStackTrace();
                                    }
                                }
                            %>
                        </div>
                    </div>

                    <!-- Upcoming Event Tab -->
                    <div class="tab-pane fade" id="upcoming" role="tabpanel" aria-labelledby="upcoming-tab">
                        <div class="table-responsive">
                            <%
                                con = null;
                                statement = null;
                                resultSet = null;

                                try {
                                    // Upcoming event query
                                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/event", "root", "@root1234");
                                    String query = "SELECT * FROM EventRegistration WHERE Event_Date > ?";
                                    statement = con.prepareStatement(query);
                                    statement.setString(1, LocalDate.now().toString());
                                    resultSet = statement.executeQuery();
                            %>
                            <table class="table table-dark">
                                <thead>
                                    <tr>
                                        <th>Date</th>
                                        <th>Event</th>
                                        <th>Time</th>
                                        <th>Host</th>
                                        <th>JOIN</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <% while (resultSet.next()) { %>
                                    <tr>
                                        <td><%= resultSet.getString("Event_Date") %></td>
                                        <td><%= resultSet.getString("Event_Name") %></td>
                                        <td><%= resultSet.getString("Event_Timing") %></td>
                                        <td><%= resultSet.getString("Event_Host") %></td>
                                        <td><a href="ticket.jsp?Event_Name=<%= resultSet.getString("Event_Name") %>" class="btn btn-primary">Join Event</a></td>
                                    </tr>
                                    <% } %>
                                </tbody>
                            </table>
                            <%
                                } catch (SQLException e) {
                                    out.println("<h2>Error fetching upcoming events: " + e.getMessage() + "</h2>");
                                    e.printStackTrace();
                                } finally {
                                    // Close resources
                                    try {
                                        if (resultSet != null) resultSet.close();
                                        if (statement != null) statement.close();
                                        if (con != null) con.close();
                                    } catch (SQLException e) {
                                        e.printStackTrace();
                                    }
                                }
                            %>
                        </div>
                    </div>

                    <!-- Previous Event Tab -->
                    <div class="tab-pane fade" id="previous" role="tabpanel" aria-labelledby="previous-tab">
                        <div class="table-responsive">
                            <%
                                con = null;
                                statement = null;
                                resultSet = null;

                                try {
                                    // Previous event query
                                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/event", "root", "@root1234");
                                    String query = "SELECT * FROM EventRegistration WHERE Event_Date < ?";
                                    statement = con.prepareStatement(query);
                                    statement.setString(1, LocalDate.now().toString());
                                    resultSet = statement.executeQuery();
                            %>
                            <table class="table table-dark">
                                <thead>
                                    <tr>
                                        <th>Date</th>
                                        <th>Event</th>
                                        <th>Time</th>
                                        <th>Host</th>
                                        <th>JOIN</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <% while (resultSet.next()) { %>
                                    <tr>
                                        <td><%= resultSet.getString("Event_Date") %></td>
                                        <td><%= resultSet.getString("Event_Name") %></td>
                                        <td><%= resultSet.getString("Event_Timing") %></td>
                                        <td><%= resultSet.getString("Event_Host") %></td>
                                        <td><button class="btn btn-primary" disabled>Event Ended</button></td>
                                    </tr>
                                    <% } %>
                                </tbody>
                            </table>
                            <%
                                } catch (SQLException e) {
                                    out.println("<h2>Error fetching previous events: " + e.getMessage() + "</h2>");
                                    e.printStackTrace();
                                } finally {
                                    // Close resources
                                    try {
                                        if (resultSet != null) resultSet.close();
                                        if (statement != null) statement.close();
                                        if (con != null) con.close();
                                    } catch (SQLException e) {
                                        e.printStackTrace();
                                    }
                                }
                            %>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- PLANS SECTION -->
        <section class="sponsors-partners-section section-padding section-bg" id="section_5">
			    <div class="container">
			        <div class="row">
			        <h2 class="text-center mb-5" style="color: ;">Our Sponsors and Partners</h2>
			
			    <div class="col-lg-4 col-md-6 col-12">
				    <div class="text-center sponsor-card card" style="border-radius: 15px;">
			            <div class="card-body" style = "background-color: #C34A36; border-radius: 15px;">
				            <h5 class="card-title mb-3" style="color: white;">Gourav Kayarkar</h5>
				            <p class="card-text" style="color: yellow;">The Founder of Kayarkar Corporation is a leading global technology company specializing in event management solutions. With innovative software tools and expert services, they help event organizers streamline operations and deliver exceptional attendee experiences.</p>
				            <ul class="list-group list-group-flush">
				                <li class="list-group-item" style = "background-color: #C34A36; font-weight: bold; color: #94bbe9;">Brand Exposure</li>
				                <li class="list-group-item" style = "background-color: #C34A36; font-weight: bold; color: #94bbe9;">Personalized Support</li>
				                <li class="list-group-item" style = "background-color: #C34A36; font-weight: bold; color: #94bbe9;">Proven Track Record</li>
				            </ul>
				            <a class="link-fx-1 color-contrast-higher mt-4" href="index.jsp?#section_5">
					            <span style="color: white; font-weight: bold; font-weight: bold;">Learn More</span>
					            <svg class="icon" viewBox="0 0 32 32" aria-hidden="true">
					                <g fill="none" stroke="white" stroke-linecap="round" stroke-linejoin="round">
					                    <circle cx="16" cy="16" r="15.5"></circle>
					                    <line x1="10" y1="18" x2="16" y2="12"></line>
					                    <line x1="16" y1="12" x2="22" y2="18"></line>
					                </g>
					            </svg>
				        	</a>
				        </div>
				    </div>
			    </div>
			    
			  <div class="col-lg-4 col-md-6 col-12">
			    <div class="text-center sponsor-card card" style="border-radius: 15px;">
		            <div class="card-body" style = "background-color: #0B0051; border-radius: 15px;">
				            <h5 class="card-title mb-3" style = "color: red; font-weight: bold;">Roshan Khandagale</h5>
				            <p class="card-text" style="color: #fcb045;">The CEO & Founder of Khandagale Marketing Solutions is a full-service marketing agency specializing in event sponsorship and partnership management. They work closely with event organizers and brands to create mutually beneficial partnerships that drive engagement and achieve strategic objectives.</p>
				            <ul class="list-group list-group-flush">
				                <li class="list-group-item" style = "background-color: #0B0051; color: white; font-weight: bold;">Strategic Development</li>
				                <li class="list-group-item" style = "background-color: #0B0051; color: white; font-weight: bold;">Promotion & Brand Activation</li>
				                <li class="list-group-item" style = "background-color: #0B0051; color: white; font-weight: bold;">ROI Measurement and Analysis</li>
				            </ul>
				            <a class="link-fx-1 color-contrast-higher mt-4" href="index.jsp?#section_5">
					            <span style="color: red; font-weight: bold; font-weight: bold;">Learn More</span>
					            <svg class="icon" viewBox="0 0 32 32" aria-hidden="true">
					                <g fill="none" stroke="red" stroke-linecap="round" stroke-linejoin="round">
					                    <circle cx="16" cy="16" r="15.5"></circle>
					                    <line x1="10" y1="18" x2="16" y2="12"></line>
					                    <line x1="16" y1="12" x2="22" y2="18"></line>
					                </g>
					            </svg>
				       		</a>
			        </div>
			    </div>
			  </div>
			    
			    <div class="col-lg-4 col-md-6 col-12">
			    <div class="text-center sponsor-card card" style="border-radius: 15px;">
		            <div class="card-body" style = "background-color: #005B44; border-radius: 15px;">
			            <h5 class="card-title mb-3" style="color: yellow;">Omkar Patankar</h5>
			            <p class="card-text" style="color: white;">The Founder of Patankar EventPros Logistics is a premier logistics and production company specializing in event planning, management, and execution. From venue selection and setup to transportation and on-site coordination, they handle every aspect of event logistics with precision and expertise.</p>
			            <ul class="list-group list-group-flush">
			                <li class="list-group-item" style = "background-color: #005B44; color: #00d4ff; font-weight: bold;">Seamless Event Execution</li>
			                <li class="list-group-item" style = "background-color: #005B44; color: #00d4ff; font-weight: bold;">Customized Solutions</li>
			                <li class="list-group-item" style = "background-color: #005B44; color: #00d4ff; font-weight: bold;">Experienced Team Support</li>
			            </ul>
			            <a class="link-fx-1 color-contrast-higher mt-4" href="index.jsp?#section_5">
			            <span style="color: yellow; font-weight: bold; font-weight: bold;">Learn More</span>
			            <svg class="icon" viewBox="0 0 32 32" aria-hidden="true">
			                <g fill="none" stroke="yellow" stroke-linecap="round" stroke-linejoin="round">
			                    <circle cx="16" cy="16" r="15.5"></circle>
			                    <line x1="10" y1="18" x2="16" y2="12"></line>
			                    <line x1="16" y1="12" x2="22" y2="18"></line>
			                </g>
			            </svg>
			        </a>
			        </div>
			        </div>
			    </div>
			    
			</div>
        </div>
</section>


<!-- CONTACT FORM -->
        <section class="contact-section section-padding" id="section_6">
            <div class="container">
                <div class="row">            
                    <div class="col-lg-8 col-12 mx-auto">
                        <h2 class="text-center mb-4">Interested? Let's talk</h2>
                        <nav class="d-flex justify-content-center">
                            <div class="nav nav-tabs align-items-baseline justify-content-center" id="nav-tab"
                                role="tablist">
                                <button class="nav-link active" id="nav-ContactForm-tab" data-bs-toggle="tab"
                                    data-bs-target="#nav-ContactForm" type="button" role="tab"
                                    aria-controls="nav-ContactForm" aria-selected="false">
                                    <h5>Contact Form</h5>
                                </button>
    
                                <button class="nav-link" id="nav-ContactMap-tab" data-bs-toggle="tab"
                                    data-bs-target="#nav-ContactMap" type="button" role="tab"
                                    aria-controls="nav-ContactMap" aria-selected="false">
                                    <h5>Google Maps</h5>
                                </button>
                            </div>
                        </nav>
                    <div class="tab-content shadow-lg mt-5" id="nav-tabContent">
                        <div class="tab-pane fade show active" id="nav-ContactForm" role="tabpanel" aria-labelledby="nav-ContactForm-tab">
                            <form class="custom-form contact-form mb-5 mb-lg-0" id="contact-form" action="#" method="post" role="form">
                                <div class="contact-form-body">
                                    <div class="row">
                                        <div class="col-lg-6 col-md-6 col-12">
                                            <input type="text" name="contact-name" id="contact-name" class="form-control" placeholder="Full name" required>
                                        </div>
                                        <div class="col-lg-6 col-md-6 col-12">
                                            <input type="email" name="contact-email" id="contact-email" pattern="[^ @]*@[^ @]*" class="form-control" placeholder="Email address" required>
                                        </div>
                                    </div>
                                    <input type="text" name="contact-company" id="contact-company" class="form-control" placeholder="Company" required>
                                    <textarea name="contact-message" rows="3" class="form-control" id="contact-message" placeholder="Message"></textarea>
                                    <div class="col-lg-4 col-md-10 col-8 mx-auto">
                                        <button type="submit" class="form-control">Send message</button>
                                    </div>
                                    </div>
                                </form>
                            </div>

                            <div class="tab-pane fade" id="nav-ContactMap" role="tabpanel"
                                aria-labelledby="nav-ContactMap-tab">
                                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3721.385182511548!2d79.12475519173981!3d21.137064136433292!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bd4c74f79e9a7a7%3A0xdbf756474aa8ed98!2sKdk%20College%20Of%20Engineering!5e0!3m2!1sen!2sin!4v1709279554768!5m2!1sen!2sin" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                            </div>
                        </div>
                        <div id="success-toast" class="toast"></div>
                        <div id="error-toast" class="toast"></div>

                    </div>
                </div>
            </div>
        </section>
    </main>

    <footer class="site-footer">
        <div class="site-footer-top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-10">
                        <h2 class="text-white mb-lg-0">Event Carnival Live</h2>
                    </div>
                    <div class="col-lg-6 col-12 d-flex justify-content-lg-end align-items-center">
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
                                <a href="https://www.pinterest.com/ideas/" class="social-icon-link">
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
                            <a href="#section_1" class="site-footer-link">Home</a>
                        </li>
                        <li class="site-footer-link-item">
                            <a href="#section_2" class="site-footer-link">About</a>
                        </li>
                        <li class="site-footer-link-item">
                            <a href="#section_3" class="site-footer-link">Artists</a>
                        </li>
                        <li class="site-footer-link-item">
                            <a href="#section_4" class="site-footer-link">Schedule</a>
                        </li>
                        <li class="site-footer-link-item">
                            <a href="#section_5" class="site-footer-link">Sponsor's</a>
                        </li>
                        <li class="site-footer-link-item">
                            <a href="#section_6" class="site-footer-link">Contact</a>
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
                        <a href="tel: 9356560211" class="site-footer-link">
                            +91 - 9356560211
                        </a>
                    </p>
                    <p class="text-white d-flex mb-1">
                        <a href="tel: 7387970984" class="site-footer-link">
                            +91 - 7387970984
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
                    </p><p class="text-white d-flex">
                        <a href="mailto:omkarapatankar807@gmail.com" class="site-footer-link">
                            omkarapatankar807@gmail.com
                        </a>
                    </p>
                </div>

                <div class="col-lg-3 col-md-6 col-11 mb-4 mb-lg-0 mb-md-0">
                    <h5 class="site-footer-title mb-3">Location</h5>
                    <p class="text-white d-flex mt-3 mb-2">
                        Near Nandanvan Road, Nagpur, 440024</p>
                    <a class="link-fx-1 color-contrast-higher mt-3" href="#nav-ContactMap-tab">
                        <span>Our Maps</span>
                        <svg class="icon" viewBox="0 0 32 32" aria-hidden="true">
                            <g fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round">
                                <circle cx="16" cy="16" r="15.5"></circle>
                                <line x1="10" y1="18" x2="16" y2="12"></line>
                                <line x1="16" y1="12" x2="22" y2="18"></line>
                            </g>
                        </svg>
                    </a>
                </div>
            </div>
        </div>

        <div class="site-footer-bottom">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-12 mt-5">
                        <p class="copyright-text">Copyright © 2024 Event Carnival Live</p>
                        <p class="copyright-text">Distributed by: 
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
    <script src="js/click-scroll.js"></script>
    <script src="js/custom.js"></script>

    <!-- CONTACT FORM ATTACHMENT-->
    <script src="https://cdn.emailjs.com/dist/email.min.js"></script>
    <script src="js/sendmail.js"></script>

    <!-- FETCH DATA -->
    <script src="js/server.js"></script>
    <script src="js/fetchTable.js"></script>
    
</body>
</html>
