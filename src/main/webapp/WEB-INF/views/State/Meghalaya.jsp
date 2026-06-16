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
            <p>forget password? <a href="/">click here</a></p>
            <p>don't have an account? <a href="/registration">register now</a></p>
        </form>
    </div>
     <script src="/resources/js/script.js"></script>
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
                <div class="container-footer">
                    <div class="row">
                        <div class="col-lg-12 text-center">
                            <p>Copyright © 2024 <a href="#">TravelEase</a> Company. All rights reserved.
                                <br>Design: <a href="#for later use" target="_blank" title="free CSS templates">Eleugwangbe Kenrang</a>
                                <br>Re-Designed and Optimized: <a href="#for later use" target="_blank" title="free CSS templates">Rohit Sharma</a>
                            </p>
                        </div>
                    </div>
                </div>
            </footer>
            </body>
            </html>