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
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
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

.container {
  text-align: center;
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
		<a class="active" href="#home">Home</a> <a href="#about">About</a> <a
			href="#contact">Contact</a>
  </div>
  <div class="imgcontainer">
    <img src="plane.jpg" alt="Avatar" class="avatar">
  </div>

  <div class="container">
    <label for="uname"><b>Username</b></label>
    <div>
    <input type="text" placeholder="Enter Username" name="uname" required>
    </div>
	<div>
    <label for="psw"><b>Password</b></label>
    <div>
    <input type="password" placeholder="Enter Password" name="psw" required>
    </div>
    <button type="submit">Login</button>
    <div>
    <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
    </label>
    </div>
  </div>
</div>
  <div class="container" style="background-color: lightblue">
    <span class="psw">Forgot <a href="#">password?</a></span>
  </div>
</form>
</body>
</html>