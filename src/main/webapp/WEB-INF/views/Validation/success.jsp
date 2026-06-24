<%@page language="java" %>



<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="/resources/css/success.css">

    <title>Registration Successful</title>

</head>
<body>
    <div class="container">
        <h2>Registration Successful!</h2>
        <p>Welcome, <strong>${name}</strong>!</p>
        <a href="/auth/signin">Login</a>
         <p>OR</p>
        <a href="/">Go to Home</a>
    </div>
</body>
</html>
