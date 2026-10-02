<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Forgot Password</title>

<style>
body {
font-family: Arial, sans-serif;
background-color: #f2f2f2;
display: flex;
justify-content: center;
align-items: center;
height: 100vh;
margin: 0;
}

.forgot-container {
width: 400px;
background-color: white;
padding: 30px;
border-radius: 10px;
box-shadow: 0 0 10px gray;
}

h2 {
text-align: center;
margin-bottom: 10px;
}

p {
text-align: center;
color: gray;
margin-bottom: 25px;
}

input {
width: 100%;
padding: 12px;
margin-bottom: 15px;
box-sizing: border-box;
border: 1px solid #ccc;
border-radius: 5px;
}

button {
width: 100%;
padding: 12px;
background-color: #007bff;
color: white;
border: none;
border-radius: 5px;
cursor: pointer;
font-size: 16px;
}

button:hover {
background-color: #0056b3;
}

.login-link {
text-align: center;
margin-top: 20px;
}

.login-link a {
color: #007bff;
text-decoration: none;
}
</style>
</head>

<body>
	<% if(request.getAttribute("fail")!=null){
	%>
		<%=request.getAttribute("fail")%>
	<% 	
	}
	%>
<div class="forgot-container">

<h2>Forgot Password?</h2>

<p>Enter your details to reset your password</p>

<form action="forgot" method="post">

<input type="email"
name="email"
placeholder="Enter Your Email"
required>

<input type="tel"
name="phone"
placeholder="Enter Your Phone Number"
required>

<input type="password"
name="pwd"
placeholder="Enter Your New Password"
required>

<input type="password"
name="conf"
placeholder="Confirm Your Password"
required>

<button type="submit" value="forgot">Reset Password</button>

</form>

<div class="login-link">
<a href="Login.jsp">Back to Login</a>
</div>

</div>

</body>

</html>