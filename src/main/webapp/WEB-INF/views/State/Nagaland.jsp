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

    <div class="content">
        <h1>Welcome to Nagaland</h1>
        <p>Nagaland, the land of vibrant festivals and rich tribal heritage, is one of the most picturesque states in Northeast India. Known for its scenic beauty, rich culture, and warm hospitality, it remains a paradise for travelers looking to explore untouched beauty.</p>

        <h2>Less-Visited Hidden Gems</h2>
        <div class="places">
            <div class="place">
                <img src="https://images.unsplash.com/photo-1692652567309-5ac9ae7fe6f7?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Dzukou Valley">
                <h3>Dzukou Valley</h3>
                <p>One of the most scenic trekking destinations in Nagaland, known for its rolling hills and vibrant seasonal flowers.</p>
            </div>
            <div class="place">
                <img src="https://footloosedev.com/wp-content/uploads/2017/12/khonoma-kohima.jpg" alt="Khonoma Green Village">
                <h3>Khonoma Green Village</h3>
                <p>India’s first green village, offering breathtaking views and an opportunity to learn about sustainable Naga lifestyles.</p>
            </div>
            <div class="place">
                <img src="https://thegypsychiring.com/wp-content/uploads/2023/03/Pungro-town-in-Kiphire-District-of-Nagaland-during-Mt-Saramati-Trek-The-Gypsy-Chiring.webp" alt="Mount Saramati">
                <h3>Mount Saramati</h3>
                <p>The highest peak in Nagaland, offering stunning panoramic views of both India and Myanmar.</p>
            </div>
            <div class="place">
                <img src="https://rootsandleisure.com/wp-content/uploads/2017/10/LD4A2741-e1507524593974-1024x667.jpg" alt="Langka Village">
                <h3>Longsa Village</h3>
                <p>A hidden gem with unspoiled nature and rich traditions of the Yimchunger tribe.</p>
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



