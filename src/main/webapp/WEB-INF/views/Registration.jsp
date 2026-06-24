<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tourism and Traveling Management</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">


    <link rel="stylesheet" href="/resources/css/search.css">
    <link rel="stylesheet" href="/resources/css/registration.css">
    <link rel="stylesheet" href="/resources/css/footer.css">





</head>

<body>
<div class="boss">

<header>

    <a href="/" class="logo">
        <span>T</span>ravel<span>E</span>ase
    </a>



    <nav class="navbar">
        <a href="/">Home</a>
    </nav>

</header>




           <!-- ✅ Registration Form Section -->
           <section class="register-section">
               <div class="register-container">
                   <h1>Create Your Account</h1>
                   <form action="/auth/register" method="POST">
                       <label for="Rname">Full Name</label>
                       <input type="text" id="Rname" name="Rname" placeholder="Enter your full name" required>

                       <label for="Remail">Email Address</label>
                       <input type="email" id="Remail" name="Remail" placeholder="Enter your email" required>

                       <label for="Rpassword">Password</label>
                       <input type="password" id="Rpassword" name="Rpassword" placeholder="Enter your password" required>

                       <input class="btn" type="submit" value="Create Account">
                       <p>Already have an account? <a href="/auth/signin">Login here</a></p>
                   </form>
               </div>
           </section>





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