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

.topnav #reservationsBtn {
	float: left;
	display: block;
	color: black;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
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

.alertBox {
	padding: 300px;
	float: right;
}

.alert>.start-icon {
    margin-right: 0;
    min-width: 20px;
    text-align: center;
}

.alert>.start-icon {
    margin-right: 5px;
}

.alert-simple.alert-success
{
  border: 1px solid rgba(36, 241, 6, 0.46);
    background-color: rgba(7, 149, 66, 0.12156862745098039);
    box-shadow: 0px 0px 2px #259c08;
    color: #0ad406;
  text-shadow: 2px 1px #00040a;
  transition:0.5s;
  cursor:pointer;
}
.alert-success:hover{
  background-color: rgba(7, 149, 66, 0.35);
  transition:0.5s;
}

.alert-simple.alert-info
{
  border: 1px solid rgba(6, 44, 241, 0.46);
    background-color: rgba(7, 73, 149, 0.12156862745098039);
    box-shadow: 0px 0px 2px #0396ff;
    color: #0396ff;
  text-shadow: 2px 1px #00040a;
  transition:0.5s;
  cursor:pointer;
}

.alert-info:hover
{
  background-color: rgba(7, 73, 149, 0.35);
  transition:0.5s;
}

.blue-cross
{
  font-size: 18px;
    color: #0bd2ff;
    text-shadow: none;
}

.alert-warning:hover{
  background-color: rgba(220, 128, 1, 0.33);
  transition:0.5s;
}

.warning
{
      font-size: 18px;
    color: #ffb40b;
    text-shadow: none;
}

.alert-simple.alert-danger
{
  border: 1px solid rgba(241, 6, 6, 0.81);
    background-color: rgba(220, 17, 1, 0.16);
    box-shadow: 0px 0px 2px #ff0303;
    color: #ff0303;
    text-shadow: 2px 1px #00040a;
  transition:0.5s;
  cursor:pointer;
}

.alert-danger:hover
{
     background-color: rgba(220, 17, 1, 0.33);
  transition:0.5s;
}

.danger
{
      font-size: 18px;
    color: #ff0303;
    text-shadow: none;
}

.alert-simple.alert-primary
{
  border: 1px solid rgba(6, 241, 226, 0.81);
    background-color: rgba(1, 204, 220, 0.16);
    box-shadow: 0px 0px 2px #03fff5;
    color: #03d0ff;
    text-shadow: 2px 1px #00040a;
  transition:0.5s;
  cursor:pointer;
}

.alert-primary:hover{
  background-color: rgba(1, 204, 220, 0.33);
   transition:0.5s;
}

.alertprimary
{
      font-size: 18px;
    color: #03d0ff;
    text-shadow: none;
}


</style>
</head>

<body>

	<div class="topnav">
		<a class="active" href="homepage.jsp">Home</a> <a href="about.jsp">About</a>
		<a href="contact.jsp">Contact</a> 
		<form class="formclass" action="reservations" method="GET">
			<button id="reservationsBtn" type="submit">Reservations</button>
		</form>
				<form class="formclass" action="feedbackTable" method="GET">
			<button id="reservationsBtn" type="submit">Feedback</button>
		</form>
				<form class="formclass" action="settingsAction" method="GET">
			<a href="settings.jsp"> Settings</a>
		</form>
		<div class="topnav2">
			<button onclick="homepageDropdown()" class="dropdownbtn"><img
				src="https://img.icons8.com/dusk/16/000000/add-user-group-man-woman.png" /></button>
		</div>
	</div>
	
	<div id="homeDropdown" class=dropdown-content>
		<a class="active2" href="login.jsp">Logout</a>
	</div>
	<div id="homeDropdown1" class=dropdown-content>
		<a class="active2" href="feedback.jsp">Rate your Flight</a>
	</div>
	<script>
		function homepageDropdown() {
			document.getElementById("homeDropdown").classList.toggle("show");
			document.getElementById("homeDropdown1").classList.toggle("show");
		}

		window.onclick = function(event) {
			if (!event.target.matches('.dropdownbtn')) {
				var loginDropdownContent = document.getElementsByClassName("dropdown-content");
				var i;
				for (i = 0; i < 4; i++) {
					var showDropdown = loginDropdownContent[i];
					if (showDropdown.classList.contains('show')) {
						showDropdown.classList.remove('show');
					}
				}
			}
		}
	</script>

	<div class="logo">
		<p>FlightCatch Homepage</p>
	</div>

	<div class="search-container">

		<form action="search" method="GET">
			<input id="Depart-bar" type="text" name="departVal" placeholder="Depart"> 
			<input id="Arrive-bar" type="text" name="arriveVal" placeholder="Arrive">
			<button id="search-button" type="submit">
				<i class="fa fa-search"></i>
			</button>
		</form>
	</div>
	
	<div class="alertBox">
		<div class="col-sm-12">
        	<div class="alert fade alert-simple alert-info alert-dismissible text-left font__family-montserrat font__size-16 font__weight-light brk-library-rendered rendered show" role="alert" data-brk-library="component__alert">
          	<button type="button" class="close font__size-18" data-dismiss="alert">
										<span aria-hidden="true">
											<i class="fa fa-times blue-cross"></i>
										</span>
										<span class="sr-only">Close</span>
									</button>
          	<i class="start-icon  fa fa-info-circle faa-shake animated"></i>
          	<strong class="font__weight-semibold">Heads up!</strong> This alert needs your attention, but it's not super important.
        	</div>
     	</div>
     </div>

</body>
</html>
