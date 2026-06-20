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
    <h1>Welcome to Assam</h1>
    <p>Assam, the land of tea gardens and the mighty Brahmaputra, is known for its natural beauty and rich cultural heritage.</p>

    <h2>Less Explored Places in Assam</h2>
    <div class="places">
        <div class="place">
            <img src="https://media.istockphoto.com/id/538374335/photo/one-horned-rhinoceros.jpg?s=612x612&w=0&k=20&c=ze4cJvIp31KWS78Wo32040hwTEADwqvs9WxGG2-jaAc=" alt="Kaziranga National Park">
            <h3>Kaziranga National Park</h3>
            <p>Home to the one-horned rhinoceros and a UNESCO World Heritage Site.</p>
        </div>
        <div class="place">
            <img src="https://t3.ftcdn.net/jpg/03/37/69/16/360_F_337691600_zcNh8S36rIv9c81w04i4pfCXdkgfoPze.jpg" alt="Majuli Island">
            <h3>Majuli Island</h3>
            <p>The world's largest river island, known for its monasteries and scenic beauty.</p>
        </div>
        <div class="place">
            <img src="https://thumbs.dreamstime.com/b/located-bank-sivasagar-lake-shiva-dol-another-attraction-city-which-dates-back-to-time-was-capital-322166062.jpg" alt="Sivasagar">
            <h3>Sivasagar</h3>
            <p>An ancient Ahom kingdom with historic temples and monuments.</p>
        </div>
        <div class="place">
            <img src="https://t3.ftcdn.net/jpg/15/74/92/24/360_F_1574922476_xFxSdL9Zlz7SJEaEI67RzuKv8SDXT2iH.jpg" alt="Haflong">
            <h3>Haflong</h3>
            <p>The only hill station in Assam, offering breathtaking landscapes and a peaceful retreat.</p>
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
