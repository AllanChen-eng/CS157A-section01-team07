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

.search-container {
	text-align: center;
	padding-top: 15px;
}

.search-container #search-bar {
	display: inline-block;
	width: 350px;
	height: 50px;
	border-radius: 15px;
	border: 2px solid #000000;
}

.search-container #search-button {
	height: 50px;
	width: 75px;
	border-radius: 15px;
	border: 2px solid #000000;
}

.logo {
	text-align: center;
	padding-top: 100px;
	font-size: 50px;
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
		<p>FlightCatch</p>
	</div>

	<div class="search-container">
		<form action="/action_page.php">
			<input id="search-bar" type="text" placeholder="Search.."
				name="search">
			<button id="search-button" type="submit">
				<i class="fa fa-search"></i>
			</button>
		</form>
	</div>

</body>
</html>
