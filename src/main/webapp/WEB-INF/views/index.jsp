<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tourism and Traveling Management</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">


    <link rel="stylesheet" href="/resources/css/navbar.css">
    <link rel="stylesheet" href="/resources/css/style.css">
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

<div class="protect-top-slider">

<section class="top-slider-pictures-section">

  //chatbot
    <script src="https://cdn.botpress.cloud/webchat/v3.6/inject.js"></script>
    <script src="https://files.bpcontent.cloud/2025/04/16/17/20250416172314-8EBMJPGE.js" defer></script>




    <div class="container">
        <div class="slide">
            <div class="item"
                 style="background-image: url(https://i0.wp.com/travelmynation.in/wp-content/uploads/2020/06/sunset-1113547_1920.jpg);">
                <div class="content">
                    <div class="name">ARUNACHAL PRADESH</div>
                    <div class="des">Arunachal Pradesh, also known as the "Land of the Dawn-Lit Mountains," is the first
                        Indian state to see sunrise due to its easternmost location.</div>
                    <a href="arunachal"> <button>See More</button></a>
                 </div>
            </div>
            <div class="item"
                 style="background-image: url(https://www.oddessemania.in/wp-content/uploads/2023/10/hornbill-festival-1024x682.jpg);">
                <div class="content">
                    <div class="name">NAGALAND</div>
                    <div class="des">Nagaland is known for its vibrant tribal culture and festivals, especially the Hornbill
                        Festival, often called the "Festival of Festivals."
                    </div>
                    <a href="nagaland">
                        <button>See More</button>
                    </a>
                </div>
            </div>
            <div class="item"
                 style="background-image: url(https://static2.tripoto.com/media/filter/tst/gen/238763/TripDocument/1574422015_page_14_4a_2.jpg);">
                <div class="content">
                    <div class="name">MEGHALAYA</div>
                    <div class="des">Abode of Clouds," Meghalaya has some of the highest rainfall in the world, especially in
                        Mawsynram and Cherrapunji.</div>
                   <a href="meghalaya"><button>See More</button></a>
                </div>
            </div>
            <div class="item"
                 style="background-image: url(https://cdn.s3waas.gov.in/s3185c29dc24325934ee377cfda20e414c/uploads/bfi_thumb/2018050537-olw72z9gkjnuai7xu4tyu2689xolhwewytgze97ekq.jpg);">
                <div class="content">
                    <div class="name">TRIPURA</div>
                    <div class="des">Tripura is known for its palaces, such as the Ujjayanta Palace, and rich cultural
                        heritage.</div>
                    <a href="tripura"> <button>See More</button></a>
                </div>
            </div>
            <div class="item"
                 style="background-image: url(https://i.pinimg.com/736x/e7/a6/73/e7a67338e671103e6d9bc1483bbc21c0.jpg);">
                <div class="content">
                    <div class="name">ASSAM</div>
                    <div class="des">Assam is known for its tea plantations, producing some of the world’s finest teas. The
                        state is also famous for the Brahmaputra River, which provides water to the fertile plains and sustains
                        rice and jute agriculture.</div>
                    <a href="assam"> <button>See More</button></a>
                </div>
            </div>
            <div class="item"
                 style="background-image: url(https://triplou.com/wp-content/uploads/2020/05/Tam-Dil-Lake.jpg);">
                <div class="content">
                    <div class="name">MIZORAM</div>
                    <div class="des">Mizoram, known as the "Land of the Blue Mountains," is covered by a beautiful expanse of
                        dense bamboo forests and blue hills.</div>
                    <a href="mizoram"> <button>See More</button></a>
                </div>
            </div>
            <div class="item"
                 style="background-image: url(https://live.staticflickr.com/5556/18625505749_21bdb3e908_h.jpg);">
                <div class="content">
                    <div class="name">SIKKIM</div>
                    <div class="des">Sikkim is renowned for its stunning Himalayan landscapes, including Mount Kanchenjunga,
                        the third-highest peak in the world.</div>
                    <a href="sikkim"> <button>See More</button></a>
                </div>
            </div>
            <div class="item"
                 style="background-image: url(https://i.pinimg.com/736x/8b/c2/a0/8bc2a027b8e28a101afa94535ccd0d6f.jpg);">
                <div class="content">
                    <div class="name">MANIPUR</div>
                    <div class="des">Manipur is often called the "Jewel of India" for its scenic landscapes and cultural
                        richness.</div>
                    <a href="manipur"> <button>See More</button></a>
                </div>
            </div>
             <div class="button">
                        <button class="prev"><i class="fa-solid fa-arrow-left"></i></button>
                        <button class="next"><i class="fa-solid fa-arrow-right"></i></button>
              </div>
        </div>
    </div>
    <script >
       let next = document.querySelector('.next');
       let prev = document.querySelector('.prev');
       let slide = document.querySelector('.slide');

         // Button click logic
         next.addEventListener('click', function () {
           let items = document.querySelectorAll('.item');
           slide.appendChild(items[0]);
         });

         prev.addEventListener('click', function () {
           let items = document.querySelectorAll('.item');
           slide.insertBefore(items[items.length - 1], items[0]);
         });

         // ✅ Swipe logic for mobile
         let startX = 0;
         let endX = 0;

         slide.addEventListener('touchstart', (e) => {
           startX = e.touches[0].clientX;
         });

         slide.addEventListener('touchend', (e) => {
           endX = e.changedTouches[0].clientX;

           if (startX - endX > 50) {
             // Swipe left → go next
             next.click();
           } else if (endX - startX > 50) {
             // Swipe right → go prev
             prev.click();
           }
         });
    </script>

