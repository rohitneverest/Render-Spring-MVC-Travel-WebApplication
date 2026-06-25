<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tourism and Traveling Management</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">


    <link rel="stylesheet" href="/resources/css/navbar.css">
    <link rel="stylesheet" href="/resources/css/state.css">
    <link rel="stylesheet" href="/resources/css/footer.css">





</head>

<body>
<div class="boss">

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
            <input name="email" type="email" class="box" placeholder="Enter your email">
            <input name="password" type="password" class="box" placeholder="Enter your password ">
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
<!-- Main Content -->
<div class="content">
    <h1>Welcome to Sikkim</h1>
    <p>Sikkim, a breathtaking state in Northeast India, is known for its stunning Himalayan landscapes, Buddhist monasteries, and vibrant culture.</p>

    <h2>Less Explored Places in Sikkim</h2>
    <div class="places">
        <div class="place">
            <img src="https://media.istockphoto.com/id/508515429/photo/thangu-valley.jpg?s=612x612&w=0&k=20&c=w5Yt9Wvezb3_84V8kOXHCkNddKo98Y29LgwrdP4ewx4=" alt="Yumthang Valley">
            <h3>Yumthang Valley</h3>
            <p>Known as the "Valley of Flowers," it offers breathtaking views and colorful blooms.</p>
        </div>
        <div class="place">
            <img src="https://media.istockphoto.com/id/508546723/photo/tsomgo-lake.jpg?s=612x612&w=0&k=20&c=_FyIQE3KLopBsmJUscvdA0XsZXjJ2V_aBDRlKRMMgig=" alt="Tsomgo Lake">
            <h3>Tsomgo Lake</h3>
            <p>A high-altitude glacial lake, known for its changing colors with the seasons.</p>
        </div>
        <div class="place">
            <img src="https://media.istockphoto.com/id/1044788408/photo/gurudongmar-lake-highest-glacial-lake-of-india-in-sikkim.jpg?s=612x612&w=0&k=20&c=djh7XDJxq9o93focvM4iAuMpIbvEFgg_4iAFeVUeMc0=" alt="Gurudongmar Lake">
            <h3>Gurudongmar Lake</h3>
            <p>One of the highest lakes in the world, offering stunning views of the Himalayas.</p>
        </div>
        <div class="place">
            <img src="https://t3.ftcdn.net/jpg/03/89/21/92/360_F_389219282_VllcqD0G5H5HYa6raD9WMpUur0fyrPBD.jpg" alt="Ravangla">
            <h3>Ravangla</h3>
            <p>A peaceful town with stunning Buddha Park and panoramic mountain views.</p>
        </div>
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


</div>

    <script src="/resources/js/script.js"></script>
              </body>
              </html>
