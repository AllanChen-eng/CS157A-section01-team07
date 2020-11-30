<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
input[type=text], input[type=password] {
	width: 20%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

body {
	background-color: lightblue;
}

button {
	display: inline-block;
	border-radius: 15px;
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: 2px solid #000000;
	cursor: pointer;
	width: 20%;
}

button:hover {
	opacity: 0.8;
}

.topnav {
	overflow: hidden;
	background-color: #e9e9e9;
}

.topnav a {
	float: left;
	display: block;
	color: black;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
}

.topnav a:hover {
	background-color: #ddd;
	color: black;
}

.topnav a.active {
	background-color: #2196F3;
	color: white;
}

.topnav input[type=text] {
	padding: 6px;
	margin-top: 8px;
	font-size: 17px;
	border: none;
}

.topnav2 {
	overflow: hidden;
	background-color: #e9e9e9;
}

.topnav2 a {
	float: right;
	display: block;
	color: black;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
}

.topnav2 a:hover {
	background-color: #ddd;
	color: black;
}

.topnav2 a.active2 {
	background-color: #2196F3;
	color: white;
}

.container {
	text-align: center;
}

.container #usernameBar{
	border-radius: 15px;
	border: 2px solid #000000;
}

.container #passwordBar{
	border-radius: 15px;
	border: 2px solid #000000;
}

.cancelbtn {
	width: auto;
	padding: 10px 18px;
	background-color: #f44336;
}

.imgcontainer {
	text-align: center;
	margin: 24px 0 12px 0;
}

img.avatar {
	width: 20%;
	border-radius: 50%;
}

.container {
	padding: 16px;
}

.secondContainer {
	text-align: center;
	padding: 2px
}

.logo {
	text-align: center;
	padding-top: 10px;
	font-size: 50px;
	font-weight: bold;
}

span.psw {
	float: center;
	padding-top: 16px;
}

@media screen and (max-width: 300px) {
	span.psw {
		display: block;
		float: none;
	}
	.cancelbtn {
		width: 100%;
	}
}
</style>
</head>
<body>
	<div class="topnav">
		<a class="active" href="login.jsp">Home</a> <a href="about.jsp">About</a> <a
			href="#contact">Contact</a> <a href="homepage.jsp">Search</a>
		<div class="topnav2">
			<a class="active2" href="adminLogin.jsp"><img src="https://img.icons8.com/wired/16/000000/add-user-group-man-woman.png"/></a>
		</div>
	</div>
	
	<div class="logo">
		<p>FlightCatch</p>
	</div>
	
	<div class="imgcontainer">
		<img src="plane.jpg" alt="Avatar" class="avatar">
	</div>
	
	<form action= "<%= request.getContextPath() %>/login" method="post">
	<div class="container">
		<label for="username"><b>Username</b></label>
		<div>
			<input id="usernameBar" type="text" placeholder="Enter Username" name="username" required>
		</div>
		<div>
			<label for="password"><b>Password</b></label>
			<div>
				<input id="passwordBar" type="password" placeholder="Enter Password" name="password"
					required>
			</div>
			<button type="submit">
				Login
			</button>
			<div>
				<label> <input type="checkbox" checked="checked"
					name="remember"> Remember me
				</label>
			</div>
			<div>
				<span style="color: red">${error}</span>
			</div>
		</div>
	</div>
	</form>
	
	<form action= "<%= request.getContextPath() %>/forgotPassword2" method="post">
	<div class="secondContainer" style="background-color: lightblue">
		<span class="password">Forgot <a href="forgotPassword.jsp">password?</a></span>
	</div>
	</form>
	
	<form action= "<%= request.getContextPath() %>/login2" method="post">
	<div class="secondContainer">
		<span class="newUser">Don't have an account? <a href="createAnAccount.jsp">Create an account</a></span>
	</div>
	</form>
</body>
</html>