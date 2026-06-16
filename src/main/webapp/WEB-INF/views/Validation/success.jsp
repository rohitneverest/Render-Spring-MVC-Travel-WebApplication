<%@page language="java" %>



<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">

    <title>Registration Successful</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin-top: 50px;
        }
        .container {
            padding: 20px;
            border: 1px solid #ccc;
            display: inline-block;
            border-radius: 10px;
            box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.1);
        }
        button {
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #28a745;
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 5px;
        }
        button:hover {
            background-color: #218838;
        }
        a{
        text-decoration:none;
        color:white;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Registration Successful!</h2>
        <p>Welcome, <strong>${name}</strong>!</p>
        <button ><a href="/">Go to Home</a></button>
    </div>
</body>
</html>
