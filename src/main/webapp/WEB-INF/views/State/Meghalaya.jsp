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
            <a href="/" class="logo"><span>T</span>ravel<span>E</span>ast</a>
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
     <c:if test="${not empty sessionScope.successfullyLoggedInMsg}">
         <div class="success-toast">
             ${sessionScope.successfullyLoggedInMsg}
         </div>

         <%
             session.removeAttribute("successfullyLoggedInMsg");
         %>
     </c:if>
     <c:if test="${not empty loggedOutMsg}">
         <div class="logout-toast">
             ${loggedOutMsg}
         </div>
     </c:if>

     <script>
         setTimeout(() => {
             const toast = document.querySelector(".success-toast");
             if (toast) {
                 toast.style.display = "none";
             }
         }, 2000);
     </script>
     <script>
         setTimeout(() => {
             const toast = document.querySelector(".logout-toast");
             if (toast) {
                 toast.style.display = "none";
             }
         }, 2000);
     </script>

    <div class="login-form-container ${showLogin ? 'active' : ''}">
        <i class="fas fa-times" id="form-close"></i>
        <form action="/auth/signin" method="POST">
           <c:if test="${not empty loginError}">
            <p class="error">${loginError}</p>
            </c:if>
            <h3>login</h3>
            <input name="email" type="email" class="box" placeholder="Enter your email" value="${not empty param.email ? param.email : rememberedEmail}">
            <input name="password" type="password" class="box" placeholder="Enter your password">
            <input type="submit" value="login now" class="btn" >
            <div class="check">
              <input type="checkbox" id="remember"  name="remember" ${not empty rememberedEmail ? 'checked' : ''}>
              <label for="remember">Remember my email!</label>
            </div>
            <p>forget password? <a href="/auth/forgot-password">click here</a></p>
            <p>don't have an account? <a href="/auth/registration">register now</a></p>
        </form>
    </div>

</section>
<!-- Main Content -->
<div class="content">
    <h1>Welcome to Meghalaya</h1>
    <p>Meghalaya, known as the "Abode of Clouds," is a stunning state in Northeast India, famous for its lush green landscapes, heavy rainfall, and rich tribal culture.</p>

    <h2>Less Explored Places in Meghalaya</h2>
    <div class="places">
        <div class="place">
            <img src="https://nomadsaikat.com/wp-content/uploads/2023/10/dawki-river.webp" alt="Dawki River">
            <h3>Dawki River</h3>
            <p>Crystal-clear river near the Bangladesh border, ideal for boating.</p>
        </div>
        <div class="place">
            <img src="https://static2.tripoto.com/media/transfer/img/OgData/1451225532_a_living_root_bridge_mawlynnong.jpg" alt="Mawlynnong">
            <h3>Mawlynnong</h3>
            <p>Asia's cleanest village, surrounded by lush greenery and waterfalls.</p>
        </div>
        <div class="place">
            <img src="https://travelmelodies.com/wp-content/uploads/2020/06/travel-melodies-nohkalikai-falls-meghalaya-india-asia.jpg" alt="Nohkalikai Falls">
            <h3>Nohkalikai Falls</h3>
            <p>One of India's tallest waterfalls, offering breathtaking views.</p>
        </div>
        <div class="place">
            <img src="https://hblimg.mmtcdn.com/content/hubble/img/shillong/mmt/activities/m_activities_Shillong_Laitlum%20Canyons_l_400_640.jpg" alt="Laitlum Canyons">
            <h3>Laitlum Canyons</h3>
            <p>A hidden paradise with panoramic valley views and fresh air.</p>
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