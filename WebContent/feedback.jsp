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

.topnav2 input[type=text] {
	padding: 6px;
	margin-top: 8px;
	font-size: 17px;
	border: none;
}


.dropdownbtn {
	float: right;
	background-color: #3498DB;
	color: white;
	padding: 16px;
	font-size: 16px;
	border: none;
	cursor: pointer;
}

.dropdownbtn:hover, .dropdownbtn:focus {
	background-color: #2980B9;
}

.dropdown {
	float: right;
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: right;
	background-color: #f1f1f1;
	min-width: 160px;
	overflow: auto;
}

.dropdown-content a {
	float: left;
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.dropdown a:hover {
	float: right;
	background-color: #ddd;
}

.show {
	float: right;
	display: block;
}

.search-container {
	text-align: center;
	padding-top: 15px;
}

.search-container #Depart-bar {
	display: inline-block;
	width: 250px;
	height: 50px;
	border-radius: 15px;
	border: 2px solid #000000;
}

.search-container #Arrive-bar {
	display: inline-block;
	width: 250px;
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
.itemconfiguration
{
		height:100%;
		width:100%;
		/* background-color:#CCC; */		
        overflow-y:scroll;
		float:left;
		position:relative;
		margin-left:-5px;
}
.left_contentlist{
width:100%;
float:left;
padding:0 0 0 5px;
position:relative;
float:left;
border-right: 1px #f8f7f3 solid;
/* background-image:url(images/bubble.png); */
/* background-color: black; */
}
</style>
</head>
<% String table = (String) request.getAttribute("table"); %>
<body>

	<div class="topnav">
		<a class="active" href="homepage.jsp">Home</a> <a href="about.jsp">About</a>
		<a href="#contact">Contact</a>
		<div class="topnav2">
			<button onclick="homepageDropdown()" class="dropdownbtn"><img
				src="https://img.icons8.com/dusk/16/000000/add-user-group-man-woman.png" /></button>
		</div>
	</div>
	
	<div id="homeDropdown" class=dropdown-content>
		<a class="active2" href="login.jsp">Logout</a>
	</div>
	<div id="homeDropdown" class=dropdown-content>
		<a class="active2" href="Feedback.jsp">Logout</a>
    </div>
    
	<script>
		function homepageDropdown() {
			document.getElementById("homeDropdown").classList.toggle("show");
		}

		window.onclick = function(event) {
			if (!event.target.matches('.dropdownbtn')) {
				var loginDropdownContent = document.getElementsByClassName("dropdown-content");
				var i;
				for (i = 0; i < 1; i++) {
					var showDropdown = loginDropdownContent[i];
					if (showDropdown.classList.contains('show')) {
						showDropdown.classList.remove('show');
					}
				}
			}
		}
	</script>

	<div class="logo">
		<p>Rate your Flight</p>
	</div>
    <div class="left_contentlist">
          <div class="itemconfiguration" style="padding-left: 30px;">
           <%= table %>
            </div>
            </div>

</body>
</html>