</section>
</div>
<!-- content  -->
<div class="protect">
<section class="visit-country-section">
    <div class="container">
        <div class="section-heading">
            <h2>Explore Our Top Destinations</h2>
            <p>Discover the beauty and culture of Northeast India. Your adventure awaits!</p>
        </div>
        <div class="country-grid">
            <!-- Card 1 -->
            <div class="country-card">
                <img src="https://tse2.mm.bing.net/th?id=OIP.lq8q8L4UjLLiQa6JbjoHqwHaE8&pid=Api&P=0&h=180" alt="Nagaland">
                <div class="country-info">
                    <h3>Nagaland</h3>
                    <p>Diverse tribal communities and vibrant festivals, like the Hornbill Festival.</p>
                    <a href="nagaland" class="btn-explore">Explore</a>
                </div>
            </div>
            <!-- Card 2 -->
            <div class="country-card">
                <img src="https://tse2.mm.bing.net/th?id=OIP.FtrPLjTvqKRCQq8FpsJoTQHaFj&pid=Api&P=0&h=180" alt="Arunachal">
                <div class="country-info">
                    <h3>Arunachal Pradesh</h3>
                    <p>The Land of the Rising Sun, breathtaking landscapes and culture.</p>
                    <a href="arunachal" class="btn-explore">Explore</a>
                </div>
            </div>
            <!-- Card 3 -->
            <div class="country-card">
                <img src="https://tse2.mm.bing.net/th?id=OIP.PXYcU5_ZiG7FnT4ihdQ4eAHaEo&pid=Api&P=0&h=180" alt="Assam">
                <div class="country-info">
                    <h3>Assam</h3>
                    <p>Land of tea, temples, and the mighty Brahmaputra River.</p>
                    <a href="assam" class="btn-explore">Explore</a>
                </div>
            </div>
            <!-- Card 4 -->
            <div class="country-card">
                <img src="https://i0.wp.com/travelmynation.in/wp-content/uploads/2020/06/sunset-1113547_1920.jpg" alt="Meghalaya">
                <div class="country-info">
                    <h3>Meghalaya</h3>
                    <p>Abode of clouds, waterfalls, and lush green hills.</p>
                    <a href="meghalaya" class="btn-explore">Explore</a>
                </div>
            </div>
        </div>
    </div>
     <div class="book-yours-now">
            <div class="row">
                <div class="col-lg-8">
                    <h2>Are You Looking To Travel?</h2>
                    <h4>Make A Reservation By Clicking The Button</h4>
                </div>
                <div class="col-lg-4">
                    <div class="border-button">
                        <a href="book">Book Yours Now</a>
                    </div>
                </div>
            </div>
        </div>




</section>
<div>


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