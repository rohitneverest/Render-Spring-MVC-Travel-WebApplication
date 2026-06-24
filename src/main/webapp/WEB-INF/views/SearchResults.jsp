<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Results</title>

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">

    <link rel="stylesheet" href="/resources/css/search.css">
    <link rel="stylesheet" href="/resources/css/footer.css">
</head>

<body>

<!-- ================= NAVBAR ================= -->
<div class="boss">
<header>

    <a href="/" class="logo">
        <span>T</span>ravel<span>E</span>ase
    </a>

    <form class="search-box" action="/search" method="get">
        <input type="text"
               name="keyword"
               value="${keyword}"
               placeholder="Search destinations, tours...">

        <button type="submit">
            <i class="fas fa-search"></i>
        </button>
    </form>

    <nav class="navbar">
        <a href="/">Home</a>
    </nav>

</header>

<!-- ================= SEARCH RESULTS ================= -->

<div class="container">

    <div class="header">
        <h2>
            Results for
            <span class="keyword">${keyword}</span>
        </h2>
    </div>

    <c:if test="${empty results}">
        <div class="no-results">
            No results found for your search.
        </div>
    </c:if>

    <c:if test="${not empty results}">
        <div class="results">

            <c:forEach items="${results}" var="tour">

                <a href="/itinerary/${tour.slug}"
                   style="text-decoration:none; color:inherit;">

                    <div class="result-card">

                        <div class="title">
                            ${tour.name}
                        </div>

                        <div class="desc">
                            ${tour.description}
                        </div>

                    </div>

                </a>

            </c:forEach>

        </div>
    </c:if>

    <!-- ================= PAGINATION ================= -->

    <div class="pagination">

        <c:if test="${currentPage > 1}">
            <a href="/search?keyword=${keyword}&page=${currentPage - 1}">
                Prev
            </a>
        </c:if>

        <c:forEach begin="1" end="${totalPages}" var="i">

            <c:choose>

                <c:when test="${i == currentPage}">
                    <span class="active">${i}</span>
                </c:when>

                <c:otherwise>
                    <a href="/search?keyword=${keyword}&page=${i}">
                        ${i}
                    </a>
                </c:otherwise>

            </c:choose>

        </c:forEach>

        <c:if test="${currentPage < totalPages}">
            <a href="/search?keyword=${keyword}&page=${currentPage + 1}">
                Next
            </a>
        </c:if>

    </div>

</div>

<!-- ================= FOOTER ================= -->

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
            <h3>Quick Links</h3>

            <a href="/">Home</a>
            <a href="/packages">Packages</a>
            <a href="/gallery">Gallery</a>
            <a href="/contact">Contact</a>
        </div>

        <div class="footer-column">
            <h3>Contact</h3>

            <p>
                <i class="fas fa-envelope"></i>
                travelease353@gmail.com
            </p>

            <p>
                <i class="fas fa-map-marker-alt"></i>
                Shillong, Meghalaya
            </p>
        </div>

    </div>

    <div class="social-icons">

        <a href="https://www.linkedin.com/in/rohit200byte/"
           target="_blank">
            <i class="fab fa-linkedin-in"></i>
        </a>

        <a href="/">
            <i class="fab fa-instagram"></i>
        </a>

        <a href="/">
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

</div>

</body>
</html>