<%@page language="java" %>


<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Failed</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
           <link rel="stylesheet" href="/resources/css/navbar.css">
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
            background-color: #dc3545;
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 5px;
        }
        button:hover {
            background-color: #c82333;
        }
        a{
            text-decoration:none;
            color:white;

        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Already Registered!</h2>
        <p>Your ${email}, already exist.</p>
        <a href="login"><button>Login</button></a>
    </div>
</body>
</html>




