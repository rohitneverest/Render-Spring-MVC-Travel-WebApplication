<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tourism and Traveling Management</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">


    <link rel="stylesheet" href="/resources/css/navbar.css">
    <link rel="stylesheet" href="/resources/css/registration.css">
    <link rel="stylesheet" href="/resources/css/footer.css">





</head>

<body>

<section class="navbar-section">
     <header>
            <div id="menu-bar" class="fas fa-bars"></div>
            <a href="/" class="logo"><span>T</span>ravel<span>E</span>ase</a>
            <nav class="navbar">
                <a href="/"><b>home</b></a>


            </nav>
            <script src="/resources/js/script.js"></script>

</section>




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
             <div class="container">
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