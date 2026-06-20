<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tourism and Traveling Management</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">


    <link rel="stylesheet" href="/resources/css/navbar.css">
    <link rel="stylesheet" href="/resources/css/packages.css">
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



<!-- Main Content -->
<div class="content">
    <h1>Tour Packages for Meghalaya</h1>
    <p>Explore Meghalaya with our exclusive travel packages, covering the most beautiful and lesser-known destinations.</p>

    <div class="packages">
        <div class="package">
            <img src="https://www.indiantempletour.com/blogs/wp-content/uploads/2023/05/Cherrapunji.jpg" alt="Cherrapunji">
            <h3>Cherrapunji Adventure - 3 Days</h3>
            <p>Visit the mesmerizing waterfalls and explore the living root bridges in one of the wettest places on Earth.</p>
            <div class="twobuttons">
              <a href="cherapunjee"><button>Itinerary</button></a>
              <a href="book"> <button>Book now</button></a>
            </div>
        </div>
        <div class="package">
            <img src="https://i0.wp.com/travelwithabong.com/wp-content/uploads/2019/12/IMG_20190702_110456.jpg?fit=1024%2C768&ssl=1" alt="Umiam Lake">
            <h3>Umiam Lake Retreat - 2 Days</h3>
            <p>Relax by the serene waters of Umiam Lake, enjoy boating, and take in the breathtaking views.</p>

            <div class="twobuttons">
              <a href="umiam"><button>Itinerary</button></a>
              <a href="book"> <button>Book now</button></a>
            </div>
        </div>
        <div class="package">
            <img src="https://travellingslacker.com/wp-content/uploads/2020/03/Shnopdeng-7.jpg" alt="Dawki River">
            <h3>Dawki & Shnongpdeng - 3 Days</h3>
            <p>Experience crystal-clear waters and adventure activities like kayaking & camping near Dawki.</p>

            <div class="twobuttons">
              <a href="dawki"><button>Itinerary</button></a>
              <a href="book"> <button>Book now</button></a>
            </div>
        </div>
        <div class="package">
            <img src="https://travelentice.com/wp-content/uploads/2020/07/Mawlynong-The-Cleanest-Village-in-Asia.jpg" alt="Mawlynnong">
            <h3>Mawlynnong - Asia's Cleanest Village</h3>
            <p>Visit the cleanest village in Asia and explore traditional Khasi culture in this eco-tourism paradise.</p>

            <div class="twobuttons">
              <a href="mawlynnong"><button>Itinerary</button></a>
              <a href="book"> <button>Book now</button></a>
            </div>
        </div>
    </div>
</div>
<div class="content">
    <h1>Tour Packages for Nagaland</h1>
    <p>Experience the cultural heritage, scenic landscapes, and tribal traditions of Nagaland.</p>

    <div class="packages">
        <div class="package">
            <img src="https://archive.cloud.cwgc.org/images-cemetery-images-prod/2058100/kohima2003-2.jpg" alt="Kohima War Cemetery">
            <h3>Kohima & War Cemetery - 2 Days</h3>
            <p>Explore the historic Kohima War Cemetery and learn about the brave stories of World War II.</p>

            <div class="twobuttons">
              <a href="kohima"><button>Itinerary</button></a>
              <a href="book"> <button>Book now</button></a>
            </div>
        </div>
        <div class="package">
            <img src="https://thumbs.dreamstime.com/b/hornbill-festival-nagaland-india-9974248.jpg" alt="Hornbill Festival">
            <h3>Hornbill Festival - 3 Days</h3>
            <p>Experience the vibrant Hornbill Festival, showcasing the traditions and culture of Naga tribes.</p>

            <div class="twobuttons">
              <a href="hornbill"><button>Itinerary</button></a>
              <a href="book"> <button>Book now</button></a>
            </div>
        </div>
        <div class="package">
            <img src="https://monksonwheels.com/wp-content/uploads/2023/03/Nagaland-Tour-Package-Event-Photo.jpg" alt="Dzukou Valley">
            <h3>Dzukou Valley Trek - 2 Days</h3>
            <p>Embark on a breathtaking trek through the picturesque Dzukou Valley, known for its stunning landscapes.</p>

            <div class="twobuttons">
              <a href="dzukou"><button>Itinerary</button></a>
              <a href="book"> <button>Book now</button></a>
            </div>
        </div>
        <div class="package">
            <img src="https://static2.tripoto.com/media/filter/tst/img/OgData/1516603698_1515401971_screen_shot_2018_01_08_at_1_27_46_pm_fotor.png" alt="Mokokchung">
            <h3>Mokokchung & Ao Naga Heritage - 3 Days</h3>
            <p>Discover the rich traditions of the Ao Naga tribe and explore the scenic town of Mokokchung.</p>

            <div class="twobuttons">
              <a href="mokokchung"><button>Itinerary</button></a>
              <a href="book"> <button>Book now</button></a>
            </div>
        </div>
    </div>
