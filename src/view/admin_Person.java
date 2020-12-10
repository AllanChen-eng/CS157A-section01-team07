package view;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Admin;

public class admin_Person {
	String user = "root";
	String password = "ALuckyNugget7"; // put in your password to the MySQL Workbench database

	public boolean admin_login(Admin admin) throws ClassNotFoundException {

		String admin_login_Vals = "SELECT * FROM admins WHERE admin_username= ? AND admin_password= ?;";

		boolean res = false;
		Class.forName("com.mysql.jdbc.Driver");
		try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/FlightCatch?useSSL=false",
				user, password);

				PreparedStatement ps = connection.prepareStatement(admin_login_Vals)) {
			ps.setString(1, Admin.getUsername());
			ps.setString(2, Admin.getPassword());

			System.out.println(ps);
			ResultSet rs = ps.executeQuery();
			res = rs.next();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return res;
	}
}