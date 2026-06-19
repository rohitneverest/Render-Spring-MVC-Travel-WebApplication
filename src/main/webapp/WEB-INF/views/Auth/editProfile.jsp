<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<title>Edit Profile</title>

<style>

body{
background:#f4f7fc;
font-family:Poppins,sans-serif;
}

.container{
max-width:500px;
margin:80px auto;
background:white;
padding:30px;
border-radius:15px;
box-shadow:0 10px 25px rgba(0,0,0,.08);
}

input{
width:100%;
padding:12px;
margin-top:10px;
margin-bottom:20px;
border:1px solid #ddd;
border-radius:8px;
}

button{
width:100%;
padding:12px;
background:#007bff;
color:white;
border:none;
border-radius:8px;
cursor:pointer;
}

</style>
</head>

<body>


<div class="container">

<h2>Edit Profile</h2>

<form action="/auth/edit-profile" method="post">

<label>Email</label>

<input type="email"
       name="newEmail"
       value="${user.username}">

<button type="submit">
Update Profile
</button>

</form>

</div>

</body>
</html>