</div>

<div class="content">
    <h1>Tour Packages for Arunachal</h1>
    <p>Discover the untouched beauty of Arunachal Pradesh with its stunning landscapes, monasteries, and tribal culture.</p>

    <div class="packages">
        <div class="package">
            <img src="https://www.kipepeo.in/blog/wp-content/uploads/2019/07/tawang-monastery-1024x683.jpg" alt="Tawang Monastery">
            <h3>Tawang Monastery - 4 Days</h3>
            <p>Visit India's largest monastery, explore Buddhist culture, and enjoy the scenic beauty of Tawang.</p>

            <div class="twobuttons">
              <a href="tawang"><button>Itinerary</button></a>
              <a href="book"> <button>Book now</button></a>
            </div>
        </div>
        <div class="package">
            <img src="https://as2.ftcdn.net/v2/jpg/04/27/14/43/1000_F_427144345_u9WSASQWJiVMehKW0TpSXCIePSTAsSLc.jpg" alt="Sela Pass">
            <h3>Sela Pass & Lake - 2 Days</h3>
            <p>Experience the breathtaking views of snow-covered mountains and the stunning Sela Lake.</p>

            <div class="twobuttons">
              <a href="selapass"><button>Itinerary</button></a>
              <a href="book"> <button>Book now</button></a>
            </div>
        </div>
        <div class="package">
            <img src="https://www.ewsholidays.com/wp-content/uploads/2019/10/Ziro-Valley-Lower-Subansiri-Arunachal-Pradesh-North-East-India14.jpg" alt="Ziro Valley">
            <h3>Ziro Valley Eco-Tour - 3 Days</h3>
            <p>Explore the lush landscapes, rice fields, and unique Apatani tribal culture in Ziro Valley.</p>

            <div class="twobuttons">
              <a href="ziro"><button>Itinerary</button></a>
              <a href="book"> <button>Book now</button></a>
            </div>
        </div>
        <div class="package">
            <img src="https://tourmyodisha.com/wp-content/uploads/2023/02/Dirang-Valley-768x576.jpg" alt="Bomdila">
            <h3>Bomdila & Dirang - 3 Days</h3>
            <p>Discover the peaceful hill stations, hot springs, and monasteries in the West Kameng district.</p>

            <div class="twobuttons">
              <a href="bomdila"><button>Itinerary</button></a>
              <a href="book"> <button>Book now</button></a>
            </div>
        </div>
    </div>
</div>
<div class="content">
    <h1>Tour Packages for Assam</h1>
    <p>Experience the cultural heritage, scenic beauty, and wildlife wonders of Assam.</p>

    <div class="packages">
        <div class="package">
            <img src="https://www.kaziranganationalpark-india.com/blog/wp-content/uploads/2022/08/kaziranga-tour.jpg" alt="Kaziranga National Park">
            <h3>Kaziranga Safari - 2 Days</h3>
            <p>Witness the famous one-horned rhinoceros and enjoy a jungle safari in this UNESCO heritage site.</p>

            <div class="twobuttons">
              <a href="kaziranga"><button>Itinerary</button></a>
              <a href="book"> <button>Book now</button></a>
            </div>
        </div>
        <div class="package">
            <img src="https://img.traveltriangle.com/blog/wp-content/uploads/2019/10/shutterstock_1238318665.jpg" alt="Majuli Island">
            <h3>Majuli Island Getaway - 3 Days</h3>
            <p>Explore the world's largest river island, known for its monasteries and rich Assamese culture.</p>

            <div class="twobuttons">
              <a href="majuli"><button>Itinerary</button></a>
              <a href="book"> <button>Book now</button></a>
            </div>
        </div>
        <div class="package">
            <img src="https://res.cloudinary.com/kmadmin/image/upload/v1724234472/kiomoi/Kamakhya_Temple_7389.jpg" alt="Kamakhya Temple">
            <h3>Guwahati & Kamakhya Temple - 2 Days</h3>
            <p>Visit the sacred Kamakhya Temple and cruise on the Brahmaputra River.</p>

            <div class="twobuttons">
              <a href="guwahati"><button>Itinerary</button></a>
              <a href="book"> <button>Book now</button></a>
            </div>
        </div>
        <div class="package">
            <img src="https://www.clubmahindra.com/blog/media/section_images/desktop-a162ee07d367c2a.jpg" alt="Assam Tea Gardens">
            <h3>Tea Garden Experience - 2 Days</h3>
            <p>Walk through lush tea estates, learn about tea processing, and enjoy a relaxing stay.</p>

            <div class="twobuttons">
              <a href="tea"><button>Itinerary</button></a>
              <a href="book"> <button>Book now</button></a>
            </div>
        </div>
    </div>
