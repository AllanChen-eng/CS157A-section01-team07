<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
	background-color: lightblue;
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
.imgcontainer {
	text-align: left;
	margin: 15px 0 12px 0;
    max-width: 50%;
    max-height: 50%;
}
img.avatar {
	width: 20%;
	border-radius: 50%;
}

</style>
</head>
<body>
	<div class="topnav">
		<a class="active" href="login.jsp">Home</a> <a href="#about">About</a> <a
			href="#contact">Contact</a> 
		<div class="topnav2">
			<a class="active2" href="adminLogin.jsp"><img src="https://img.icons8.com/wired/16/000000/add-user-group-man-woman.png"/></a>
		</div>
    </div>
	<div class="imgcontainer">
		<img src="plane.jpg" alt="Avatar" class="avatar">
	</div>

    </br>
  </div>
</div>
</body>
</html>