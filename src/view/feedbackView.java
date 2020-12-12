package view;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.feedback;

public class feedbackView {
	String user = "root";
	String password = "password";

	private Connection conn;
	private ResultSet rs;
	private ResultSet rs2;
	private ResultSet rs3;

	public void doSearch(int flightID) {
		String query = "SELECT airline FROM FlightCatch.Flight WHERE flight_id=?;";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/flightcatch?useSSL=false", user, password);

			PreparedStatement ps = conn.prepareStatement(query);
			ps.setInt(1, flightID);
			rs2 = ps.executeQuery();
			System.out.println(ps);
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException error) {
			error.printStackTrace();
		}

	}

	public int feedbackTable(String username) {
		String fTable = "SELECT user_id, flight.flight_id\n"
				+ "				FROM bought join flight on bought.flight_id = flight.flight_id join departs on flight.flight_id=\n"
				+ "				departs.flight_id join arrives on departs.flight_id=arrives.flight_id join tickets on bought.ticket_number=tickets.ticket_number\n"
				+ "				where user_id = (SELECT user_id FROM users WHERE username = ?);";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/flightcatch?useSSL=false", user, password);

			PreparedStatement ps1 = conn.prepareStatement(fTable);
			ps1.setString(1, username);
			System.out.println(ps1);
			rs3 = ps1.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException error) {
			error.printStackTrace();
		}
		System.out.println(username);
		int feedback2 = 0;
		try {
			while (this.rs3.next()) {
				feedback2 = this.rs3.getInt("flight_id");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return feedback2;
	}

	public void allComments() {
		String query = "SELECT * FROM FlightCatch.Feedback";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/flightcatch?useSSL=false", user, password);

			PreparedStatement ps2 = conn.prepareStatement(query);
			System.out.println(ps2);
			rs = ps2.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException error) {
			error.printStackTrace();
		}

	}

	public void insertComment(String comment, double rating) {
		String query = "INSERT INTO FlightCatch.Feedback(comment,rating) VALUES (?,?);";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/flightcatch?useSSL=false", user, password);

			PreparedStatement ps3 = conn.prepareStatement(query);
			ps3.setString(1, comment);
			ps3.setDouble(2, rating);
			System.out.println(ps3);
			ps3.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException error) {
			error.printStackTrace();
		}

	}

	public String getHTMLTable() {
		String table = "";
		table += "<table style='width:100%'>";
		table += "<tr>";
		table += " <h1> Other Customer's Exeperiences: </h1>";
		table += "</tr>";
		table += "<tr>";
		table += "<th>";
		table += "Airline";
		table += "</th>";

		table += "<th>";
		table += "Rating";
		table += "</th>";

		table += "<th>";
		table += "Comment";
		table += "</th>";

		table += "</tr>";

		try {
			this.rs2.next();
			while (this.rs.next()) {
				feedback feedback1 = new feedback();
				feedback1.setCommentID(this.rs.getInt("comment_id"));
				feedback1.setRating(this.rs.getDouble("rating"));
				feedback1.setComment(this.rs.getString("comment"));

				feedback1.setAirline(this.rs2.getString("airline"));
				table += "<tr>";
				table += "<td>";
				table += feedback1.getAirline();
				table += "</td>";

				table += "<td>";
				table += feedback1.getRating();
				table += "</td>";

				table += "<td>";
				table += feedback1.getComment();
				table += "</td>";

			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		table += "</table>";
		return table;
	}

}
