<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
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

body {
	background-color: lightblue;
}

table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
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
    <h1> Confirmation</h1>
 
<%= table %>
    
	
</body>
</html>