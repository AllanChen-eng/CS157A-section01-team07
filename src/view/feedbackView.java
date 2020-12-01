package view;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.feedback;

public class feedbackView {
	String user = "root";
	String password = "ALuckyNugget7";

	private Connection conn;
	private ResultSet rs;

	public void doSearch(int flightID) {
		String query ="SELECT airline FROM FlightCatch.Flight WHERE flight_id=?;";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/flightcatch?useSSL=false", user, password);

			PreparedStatement ps = conn.prepareStatement(query);
			ps.setInt(1,flightID);
			System.out.println(ps);
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException error) {
			error.printStackTrace();
		}

	}
	public void allComments() {
		String query ="SELECT * FROM FlightCatch.Feedback;";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/flightcatch?useSSL=false", user, password);

			PreparedStatement ps = conn.prepareStatement(query);
			System.out.println(ps);
			rs = ps.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException error) {
			error.printStackTrace();
		}

	}
public void insertComment(String comment,double rating) {
	String query ="INSERT INTO FlightCatch.feedback(comment,rating) VALUES (?,?)";

	try {
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/flightcatch?useSSL=false", user, password);

		PreparedStatement ps = conn.prepareStatement(query);
		ps.setString(1,comment);
		ps.setDouble(2, rating);
		System.out.println(ps);
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
		table += "<th>";
		table += "Departs";
		table += "</th>";

		table += "<th>";
		table += "Departure Time";
		table += "</th>";

		table += "<th>";
		table += "Arrives";
		table += "</th>";

		table += "<th>";
		table += "Arrival time";
		table += "</th>";

		table += "<th>";
		table += "Airline";
		table += "</th>";

		table += "</tr>";

		try {
			while (this.rs.next()) {
				feedback feedback1 = new feedback();
				feedback1.setCommentID(this.rs.getInt("comment_id"));
				feedback1.setRating(this.rs.getInt("rating"));
				feedback1.setComment(this.rs.getString("comment"));
			
				table += "<tr>";
				table += "<td>";
				table += feedback1.getCommentID();
				table += "</td>";

				table += "<td>";
				table += feedback1.getRating();
				table += "</td>";

				table += "<td>";
				table += feedback1.getComment();
				table += "</td>";

				table += "<td>";
				table += "<form action=\"reserve\" method=\"GET\">"
						+ " <input type=\"hidden\" name=\"flight_id\" value="
						+ 1
						+ " />"
						+"<button type=\"submit\"> Reserve </button>"
						+ "</form>";
						//"<a href=Reserve? flight_id=" + flight.getFlight_id() + "> Reserve </a>";
						//"<action="search" method="GET"">	</form>";
				

				table += "</td>";

				table += "</tr>";
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		table += "</table>";
		return table;
	}

}
