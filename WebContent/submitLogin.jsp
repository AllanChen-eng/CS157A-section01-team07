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
			
			
			String username = request.getParameter("username");
			String password = request.getParameter("password");

			PreparedStatement prepStmt = con.prepareStatement("SELECT * FROM cs157aproject.users WHERE username = ? AND password = ?");
			prepStmt.setString(1, username);
			prepStmt.setString(2, password);

			ResultSet rs = prepStmt.executeQuery();

			if (rs.next()) {
				String redirectURL = "http://localhost:8080/CS157A-section01-team07/index.jsp";
				response.sendRedirect(redirectURL);
			} 
			else {
				request.setAttribute("error", "Invalid login");
				request.getRequestDispatcher("/login.jsp").forward(request, response);
			}
			
			con.close();
			
			// username = test password = test
		    
		} catch(SQLException e) { 
			out.println("SQLExceptioncaught: " +e.getMessage()); 
		} 
	%>
</body>
</html>