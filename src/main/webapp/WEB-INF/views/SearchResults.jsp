<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Search Results</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">


        <link rel="stylesheet" href="/resources/css/navbar.css">

    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Arial, sans-serif;
            background: linear-gradient(135deg, #eef2f7, #f7f9fc);
            color: #1f2937;
        }

        /* ===== TOP SEARCH BAR ===== */
        .top-bar {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255,255,255,0.75);
            backdrop-filter: blur(12px);
            border-bottom: 1px solid #e5e7eb;
            padding: 18px;
        }

        .search-box {
            max-width: 750px;
            margin: auto;
            display: flex;
            gap: 10px;
        }

        .search-box input {
            flex: 1;
            padding: 14px 16px;
            border-radius: 12px;
            border: 1px solid #d1d5db;
            font-size: 15px;
            outline: none;
            background: white;
            transition: 0.2s;
        }

        .search-box input:focus {
            border-color: #6366f1;
            box-shadow: 0 0 0 3px rgba(99,102,241,0.15);
        }

        .search-box button {
            padding: 12px 18px;
            border: none;
            border-radius: 12px;
            background: #6366f1;
            color: white;
            cursor: pointer;
            font-weight: 500;
        }

        /* ===== CONTAINER ===== */
        .container {
            max-width: 850px;
            margin: 30px auto;
            padding: 0 20px;
        }

        /* ===== HEADER ===== */
        .header {
            margin-bottom: 20px;
        }

        .header h2 {
            font-size: 22px;
            font-weight: 600;
            margin: 0;
        }

        .keyword {
            color: #6366f1;
        }

        /* ===== RESULTS LIST ===== */
        .results {
            display: flex;
            flex-direction: column;
            gap: 14px;
        }

        .result-card {
            background: white;
            border-radius: 14px;
            padding: 18px 20px;
            box-shadow: 0 6px 18px rgba(0,0,0,0.05);
            transition: 0.25s ease;
            border: 1px solid #f1f5f9;
        }

        .result-card:hover {
            transform: translateY(-3px);
            box-shadow: 0 10px 25px rgba(0,0,0,0.08);
        }

        .title {
            font-size: 18px;
            font-weight: 600;
            color: #4f46e5;
            cursor: pointer;
            margin-bottom: 6px;
        }

        .title:hover {
            text-decoration: underline;
        }

        .url {
            font-size: 13px;
            color: #16a34a;
            margin-bottom: 8px;
        }

        .desc {
            font-size: 14px;
            color: #4b5563;
            line-height: 1.5;
        }

        /* ===== NO RESULTS ===== */
        .no-results {
            background: #fff1f2;
            color: #be123c;
            padding: 14px;
            border-radius: 12px;
            font-weight: 500;
        }

        /* ===== PAGINATION ===== */
        .pagination {
            margin-top: 30px;
            display: flex;
            justify-content: center;
            gap: 8px;
            flex-wrap: wrap;
        }

        .pagination a,
        .pagination span {
            padding: 8px 14px;
            border-radius: 10px;
            border: 1px solid #e5e7eb;
            text-decoration: none;
            color: #374151;
            background: white;
            transition: 0.2s;
        }

        .pagination a:hover {
            background: #6366f1;
            color: white;
            border-color: #6366f1;
        }

        .active {
            background: #6366f1;
            color: white !important;
            border-color: #6366f1;
        }

    </style>
</head>

<body>

<!-- ===== SEARCH BAR ===== -->
<div class="top-bar">
    <form class="search-box" action="/search" method="get">
        <input type="text" name="keyword" value="${keyword}" placeholder="Search destinations, tours...">
        <button type="submit">Search</button>
    </form>
</div>

<!-- ===== RESULTS ===== -->
<div class="container">

    <div class="header">
        <h2>Results for <span class="keyword">${keyword}</span></h2>
    </div>

    <c:if test="${empty results}">
        <div class="no-results">No results found for your search.</div>
    </c:if>

    <c:if test="${not empty results}">
        <div class="results">
            <c:forEach items="${results}" var="tour">

                <a href="/tour/details/${tour.id}" style="text-decoration:none;">
                    <div class="result-card">

                        <div class="title">${tour.name}</div>

                        <div class="url">
                            tourapp.app › explore › ${tour.name}
                        </div>

                        <div class="desc">
                            ${tour.description}
                        </div>

                    </div>
                </a>

            </c:forEach>
        </div>
    </c:if>

    <!-- ===== PAGINATION ===== -->
    <div class="pagination">

        <c:if test="${currentPage > 1}">
            <a href="/search?keyword=${keyword}&page=${currentPage - 1}">Prev</a>
        </c:if>

        <c:forEach begin="1" end="${totalPages}" var="i">
            <c:choose>
                <c:when test="${i == currentPage}">
                    <span class="active">${i}</span>
                </c:when>
                <c:otherwise>
                    <a href="/search?keyword=${keyword}&page=${i}">${i}</a>
                </c:otherwise>
            </c:choose>
        </c:forEach>

        <c:if test="${currentPage < totalPages}">
            <a href="/search?keyword=${keyword}&page=${currentPage + 1}">Next</a>
        </c:if>

    </div>

</div>

</body>
</html>