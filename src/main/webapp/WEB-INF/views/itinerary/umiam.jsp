<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tourism and Traveling Management</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">


    <link rel="stylesheet" href="/resources/css/navbar.css">
    <link rel="stylesheet" href="/resources/css/itinerary.css">
    <link rel="stylesheet" href="/resources/css/footer.css">





</head>

<body>


<section class="navbar-section">
     <header>
            <div id="menu-bar" class="fas fa-bars"></div>
            <a href="/" class="logo"><span>T</span>ravel<span>E</span>ase</a>
            <nav class="navbar">
                <a href="/"><b>home</b></a>
                          <a href="/book"><b>book</b></a>
                          <a href="/packages"><b>packages</b></a>
                          <a href="/service"><b>service</b></a>
                          <a href="/gallery"><b>gallery</b></a>
                          <a href="/review"><b>review</b></a>
                          <a href="/contact"><b>contact</b></a>
            </nav>
            <div class="icons">
                <i class="fas fa-search" id="search-btn"></i>


                <c:choose>

              <c:when test="${sessionScope.loggedIn}">
                  <a href="/auth/profile" class="profile-avatar">
                      ${sessionScope.email.substring(0,1).toUpperCase()}
                  </a>
              </c:when>

               <c:otherwise>
                          <i class="fas fa-user" id="login-btn"></i>
                      </c:otherwise>

                </c:choose>
            </div>
           <form action="/search" class="search-bar-container">
               <input name="keyword" type="search" id="search-bar"
                      placeholder="Find tours by name, location, state, or trip duration (e.g., Kaziranga, 3 Days, Meghalaya)...">
               <button type="submit" class="fas fa-search"
                       ></button>
           </form>
     </header>

    <div class="login-form-container ${showLogin ? 'active' : ''}">
        <i class="fas fa-times" id="form-close"></i>
        <form action="/auth/signin" method="POST">
           <c:if test="${not empty loginError}">
            <p class="error">${loginError}</p>
           </c:if>
            <h3>login</h3>
            <input name="email" type="email" class="box" placeholder="enter your email">
            <input name="password" type="password" class="box" placeholder="enter your password ">
            <input type="submit" value="login now" class="btn" >
            <!-- <a href="/" class="btn">login now</a> -->
            <div class="check">
            <input type="checkbox" id="remember">
            <label for="remember">Remember me!</label></div>
            <p>forgot password? <a href="/auth/forgot-password">click here</a></p>
            <p>don't have an account? <a href="/auth/registration">register now</a></p>
        </form>
    </div>

</section>




    <div class="container">
        <h1>Umiam Lake Retreat - 2 Days</h1>
        <p>Escape to the serene Umiam Lake, a beautiful reservoir near Shillong, offering breathtaking views, water activities, and a peaceful retreat.</p>

        <div class="day">
            <h3>Day 1: Arrival & Lake Activities</h3>
            <p>Arrive at Umiam Lake and check into a scenic lakeside resort. Enjoy kayaking, boating, and jet skiing in the crystal-clear waters. In the evening, relax with a sunset view by the lake.</p>
        </div>

        <div class="day">
            <h3>Day 2: Nature Walk & Departure</h3>
            <p>Take an early morning nature walk along the lush green surroundings of Umiam Lake. Visit a nearby viewpoint for a panoramic view before departing with cherished memories.</p>
        </div>
    </div>




    <!-- Footer -->
<footer class="site-footer">

    <div class="footer-container">

        <div class="footer-column">
            <h3>TravelEase</h3>
            <p>
                Your trusted travel companion for discovering destinations,
                planning trips and creating unforgettable memories.
            </p>
        </div>

        <div class="footer-column" id="quicklinks">
            <h3 >Quick Links</h3>

            <a href="/">Home</a>
            <a href="/packages">Packages</a>
            <a href="/gallery">Gallery</a>
            <a href="/contact">Contact</a>
        </div>

        <div class="footer-column">
            <h3>Contact</h3>

            <p><i class="fas fa-envelope"></i> travelease353@gmail.com</p>
            <p><i class="fas fa-map-marker-alt"></i> Shillong, Meghalaya</p>
        </div>

    </div>

    <div class="social-icons">

        <a href="https://www.linkedin.com/in/rohit200byte/" target="_blank">
            <i class="fab fa-linkedin-in"></i>
        </a>

        <a href="/" target="_blank">
            <i class="fab fa-instagram"></i>
        </a>

        <a href="/" target="_blank">
            <i class="fab fa-youtube"></i>
        </a>

    </div>

    <div class="footer-bottom">

        <p>
            © 2024 TravelEase. All Rights Reserved.
        </p>

        <p>
            <a href="/">Privacy Policy</a> |
            <a href="/">Terms & Conditions</a>
        </p>


    </div>

</footer>

<button id="backToTopBtn" title="Back To Top" >
    <i class="fas fa-arrow-up"></i>
</button>




<script src="/resources/js/script.js"></script>

</body>
</html>
