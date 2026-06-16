<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tourism and Traveling Management</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">


    <link rel="stylesheet" href="/resources/css/navbar.css">
    <link rel="stylesheet" href="/resources/css/profile.css">
    <link rel="stylesheet" href="/resources/css/footer.css">


<style>
/* Profile page home button */

.home-btn{
    display:inline-flex;
    align-items:center;
    justify-content:center;

    padding:7px 16px;
    border-radius:10px;

    background:linear-gradient(135deg,#007bff,#0056d6);
    color:white !important;


    font-weight:600;


}

.home-btn:hover{
    background:linear-gradient(135deg,#1f8fff,#0062ff);

    box-shadow:0 10px 24px rgba(0,123,255,.45);
    color:white !important;
}
</style>


</head>
<body>

<section class="navbar-section">
     <header>
            <div id="menu-bar" class="fas fa-bars"></div>
            <div>
            <a href="/" class="logo"><span>T</span>ravel<span>E</span>ase</a>
            </div>
            <div>
           <nav class="navbar">
               <a href="/" class="home-btn"><b>Home</b></a>
           </nav>
           </div>


     </header>


     <script src="/resources/js/script.js"></script>
</section>


<div class="profile-container">

    <!-- Header -->
    <div class="profile-header">

        <div class="avatar">
            <i class="fas fa-user"></i>
        </div>

        <div class="user-info">
            <h1>Welcome Traveler!</h1>
            <p>${sessionScope.email}</p>

            <span class="badge">
                <i class="fas fa-plane"></i>
                Travel Explorer
            </span>
        </div>

    </div>



    <!-- My Bookings -->

    <div class="section">

        <h2 class="section-title">
            <i class="fas fa-ticket-alt"></i>
            My Bookings
        </h2>


    </div>



    <!-- Account Settings -->

    <div class="section">

        <h2 class="section-title">
            <i class="fas fa-cog"></i>
            Account Settings
        </h2>

       <a href="/auth/edit-profile" class="btn edit-btn">
           Edit Profile
       </a>

       <a href="/auth/change-password" class="btn edit-btn">
           Change Password
       </a>

    </div>

    <!-- Travel Quote -->

    <div class="section">

        <h2 class="section-title">
            <i class="fas fa-globe"></i>
            Travel Inspiration
        </h2>

        <p class="quote">
            "Travel is the only thing you buy that makes you richer."
        </p>

    </div>

    <!-- Logout -->

    <div class="section" style="text-align:center">

        <a href="/auth/logout"
           class="btn logout-btn">

            <i class="fas fa-sign-out-alt"></i>
            Logout

        </a>

    </div>

</div>

</body>
</html>