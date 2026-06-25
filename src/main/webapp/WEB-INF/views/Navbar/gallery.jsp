<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tourism and Traveling Management</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">


    <link rel="stylesheet" href="/resources/css/navbar.css">
    <link rel="stylesheet" href="/resources/css/gallery.css">
    <link rel="stylesheet" href="/resources/css/footer.css">





</head>

<body>
<div class="boss">

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
            <input name="email" type="email" class="box" placeholder="Enter your email">
            <input name="password" type="password" class="box" placeholder="Enter your password ">
            <input type="submit" value="login now" class="btn" >
            <!-- <a href="/" class="btn">login now</a> -->
            <div class="check">
            <input type="checkbox" id="remember">
            <label for="remember">Remember me!</label></div>
            <p>forget password? <a href="/auth/forgot-password">click here</a></p>
            <p>don't have an account? <a href="/auth/registration">register now</a></p>
        </form>
    </div>

</section>


<section>
    <div class="container">
        <h1>Travel Gallery</h1>
        <p>Explore breathtaking destinations through our collection of images.</p>

        <div class="gallery">
            <a href="#img1"><img src="https://www.kipepeo.in/blog/wp-content/uploads/2019/07/tawang-monastery-1024x683.jpg" alt="Tawang Monastery"></a>
            <a href="#img2"><img src="https://tse2.mm.bing.net/th?id=OIP.wgMixExPHmq7ajeAGsgF7wHaE7&pid=Api&P=0&h=180" alt="Nohkalikai Falls"></a>
            <a href="#img3"><img src="http://tourmyodisha.com/wp-content/uploads/2022/12/Kaziranga-National-Park-1.jpg" alt="Kaziranga National Park"></a>
            <a href="#img4"><img src="https://travellingslacker.com/wp-content/uploads/2020/03/Shnopdeng-4.jpg" alt="Dawki River"></a>
            <a href="#img5"><img src="https://www.lostwithpurpose.com/wp-content/uploads/2017/07/DSC07518.jpg" alt="Loktak Lake"></a>
            <a href="#img6"><img src="https://nanchiblog.files.wordpress.com/2020/04/tsomgo-lake-changu-lake-snow-clad-mountains-and-lake-sikkim.jpg" alt="Tsomgo Lake"></a>
            <a href="#img7"><img src="https://monksonwheels.com/wp-content/uploads/2023/03/Nagaland-Tour-Package-Event-Photo.jpg" alt="Tsomgo Lake"></a>
            <a href="#img8"><img src="https://as2.ftcdn.net/v2/jpg/04/27/14/43/1000_F_427144345_u9WSASQWJiVMehKW0TpSXCIePSTAsSLc.jpg" alt="Tsomgo Lake"></a>
            <a href="#img9"><img src="https://www.gosahin.com/go/p/c/1519475334_Kangla-Fort1.jpg" alt="Tsomgo Lake"></a>
            <a href="#img10"><img src="https://www.indiantempletour.com/blogs/wp-content/uploads/2023/05/Cherrapunji.jpg" alt="Cherrapunji" alt="Tsomgo Lake"></a>
        </div>
    </div>

    <!-- Lightbox for Image Enlargement -->
    <div id="img1" class="lightbox">
        <a href="#" class="close">&times;</a>
        <img src="https://www.kipepeo.in/blog/wp-content/uploads/2019/07/tawang-monastery-1024x683.jpg" alt="Tawang Monastery">
    </div>

    <div id="img2" class="lightbox">
        <a href="#" class="close">&times;</a>
        <img src="https://tse2.mm.bing.net/th?id=OIP.wgMixExPHmq7ajeAGsgF7wHaE7&pid=Api&P=0&h=180" alt="Nohkalikai Falls">
    </div>

    <div id="img3" class="lightbox">
        <a href="#" class="close">&times;</a>
        <img src="http://tourmyodisha.com/wp-content/uploads/2022/12/Kaziranga-National-Park-1.jpg" alt="Kaziranga National Park">
    </div>

    <div id="img4" class="lightbox">
        <a href="#" class="close">&times;</a>
        <img src="https://travellingslacker.com/wp-content/uploads/2020/03/Shnopdeng-4.jpg" alt="Dawki River">
    </div>

    <div id="img5" class="lightbox">
        <a href="#" class="close">&times;</a>
        <img src="https://www.lostwithpurpose.com/wp-content/uploads/2017/07/DSC07518.jpg" alt="Loktak Lake">
    </div>

    <div id="img6" class="lightbox">
        <a href="#" class="close">&times;</a>
        <img src="https://nanchiblog.files.wordpress.com/2020/04/tsomgo-lake-changu-lake-snow-clad-mountains-and-lake-sikkim.jpg" alt="Tsomgo Lake">
    </div>
    <div id="img7" class="lightbox">
            <a href="#" class="close">&times;</a>
            <img src="https://monksonwheels.com/wp-content/uploads/2023/03/Nagaland-Tour-Package-Event-Photo.jpg" alt="Tsomgo Lake">
    </div>
    <div id="img8" class="lightbox">
                <a href="#" class="close">&times;</a>
                <img src="https://as2.ftcdn.net/v2/jpg/04/27/14/43/1000_F_427144345_u9WSASQWJiVMehKW0TpSXCIePSTAsSLc.jpg" alt="Tsomgo Lake">
    </div>
    <div id="img9" class="lightbox">
                    <a href="#" class="close">&times;</a>
                    <img src="https://www.gosahin.com/go/p/c/1519475334_Kangla-Fort1.jpg" alt="Tsomgo Lake">
    </div>
    <div id="img10" class="lightbox">
                        <a href="#" class="close">&times;</a>
                        <img src="https://www.indiantempletour.com/blogs/wp-content/uploads/2023/05/Cherrapunji.jpg" alt="Tsomgo Lake">
    </div>
</section>
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