</div>
<div class="content">
    <h1>Tour Packages for Manipur</h1>
    <p>Discover the beauty of Manipur, from its floating lakes to its rich cultural heritage.</p>

    <div class="packages">
        <div class="package">
            <img src="https://img-cdn.thepublive.com/fit-in/1200x675/30-stades/media/media_files/Lh5ArB4uSLpPkcZwRX7O.jpg" alt="Loktak Lake">
            <h3>Loktak Lake & Phumdis - 2 Days</h3>
            <p>Explore the floating islands (Phumdis) of Loktak Lake and enjoy scenic boat rides.</p>

            <div class="twobuttons">
              <a href="loktak"><button>Itinerary</button></a>
              <a href="book"> <button>Book now</button></a>
            </div>
        </div>
        <div class="package">
            <img src="https://www.gosahin.com/go/p/c/1519475334_Kangla-Fort1.jpg" alt="Kangla Fort">
            <h3>Imphal & Kangla Fort - 2 Days</h3>
            <p>Discover Manipur's history at Kangla Fort and visit the vibrant Ima Keithel market.</p>

            <div class="twobuttons">
              <a href="imphal"><button>Itinerary</button></a>
              <a href="book"> <button>Book now</button></a>
            </div>
        </div>
        <div class="package">
            <img src="https://www.gosahin.com/go/p/c/1520524185_Shirui-Kashung-Peak3.jpg" alt="Ukhrul Valley">
            <h3>Ukhrul Valley Trek - 3 Days</h3>
            <p>Enjoy nature walks, waterfalls, and the famous Shirui Lily in the Ukhrul district.</p>

            <div class="twobuttons">
              <a href="ukhrul"><button>Itinerary</button></a>
              <a href="book"> <button>Book now</button></a>
            </div>
        </div>
        <div class="package">
            <img src="https://identyti.com/static/falcon/img/stock/page/saxenaria/356913_Keibul%20Lamjao%20National%20Park%20_1.jpg" alt="Keibul Lamjao National Park">
            <h3>Keibul Lamjao Safari - 1 Day</h3>
            <p>Visit the world's only floating national park and spot the rare Sangai deer.</p>

            <div class="twobuttons">
              <a href="keibul"><button>Itinerary</button></a>
              <a href="book"> <button>Book now</button></a>
            </div>
        </div>
    </div>
</div>
<div class="content">
    <h1>Tour Packages for Mizoram</h1>
    <p>Immerse yourself in the serene landscapes and rich Mizo culture of Mizoram.</p>

    <div class="packages">
        <div class="package">
            <img src="https://www.welcomenri.com/Top-News/image/aizawl_city_by_fekook.jpg" alt="Aizawl City">
            <h3>Aizawl City Tour - 2 Days</h3>
            <p>Explore the capital of Mizoram, visit local markets, and experience Mizo culture.</p>

            <div class="twobuttons">
              <a href="aizawl"><button>Itinerary</button></a>
              <a href="book"> <button>Book now</button></a>
            </div>
        </div>
        <div class="package">
            <img src="http://image3.mouthshut.com/images/imagesp/l/Vantawng-Falls-Serchhip-925753000s.jpg" alt="Vantawng Falls">
            <h3>Vantawng Falls & Serchhip - 2 Days</h3>
            <p>Witness the highest waterfall in Mizoram and enjoy scenic village life in Serchhip.</p>

            <div class="twobuttons">
              <a href="vantawng"><button>Itinerary</button></a>
              <a href="book"> <button>Book now</button></a>
            </div>
        </div>
        <div class="package">
            <img src="https://curlytales.com/wp-content/uploads/2019/04/mizo.jpg" alt="Reiek Tlang">
            <h3>Reiek Tlang Trekking - 1 Day</h3>
            <p>Enjoy breathtaking hilltop views and an easy trek to Reiek peak.</p>

            <div class="twobuttons">
              <a href="reiek"><button>Itinerary</button></a>
              <a href="book"> <button>Book now</button></a>
            </div>
        </div>
        <div class="package">
            <img src="https://www.nativeplanet.com/img/2021/09/phawngpuitlang-1630499363.jpg" alt="Phawngpui">
            <h3>Phawngpui Blue Mountain - 3 Days</h3>
            <p>Hike the highest peak in Mizoram and explore its diverse flora and fauna.</p>

            <div class="twobuttons">
              <a href="phawngpui"><button>Itinerary</button></a>
              <a href="book"> <button>Book now</button></a>
            </div>
        </div>
    </div>
