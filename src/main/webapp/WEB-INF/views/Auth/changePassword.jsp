<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
<title>Change Password</title>

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

.error{
color:red;
margin-bottom:15px;
}

.success{
color:green;
margin-bottom:15px;
}

</style>
</head>

<body>

<div class="container">

<h2>Change Password</h2>

<p class="error">${error}</p>
<p class="success">${success}</p>

<form action="/auth/change-password" method="post">

<label>Old Password</label>
<input type="password" name="oldPassword">

<label>New Password</label>
<input type="password" name="newPassword">

<button type="submit">
Update Password
</button>

</form>

</div>

</body>
</html>