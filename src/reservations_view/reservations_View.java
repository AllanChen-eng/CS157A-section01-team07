package reservations_view;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import reservations_model.reservations_Model;

public class reservations_View {
	String user = "root";
	String password = "Winter005#";

	private Connection conn;
	private ResultSet rs;

	public void getReservations(String username) {
		String query = "SELECT user_id, tickets.ticket_number, seat_number, flight.flight_id, airline, departs.city, arrives.city, departs.time, arrives.time\r\n"
				+ "FROM bought join flight on bought.flight_id = flight.flight_id join departs on flight.flight_id=\r\n"
				+ "departs.flight_id join arrives on departs.flight_id=arrives.flight_id join tickets on bought.ticket_number=tickets.ticket_number\r\n"
				+ "where user_id = (SELECT user_id" + " FROM users WHERE username = ?)";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/flightcatch?useSSL=false", user, password);
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, username);
			rs = ps.executeQuery();
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
		table += "Ticket Number";
		table += "</th>";

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
		table += "Arrival Time";
		table += "</th>";

		table += "<th>";
		table += "Seat Number";
		table += "</th>";

		table += "</tr>";

		try {
			while (this.rs.next()) {
				reservations_Model rm = new reservations_Model();
				rm.setTicketNumber(this.rs.getInt("ticket_number"));
				rm.setDeparts(this.rs.getString("Departs.city"));
				rm.setArrives(this.rs.getString("Arrives.city"));
				rm.setDepartureTime(this.rs.getTime("Departs.time").toString());
				rm.setArrivalTime(this.rs.getTime("Arrives.time").toString());
				rm.setSeatNumber(this.rs.getInt("seat_number"));
				rm.setFlightID(this.rs.getInt("flight.flight_id"));

				table += "<tr>";
				table += "<td>";
				table += rm.getTicketNumber();
				table += "</td>";

				table += "<td>";
				table += rm.getDeparts();
				table += "</td>";

				table += "<td>";
				table += rm.getDepartureTime();
				table += "</td>";

				table += "<td>";
				table += rm.getArrives();
				table += "</td>";

				table += "<td>";
				table += rm.getArrivalTime();
				table += "</td>";

				table += "<td>";
				table += rm.getSeatNumber();
				table += "</td>";

				table += "<td>";
				table += "<form action=\"delete\" method=\"GET\">"
						+ " <input type=\"hidden\" name=\"flight_id\" value=" + reservations_Model.getFlightID() + " />"
						+ " <input type=\"hidden\" name=\"ticket_number\" value=" + reservations_Model.getTicketNumber() + " />"
						+ "<button type=\"submit\"> Cancel </button>"
						+ "</form>";

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