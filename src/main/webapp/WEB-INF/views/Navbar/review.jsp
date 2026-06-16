<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tourism and Traveling Management</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">


    <link rel="stylesheet" href="/resources/css/navbar.css">
    <link rel="stylesheet" href="/resources/css/review.css">
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
        <h1>Customer Reviews</h1>
        <p>We value your feedback! Share your experience with us.</p>

        <!-- Review Submission Form -->
        <div class="review-form">



            <form action="https://formsubmit.co/b2d10e4a46087bad0c9c009582a5da51" method="post">
            <input type="hidden" name="_next" value="http://localhost:8080/thanks">
           <input type="hidden" name="_autoresponse" value="Thank you for reaching out to TravelEase! We'll get back to you soon.">



                <label for="name">Full Name:</label>
                <input type="text" id="name" name="name" required>

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>

                <label for="message">Your Review:</label>
                <textarea id="message" name="message" rows="4" required></textarea>

                <button type="submit">Submit Review</button>
            </form>
        </div>

        <!-- Reviews Section -->
        <div class="reviews">
            <h2>What Our Customers Say</h2>

            <div class="review">
                <h3>Tripti dey</h3>
                <p>"Amazing experience! The tour was well-organized and truly memorable."</p>
            </div>

            <div class="review">
                <h3>Samuel Jyrwa</h3>
                <p>"Beautiful destinations, great service, and friendly guides. Highly recommended!"</p>
            </div>

            <div class="review">
                <h3>Rahul Sharma</h3>
                <p>"One of the best trips I’ve ever taken. Hassle-free bookings and great accommodations!"</p>
            </div>

        </div>
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
<script>



</script>
</html>
