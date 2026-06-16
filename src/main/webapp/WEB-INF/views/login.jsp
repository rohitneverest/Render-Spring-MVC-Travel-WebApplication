<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

       <link rel="stylesheet" href="/resources/css/navbar.css">
               <link rel="stylesheet" href="/resources/css/login.css">
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
     <script src="/resources/js/script.js"></script>

    </section>





   <div class="login-form-container">
          <form action="signin" method="POST">
              <h3>Welcome Back!</h3>
              <input type="email" name="email" class="box" placeholder="Enter your email" required>
              <input type="password" name="password" class="box" placeholder="Enter your password" required>

              <input type="submit" value="Login Now" class="btn">

              <div style="text-align:center; margin-top: 12px;">
                  <input type="checkbox" id="remember-me">
                  <label for="remember-me">Remember me</label>
              </div>

              <p>Forgot password? <a href="/">Click here</a></p>
              <p>Don’t have an account? <a href="registration">Register now</a></p>
          </form>
      </div>


     <footer class="site-footer">
                 <div class="container">
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
