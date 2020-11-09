<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
* {
	box-sizing: border-box;
}

body {
	background-color: lightblue;
}

body {
	margin: 0;
	font-family: Arial, Helvetica, sans-serif;
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

.container {
	text-align: center;
	padding-top: 15px;
}

.container #emailBar {
	display: inline-block;
	width: 200px;
	height: 50px;
	border-radius: 15px;
	border: 2px solid #000000;
}

.container #usernameBar {
	display: inline-block;
	width: 200px;
	height: 50px;
	border-radius: 15px;
	border: 2px solid #000000;
}

.container #passwordBar {
	display: inline-block;
	width: 200px;
	height: 50px;
	border-radius: 15px;
	border: 2px solid #000000;
}

.firstName-container {
	text-align: center;
	padding-top: 15px;
}

.firstName-container #first_name_bar {
	display: inline-block;
	width: 200px;
	height: 50px;
	border-radius: 15px;
	border: 2px solid #000000;
}

.lastName-container {
	text-align: center;
	padding-top: 15px;
}

.lastName-container #last_name_bar {
	display: inline-block;
	width: 200px;
	height: 50px;
	border-radius: 15px;
	border: 2px solid #000000;
}

button {
	text-align: center;
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

.logo {
	text-align: left;
	padding-top: 10px;
	font-size: 40px;
	font-weight: bold;
}
</style>
</head>
<body>

	<div class="topnav">
		<a class="active" href="#home">Home</a> <a href="#about">About</a> <a
			href="#contact">Contact</a>
	</div>

	<div class="logo">
		<p>Create an Account</p>
	</div>

	<div class="firstName-container">
		<label for="first_Name"><b>First Name</b></label>
		<div>
			<input id="first_name_bar" type="text" placeholder="Enter First Name"
				name="firstName" required>
		</div>
	</div>

	<div class="lastName-container">
		<label for="first_Name"><b>Last Name</b></label>
		<div>
			<input id="last_name_bar" type="text" placeholder="Enter Last Name"
				name="lastName" required>
		</div>
	</div>

	<div class="container">
		<label for="email"><b>Email</b></label>
		<div>
			<input id="emailBar" type="text" placeholder="Enter Email"
				name="email" required>
		</div>
	</div>

	<div class="container">
		<label for="username"><b>Username</b></label>
		<div>
			<input id="usernameBar" type="text" placeholder="Enter Username"
				name="username" required>
		</div>
	</div>

	<div class="container">
		<label for="passwd"><b>Password</b></label>
		<div>
			<input id="passwordBar" type="password" placeholder="Enter Password"
				name="passwd" required>
		</div>
	</div>

	<div class="container">
		<button type="submit">Create Account</button>
	</div>

</body>
</html>
