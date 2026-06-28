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

<div class="bookcover">
    <div class="container">
        <h1>Book Your Tour</h1>
        <p>Plan your perfect Northeast adventure with TravelEase.</p>
        <form action="/payment" method="post">

            <input type="text" name="fullName" placeholder="Full Name" required>
            <input type="email" name="email" placeholder="Email Address" required>
            <input type="text" name="whatsapp" placeholder="WhatsApp Number" required>

      <select name="tourName" required>

          <option value="" disabled
              ${empty selectedTour ? 'selected' : ''}>
              Select a Tour
          </option>

          <!-- MEGHALAYA -->
          <option value="Cherrapunji Adventure - 3 Days"
              ${selectedTour == 'Cherrapunji Adventure - 3 Days' ? 'selected' : ''}>
              Cherrapunji Adventure - 3 Days
          </option>

          <option value="Umiam Lake Retreat - 2 Days"
              ${selectedTour == 'Umiam Lake Retreat - 2 Days' ? 'selected' : ''}>
              Umiam Lake Retreat - 2 Days
          </option>

          <option value="Dawki & Shnongpdeng - 3 Days"
              ${selectedTour == 'Dawki & Shnongpdeng - 3 Days' ? 'selected' : ''}>
              Dawki & Shnongpdeng - 3 Days
          </option>

          <option value="Mawlynnong - Asia's Cleanest Village - 2 Days"
              ${selectedTour == "Mawlynnong - Asia's Cleanest Village - 2 Days" ? 'selected' : ''}>
              Mawlynnong - Asia's Cleanest Village - 2 Days
          </option>

          <!-- NAGALAND -->
          <option value="Kohima & War Cemetery - 2 Days"
              ${selectedTour == 'Kohima & War Cemetery - 2 Days' ? 'selected' : ''}>
              Kohima & War Cemetery - 2 Days
          </option>

          <option value="Hornbill Festival - 3 Days"
              ${selectedTour == 'Hornbill Festival - 3 Days' ? 'selected' : ''}>
              Hornbill Festival - 3 Days
          </option>

          <option value="Dzukou Valley Trek - 2 Days"
              ${selectedTour == 'Dzukou Valley Trek - 2 Days' ? 'selected' : ''}>
              Dzukou Valley Trek - 2 Days
          </option>

          <option value="Mokokchung & Ao Naga Heritage - 3 Days"
              ${selectedTour == 'Mokokchung & Ao Naga Heritage - 3 Days' ? 'selected' : ''}>
              Mokokchung & Ao Naga Heritage - 3 Days
          </option>

          <!-- ARUNACHAL -->
          <option value="Tawang Monastery - 4 Days"
              ${selectedTour == 'Tawang Monastery - 4 Days' ? 'selected' : ''}>
              Tawang Monastery - 4 Days
          </option>

          <option value="Sela Pass & Lake - 2 Days"
              ${selectedTour == 'Sela Pass & Lake - 2 Days' ? 'selected' : ''}>
              Sela Pass & Lake - 2 Days
          </option>

          <option value="Ziro Valley Eco-Tour - 3 Days"
              ${selectedTour == 'Ziro Valley Eco-Tour - 3 Days' ? 'selected' : ''}>
              Ziro Valley Eco-Tour - 3 Days
          </option>

          <option value="Bomdila & Dirang - 3 Days"
              ${selectedTour == 'Bomdila & Dirang - 3 Days' ? 'selected' : ''}>
              Bomdila & Dirang - 3 Days
          </option>

          <!-- ASSAM -->
          <option value="Kaziranga Safari - 2 Days"
              ${selectedTour == 'Kaziranga Safari - 2 Days' ? 'selected' : ''}>
              Kaziranga Safari - 2 Days
          </option>

          <option value="Majuli Island Getaway - 3 Days"
              ${selectedTour == 'Majuli Island Getaway - 3 Days' ? 'selected' : ''}>
              Majuli Island Getaway - 3 Days
          </option>

          <option value="Guwahati & Kamakhya Temple - 2 Days"
              ${selectedTour == 'Guwahati & Kamakhya Temple - 2 Days' ? 'selected' : ''}>
              Guwahati & Kamakhya Temple - 2 Days
          </option>

          <option value="Tea Garden Experience - 2 Days"
              ${selectedTour == 'Tea Garden Experience - 2 Days' ? 'selected' : ''}>
              Tea Garden Experience - 2 Days
          </option>

          <!-- MANIPUR -->
          <option value="Loktak Lake & Phumdis - 2 Days"
              ${selectedTour == 'Loktak Lake & Phumdis - 2 Days' ? 'selected' : ''}>
              Loktak Lake & Phumdis - 2 Days
          </option>

          <option value="Imphal & Kangla Fort - 2 Days"
              ${selectedTour == 'Imphal & Kangla Fort - 2 Days' ? 'selected' : ''}>
              Imphal & Kangla Fort - 2 Days
          </option>

          <option value="Ukhrul Valley Trek - 3 Days"
              ${selectedTour == 'Ukhrul Valley Trek - 3 Days' ? 'selected' : ''}>
              Ukhrul Valley Trek - 3 Days
          </option>

          <option value="Keibul Lamjao Safari - 1 Day"
              ${selectedTour == 'Keibul Lamjao Safari - 1 Day' ? 'selected' : ''}>
              Keibul Lamjao Safari - 1 Day
          </option>

          <!-- MIZORAM -->
          <option value="Aizawl City Tour - 2 Days"
              ${selectedTour == 'Aizawl City Tour - 2 Days' ? 'selected' : ''}>
              Aizawl City Tour - 2 Days
          </option>

          <option value="Vantawng Falls & Serchhip - 2 Days"
              ${selectedTour == 'Vantawng Falls & Serchhip - 2 Days' ? 'selected' : ''}>
              Vantawng Falls & Serchhip - 2 Days
          </option>

          <option value="Reiek Tlang Trekking - 1 Day"
              ${selectedTour == 'Reiek Tlang Trekking - 1 Day' ? 'selected' : ''}>
              Reiek Tlang Trekking - 1 Day
          </option>

          <option value="Phawngpui Blue Mountain - 3 Days"
              ${selectedTour == 'Phawngpui Blue Mountain - 3 Days' ? 'selected' : ''}>
              Phawngpui Blue Mountain - 3 Days
          </option>

          <!-- SIKKIM -->
          <option value="Tsomgo Lake & Nathula Pass - 2 Days"
              ${selectedTour == 'Tsomgo Lake & Nathula Pass - 2 Days' ? 'selected' : ''}>
              Tsomgo Lake & Nathula Pass - 2 Days
          </option>

          <option value="Gangtok & Rumtek Monastery - 3 Days"
              ${selectedTour == 'Gangtok & Rumtek Monastery - 3 Days' ? 'selected' : ''}>
              Gangtok & Rumtek Monastery - 3 Days
          </option>

          <option value="Yuksom & Kanchenjunga Trek - 5 Days"
              ${selectedTour == 'Yuksom & Kanchenjunga Trek - 5 Days' ? 'selected' : ''}>
              Yuksom & Kanchenjunga Trek - 5 Days
          </option>

          <option value="Lachung & Yumthang Valley - 3 Days"
              ${selectedTour == 'Lachung & Yumthang Valley - 3 Days' ? 'selected' : ''}>
              Lachung & Yumthang Valley - 3 Days
          </option>

          <!-- TRIPURA -->
          <option value="Agartala & Ujjayanta Palace - 2 Days"
              ${selectedTour == 'Agartala & Ujjayanta Palace - 2 Days' ? 'selected' : ''}>
              Agartala & Ujjayanta Palace - 2 Days
          </option>

          <option value="Neermahal & Rudrasagar Lake - 1 Day"
              ${selectedTour == 'Neermahal & Rudrasagar Lake - 1 Day' ? 'selected' : ''}>
              Neermahal & Rudrasagar Lake - 1 Day
          </option>

          <option value="Unakoti Rock Carvings - 2 Days"
              ${selectedTour == 'Unakoti Rock Carvings - 2 Days' ? 'selected' : ''}>
              Unakoti Rock Carvings - 2 Days
          </option>

          <option value="Jampui Hills & Orange Festival - 3 Days"
              ${selectedTour == 'Jampui Hills & Orange Festival - 3 Days' ? 'selected' : ''}>
              Jampui Hills & Orange Festival - 3 Days
          </option>

      </select>


            <!-- Hidden PayPal defaults -->
            <input type="hidden" name="currency" value="USD">
            <input type="hidden" name="method" value="paypal">
            <input type="hidden" name="intent" value="sale">
            <input type="hidden" name="description" value="TravelEase Tour Booking">

            <button type="submit">Book Now</button>
        </form>

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
