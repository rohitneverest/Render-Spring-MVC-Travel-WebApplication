<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Search Results</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f7f9fc;
            margin: 0;
            padding: 40px;
            color: #333;
        }

        .container {
            max-width: 800px;
            margin: auto;
            background: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.1);
        }

        h2 {
            margin-bottom: 20px;
            font-size: 26px;
            color: #0077cc;
            text-align: center;
        }

        .no-results {
            text-align: center;
            background: #ffe7e7;
            padding: 15px;
            border-radius: 8px;
            color: #cc0000;
            font-weight: bold;
        }

        ul {
            list-style: none;
            padding: 0;
        }

        li {
            background: #f0f6ff;
            padding: 20px;
            margin-bottom: 12px;
            border-radius: 10px;
            border-left: 6px solid #007bff;
            transition: 0.3s ease;
        }

        li:hover {
            background: #e1efff;
        }

        .tour-name {
            font-size: 20px;
            font-weight: bold;
            color: #005bb5;
        }

        .tour-description {
            margin-top: 6px;
            font-size: 15px;
            color: #555;
        }
    </style>
</head>

<body>

<div class="container">

    <h2>Search Results for: "${keyword}"</h2>

    <c:if test="${empty results}">
        <p class="no-results">No results found.</p>
    </c:if>

    <c:if test="${not empty results}">
        <ul>
            <c:forEach items="${results}" var="tour">
                <li>
                    <div class="tour-name">${tour.name}</div>
                    <div class="tour-description">${tour.description}</div>
                </li>
            </c:forEach>
        </ul>
    </c:if>

</div>

</body>
</html>
