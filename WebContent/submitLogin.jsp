<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql. *" %> 
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<% 
		String db= "cs157a"; //or root
		String user = "root"; // assumes database name is the same as username
		try {
			java.sql.Connection con; 
			Class.forName("com.mysql.jdbc.Driver"); 
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cs157a", "root", "password"); 
			out.println(db+ " database successfully opened."); 
			Statement stmt=con.createStatement();
			
			
			String username = request.getParameter("usernamen");
			String password = request.getParameter("password");

			ResultSet rs = stmt.executeQuery("select * from cs157aproject.users where username = '" + username + "' and password = '" + password + "';");
			if (rs.next()) {
				String redirectURL = "http://localhost:8080/CS157A-section01-team07/index.jsp";
			} 
			else {
				out.println("Invalid login");
			}
			
			con.close();
			
			String redirectURL = "http://localhost:8080/CS157A-section01-team07/index.jsp";
			// response.setHeader("Location", "http://localhost:8080/cs157a_hw1/hw1.jsp");
		    response.sendRedirect(redirectURL);
		} catch(SQLException e) { 
			out.println("SQLExceptioncaught: " +e.getMessage()); 
		} 
	%>
</body>
</html>