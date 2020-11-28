package login_View;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import login_Model.Login;

public class login_Person {
	String user = "root";
	String password = "password"; // put in your password to the MySQL Workbench database

	public boolean login(Login log) throws ClassNotFoundException {

		String login_Vals = "select * FROM users WHERE username= ? AND password= ?;";

		boolean res = false;
		Class.forName("com.mysql.jdbc.Driver");
		try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/flightcatch?useSSL=false",
				user, password);

				PreparedStatement ps = connection.prepareStatement(login_Vals)) {
			ps.setString(1, Login.getUsername());
			ps.setString(2, Login.getPassword());

			System.out.println(ps);
			ResultSet rs = ps.executeQuery();
			res = rs.next();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return res;
	}
}
