package view;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.adminForgotPassword;

public class adminForgotPassword_Person {
	String user = "root";
	String password = "ALuckyNugget7"; // put in your password to the MySQL Workbench database

	public boolean checkAdminUsername(adminForgotPassword afg) throws ClassNotFoundException {

		String login_Vals = "SELECT * FROM admins WHERE admin_first_name= ? AND admin_last_name= ? AND admin_username= ? ;";

		boolean res = false;
		Class.forName("com.mysql.jdbc.Driver");
		try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/FlightCatch?useSSL=false",
				user, password);

				PreparedStatement ps = connection.prepareStatement(login_Vals)) {
			ps.setString(1, adminForgotPassword.getFirstName());
			ps.setString(2, adminForgotPassword.getLastName());
			ps.setString(3, adminForgotPassword.getUsername());

			System.out.println(ps);
			ResultSet rs = ps.executeQuery();
			res = rs.next();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return res;
	}

	public int registerAdminNewPassword(adminForgotPassword fg) throws ClassNotFoundException {
		String INSERT_ADMINS_SQL = "INSERT INTO admins" + " (admin_username, admin_password) VALUES " + " (?, ?);";

		int res = 0;
		Class.forName("com.mysql.jdbc.Driver");
		try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/FlightCatch?useSSL=false",
				user, password);

				PreparedStatement ps1 = connection.prepareStatement(INSERT_ADMINS_SQL)) {

			ps1.setString(1, adminForgotPassword.getUsername());
			ps1.setString(2, adminForgotPassword.getPassword());

			System.out.println(ps1);
			res = ps1.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return res;
	}
}
