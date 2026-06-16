<%@page language="java" %>


<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create an Account</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">


           <link rel="stylesheet" href="/resources/css/navbar.css">
           <link rel="stylesheet" href="/resources/css/registration.css">
           <link rel="stylesheet" href="/resources/css/footer.css">

</head>

<body>


<section class="navbar-section">
    <header>
        <div id="menu-bar" class="fas fa-bars"></div>
        <a href="#" class="logo"><span>T</span>ravel<span>E</span>ase</a>
        <nav class="navbar">
            <a href="/">home</a>
            <a href="book">book</a>
            <a href="packages">packages</a>
            <a href="service">service</a>
            <a href="gallery">gallery</a>
            <a href="review">review</a>
            <a href="contact">contact</a>
        </nav>

    </header>

    <div class="login-form-container">
        <i class="fas fa-times" id="form-close"></i>
        <form action="">
            <h3>login</h3>
            <input type="email" class="box" placeholder="enter your email">
            <input type="password" class="box" placeholder="enter your password ">
            <input type="submit" value="login now" class="btn" onclick="window.location.href='loggin.html';">
            <!-- <a href="#" class="btn">login now</a> -->
        <div class="check">
               <input type="checkbox" id="remember">
                <label for="remember">Remember me!</label>
          </div>
            <p>forget password? <a href="#">click here</a></p>

        </form>
    </div>
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
                       <p>Already have an account? <a href="login">Login here</a></p>
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