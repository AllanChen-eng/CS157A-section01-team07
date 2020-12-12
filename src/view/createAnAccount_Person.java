package view;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.createAnAccount;

public class createAnAccount_Person {

	String user = "root";
	String password = "password"; // put in your password to the MySQL Workbench database

	public int registerAccount(createAnAccount createAccount) throws ClassNotFoundException {
		String INSERT_CUSTOMERS_SQL = "INSERT INTO customers"
				+ " (user_id, first_name, last_name, email_address, home_address, city, state, zipcode, username, password) VALUES "
				+ " (?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";

		String INSERT_USERS_SQL = "INSERT INTO users" + " (user_id, username, password) VALUES " + " (?, ?, ?);";

		int res = 0;
		Class.forName("com.mysql.jdbc.Driver");
		try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/FlightCatch?useSSL=false",
				user, password);

				PreparedStatement ps = connection.prepareStatement(INSERT_CUSTOMERS_SQL);
				PreparedStatement ps1 = connection.prepareStatement(INSERT_USERS_SQL)) {
			ps.setInt(1, createAnAccount.getUser_id());
			ps.setString(2, createAnAccount.getFirstName());
			ps.setString(3, createAnAccount.getLastName());
			ps.setString(4, createAnAccount.getEmailAddress());
			ps.setString(5, createAnAccount.getHomeAddress());
			ps.setString(6, createAnAccount.getCity());
			ps.setString(7, createAnAccount.getState());
			ps.setInt(8, createAnAccount.getZipcode());
			ps.setString(9, createAnAccount.getUsername());
			ps.setString(10, createAnAccount.getPassword());

			ps1.setInt(1, createAnAccount.getUser_id());
			ps1.setString(2, createAnAccount.getUsername());
			ps1.setString(3, createAnAccount.getPassword());

			System.out.println(ps1);
			System.out.println(ps);
			res = ps.executeUpdate();
			res = ps1.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return res;
	}

}
