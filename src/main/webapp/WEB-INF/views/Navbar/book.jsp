<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tourism and Traveling Management</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">


    <link rel="stylesheet" href="/resources/css/navbar.css">
    <link rel="stylesheet" href="/resources/css/book.css">
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

    <div class="container">
        <h1>Book Your Tour</h1>
        <form action="payment" method="post">

            <input type="text" name="fullName" placeholder="Full Name" required>
            <input type="email" name="email" placeholder="Email Address" required>
            <input type="text" name="whatsapp" placeholder="WhatsApp Number" required>

      <select name="tourName" required>

                     <option value="" disabled selected>Select a Tour</option>

     //meghalaya
                     <option value="Cherrapunji Adventure - 3 Days">Cherrapunji Adventure - 3 Days</option>
                      <option value="Umiam Lake Retreat - 2 Days">Umiam Lake Retreat - 2 Days</option>
                      <option value="Dawki & Shnongpdeng - 3 Days">Dawki & Shnongpdeng - 3 Days</option>
                     <option value="Mawlynnong - Asia's Cleanest Village - 2 Days">Mawlynnong - Asia's Cleanest Village - 2 Days</option>
                     <hr>

     //nagaland

                     <option value="Kohima & War Cemetery - 2 Days">Kohima & War Cemetery - 2 Days</option>
                     <option value="Hornbill Festival - 3 Days">Hornbill Festival - 3 Days</option>
                     <option value="Dzukou Valley Trek - 2 Days">Dzukou Valley Trek - 2 Days</option>
                     <option value="Mokokchung & Ao Naga Heritage - 3 Days">Mokokchung & Ao Naga Heritage - 3 Days</option>
                     <hr>

     //arunachal

                      <option value="Tawang Monastery - 4 Days">Tawang Monastery - 4 Days</option>
                       <option value="Sela Pass & Lake - 2 Days">Sela Pass & Lake - 2 Days</option>
                       <option value="Ziro Valley Eco-Tour - 3 Days">Ziro Valley Eco-Tour - 3 Days</option>
                       <option value="Bomdila & Dirang - 3 Days">Bomdila & Dirang - 3 Days</option>
                       <hr>

     //assam
                     <option value="Kaziranga Safari - 2 Days">Kaziranga Safari - 2 Days</option>
                      <option value="Majuli Island Getaway - 3 Days">Majuli Island Getaway - 3 Days</option>
                      <option value="Guwahati & Kamakhya Temple - 2 Days">Guwahati & Kamakhya Temple - 2 Days</option>
                      <option value="Tea Garden Experience - 2 Days">Tea Garden Experience - 2 Days</option>
                      <hr>

     //manipur

                    <option value="Loktak Lake & Phumdis - 2 Days">Loktak Lake & Phumdis - 2 Days</option>
                     <option value="Imphal & Kangla Fort - 2 Days">Imphal & Kangla Fort - 2 Days</option>
                     <option value="Ukhrul Valley Trek - 3 Days">Ukhrul Valley Trek - 3 Days</option>
                     <option value="Keibul Lamjao Safari - 1 Day">Keibul Lamjao Safari - 1 Day</option>
                    <hr>

     //mizoram

                     <option value="Aizawl City Tour - 2 Days">Aizawl City Tour - 2 Days</option>
                     <option value="Vantawng Falls & Serchhip - 2 Days">Vantawng Falls & Serchhip - 2 Days</option>
                     <option value="Reiek Tlang Trekking - 1 Day">Reiek Tlang Trekking - 1 Day</option>
                     <option value="Phawngpui Blue Mountain - 3 Days">Phawngpui Blue Mountain - 3 Days</option>
                     <hr>
     //sikkim

                     <option value="Tsomgo Lake & Nathula Pass - 2 Days">Tsomgo Lake & Nathula Pass - 2 Days</option>
                     <option value="Gangtok & Rumtek Monastery - 3 Days">Gangtok & Rumtek Monastery - 3 Days</option>
                     <option value="Yuksom & Kanchenjunga Trek - 5 Days">Yuksom & Kanchenjunga Trek - 5 Days</option>
                     <option value="Lachung & Yumthang Valley - 3 Days">Lachung & Yumthang Valley - 3 Days</option>
                     <hr>
     //tripura

                     <option value="Agartala & Ujjayanta Palace - 2 Days">Agartala & Ujjayanta Palace - 2 Days</option>
                     <option value="Neermahal & Rudrasagar Lake - 1 Day">Neermahal & Rudrasagar Lake - 1 Day</option>
                     <option value="Unakoti Rock Carvings - 2 Days">Unakoti Rock Carvings - 2 Days</option>
                     <option value="Jampui Hills & Orange Festival - 3 Days">Jampui Hills & Orange Festival - 3 Days</option>


                 </select>




            <!-- Hidden PayPal defaults -->
            <input type="hidden" name="currency" value="USD">
            <input type="hidden" name="method" value="paypal">
            <input type="hidden" name="intent" value="sale">
            <input type="hidden" name="description" value="TravelEase Tour Booking">

            <button type="submit">Book Now</button>
        </form>

    </div>

    <!-- Footer -->
   <footer class="site-footer">
                <div class="container-footer">
                    <div class="row">
                        <div class="col-lg-12 text-center">
                            <p>Copyright © 2024 <a href="#">TravelEase</a> Company. All rights reserved.
                                <br>Design: <a href="#for later use" target="_blank" title="free CSS templates">Rohit Sharma</a>

                            </p>
                        </div>
                    </div>
                </div>
            </footer>

</body>
</html>
