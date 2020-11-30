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


  td{
  padding: 5px;
  margin: 10px;
  }

  /* images are 105px by 105 px */ 
</style>
</head>
<body>
	<div class="topnav">
		<a href="login.jsp">Home</a> <a class="active" href= about.html>About</a> <a
			href="#contact">Contact</a> 
		<div class="topnav2">
			<a class="active2" href="adminLogin.jsp"><img src="https://img.icons8.com/dusk/16/000000/add-user-group-man-woman.png"/></a>
		</div>
    </div>

    
    <table cellspacing="0" id="table1" style="width:100%">
        <tr>
          <h1> Reserve a Plane Ticket </h1>
        </tr>
        <tr >
            <td style= "text-align: left;"><strong>Economy Class</strong></td>
            <td style="text-align: left;"><strong> price</strong></td>
			<td> </td>
        </tr>
        <tr>
          <td style="text-align: left;"><strong>Business Class</strong></td>
		  <td style="text-align: left;">price</td>
		  <td> </td>

        </tr>
        <tr>
          <td style="text-align: left;"><strong> First Class</strong></td>
          <td style="text-align: left;">price</td>
		<td> </td>
        </tr>

      </table>

	
</body>
</html>