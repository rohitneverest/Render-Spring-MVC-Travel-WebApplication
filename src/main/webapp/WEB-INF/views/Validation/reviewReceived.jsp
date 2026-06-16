<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
           <link rel="stylesheet" href="/resources/css/navbar.css">
    <title>Thank You for Your Review!</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            text-align: center;
        }
        header {
            background: #222;
            color: white;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 50px;
            position: fixed;
            width: 100%;
            top: 0;
            left: 0;
            z-index: 1000;
        }
        .logo {
            font-size: 24px;
            font-weight: bold;
            text-decoration: none;
            color: white;
        }
        .navbar a {
            text-decoration: none;
            margin: 0 15px;
            color: white;
            font-weight: bold;
            transition: 0.3s;
        }
        .navbar a:hover {
            color: #00aaff;
        }
        .container {
            width: 50%;
            margin: auto;
            background: white;
            padding: 40px;
            margin-top: 100px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color: #1565c0;
        }
        p {
            font-size: 18px;
            color: #333;
        }
        .btn {
            display: inline-block;
            padding: 10px 20px;
            background: #1565c0;
            color: white;
            text-decoration: none;
            font-size: 16px;
            border-radius: 5px;
            margin-top: 15px;
        }
        .btn:hover {
            background: #0d47a1;
        }
        footer {
            background: #22B3C1;
            color: white;
            text-align: center;
            padding: 15px;
            margin-top: 20px;
        }
        .logo {
                                font-size: 24px;
                                font-weight: bold;
                                text-decoration: none;
                                color: white;
                            }
                            .logo span {
                                color: #f39c12;
                            }
    </style>
</head>
<body>

    <!-- Navigation Bar -->
  <section>
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
          <div class="icons">
              <i class="fas fa-search" id="search-btn"></i>
              <i class="fas fa-user" id="login-btn"></i>
          </div>
          <form action="" class="search-bar-container">
              <input type="search" id="search-bar" placeholder="search here...">
              <label for="search-bar" class="fas fa-search"></label>
          </form>
      </header>

      <div class="login-form-container">
          <i class="fas fa-times" id="form-close"></i>
          <form action="">
              <h3>login</h3>
              <input type="email" class="box" placeholder="enter your email">
              <input type="password" class="box" placeholder="enter your password ">
              <input type="submit" value="login now" class="btn" onclick="window.location.href='loggin.html';">
              <!-- <a href="#" class="btn">login now</a> -->

              <input type="checkbox" id="remember">
              <label for="remember">remember austin is gay!</label>
              <p>forget password? <a href="#">click here</a></p>
              <p>don't have an account? <a href="registration">register now</a></p>
          </form>
      </div>
      <script src="/resources/js/script.js"></script>
  </section>


    <div class="container">
        <h1>Thank You!</h1>
        <p>Your review has been received successfully. We appreciate your feedback and will use it to improve our services.</p>
        <p>Feel free to explore more tours and services.</p>
        <a href="/index.jsp" class="btn">Return to Home</a>
    </div>

    <!-- Footer -->
    <footer>
        <p>Copyright © 2024 <a href="#">TravelEase</a> Company. All rights reserved.
        <br>Design: <a href="#for-later-use" target="_blank">TravelEase Team</a></p>
    </footer>

</body>
</html>
