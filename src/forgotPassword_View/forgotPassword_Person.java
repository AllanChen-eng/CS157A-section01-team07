package forgotPassword_View;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import forgotPassword_Model.forgotPassword;

public class forgotPassword_Person {
	String user = "root";
	String password = "password"; // put in your password to the MySQL Workbench database

	public boolean checkUsername(forgotPassword fg) throws ClassNotFoundException {

		String login_Vals = "SELECT * FROM users WHERE username= ?;";

		boolean res = false;
		Class.forName("com.mysql.jdbc.Driver");
		try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/FlightCatch?useSSL=false",
				user, password);

				PreparedStatement ps = connection.prepareStatement(login_Vals)) {
			ps.setString(1, forgotPassword.getUsername());

			System.out.println(ps);
			ResultSet rs = ps.executeQuery();
			res = rs.next();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return res;
	}

	public int registerNewPassword(forgotPassword fg) throws ClassNotFoundException {
		String INSERT_USERS_SQL = "INSERT INTO users" + " (username, password) VALUES " + " (?, ?);";

		int res = 0;
		Class.forName("com.mysql.jdbc.Driver");
		try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/FlightCatch?useSSL=false",
				user, password);

				PreparedStatement ps1 = connection.prepareStatement(INSERT_USERS_SQL)) {

			ps1.setString(1, forgotPassword.getUsername());
			ps1.setString(2, forgotPassword.getPassword());

			System.out.println(ps1);
			res = ps1.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return res;
	}
}