</div>
<div class="content">
    <h1>Tour Packages for Sikkim</h1>
    <p>Experience the breathtaking landscapes, monasteries, and adventure activities in Sikkim.</p>

    <div class="packages">
        <div class="package">
            <img src="https://travelogyindia.b-cdn.net/storage/app/upload/tsomgo-lake-sikkim-lakes-in-northeast-india.png" alt="Tsomgo Lake">
            <h3>Tsomgo Lake & Nathula Pass - 2 Days</h3>
            <p>Enjoy the frozen beauty of Tsomgo Lake and visit Nathula Pass, a historic Indo-China border.</p>

            <div class="twobuttons">
              <a href="tsomgo"><button>Itinerary</button></a>
              <a href="book"> <button>Book now</button></a>
            </div>
        </div>
        <div class="package">
            <img src="https://thumbs.dreamstime.com/b/line-tibetan-monks-front-rumtek-monastery-welcoming-high-level-monk-near-gangtok-sikkim-india-97546058.jpg" alt="Rumtek Monastery">
            <h3>Gangtok & Rumtek Monastery - 3 Days</h3>
            <p>Explore the vibrant capital city, visit the famous Rumtek Monastery, and enjoy local cuisine.</p>

            <div class="twobuttons">
              <a href="gangtok"><button>Itinerary</button></a>
              <a href="book"> <button>Book now</button></a>
            </div>
        </div>
        <div class="package">
            <img src="https://assets.telegraphindia.com/telegraph/4dda21de-923a-47d2-97a8-a2237f613a6f.jpg" alt="Yuksom">
            <h3>Yuksom & Kanchenjunga Trek - 5 Days</h3>
            <p>Embark on a trekking journey to Kanchenjunga Base Camp, starting from Yuksom.</p>

            <div class="twobuttons">
              <a href="yuksom"><button>Itinerary</button></a>
              <a href="book"> <button>Book now</button></a>
            </div>
        </div>
        <div class="package">
            <img src="https://nomadicweekends.com/blog/wp-content/uploads/2019/02/1510389758_Beautiful_enchanting_Sikkim.jpg-1024x496.jpg" alt="Lachung Valley">
            <h3>Lachung & Yumthang Valley - 3 Days</h3>
            <p>Visit the picturesque Yumthang Valley, also known as the 'Valley of Flowers,' and explore Lachung.</p>

            <div class="twobuttons">
              <a href="lachung"><button>Itinerary</button></a>
              <a href="book"> <button>Book now</button></a>
            </div>
        </div>
    </div>
</div>
<div class="content">
    <h1>Tour Packages for Tripura</h1>
    <p>Discover Tripura’s rich history, royal heritage, and natural beauty.</p>

    <div class="packages">
        <div class="package">
            <img src="https://thumbs.dreamstime.com/b/maharaja-radha-kishore-manikya-debbarma-built-ujjayanta-palace-also-known-as-palace-kingdom-tripura-319790085.jpg" alt="Ujjayanta Palace">
            <h3>Agartala & Ujjayanta Palace - 2 Days</h3>
            <p>Visit the royal Ujjayanta Palace and explore the cultural richness of Agartala.</p>

            <div class="twobuttons">
              <a href="agartala"><button>Itinerary</button></a>
              <a href="book"> <button>Book now</button></a>
            </div>
        </div>
        <div class="package">
            <img src="https://img-cdn.thepublive.com/fit-in/1280x960/filters:format(webp)/30-stades/media/media_files/nE7cXHzVi1pInLvfqElG.jpg" alt="Neermahal Palace">
            <h3>Neermahal & Rudrasagar Lake - 1 Day</h3>
            <p>Explore the only water palace in Northeast India, located in the middle of Rudrasagar Lake.</p>

            <div class="twobuttons">
              <a href="neermahal"><button>Itinerary</button></a>
              <a href="book"> <button>Book now</button></a>
            </div>
        </div>
        <div class="package">
            <img src="https://media-cdn.tripadvisor.com/media/photo-s/15/7a/f1/a0/rock-carvings-of-unakoti.jpg" alt="Unakoti Rock Carvings">
            <h3>Unakoti Rock Carvings - 2 Days</h3>
            <p>Discover the ancient rock-cut sculptures and spiritual significance of Unakoti.</p>

            <div class="twobuttons">
              <a href="unakoti"><button>Itinerary</button></a>
              <a href="book"> <button>Book now</button></a>
            </div>
        </div>
        <div class="package">
            <img src="https://images.assettype.com/freepressjournal%2Fimport%2F2015%2F07%2Forange-festival-jampui-hbapeyzajblogspotcom.jpg?auto=format%2Ccompress&w=1200" alt="Jampui Hills">
            <h3>Jampui Hills & Orange Festival - 3 Days</h3>
            <p>Experience the breathtaking sunrise views and the famous Orange Festival in Jampui Hills.</p>

            <div class="twobuttons">
              <a href="jampui"><button>Itinerary</button></a>
              <a href="book"> <button>Book now</button></a>
            </div>
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
            </html>

