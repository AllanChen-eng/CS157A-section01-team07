package search_View;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import search_Model.flight;

public class search_Query {

	String user = "root";
	String password = "ALuckyNugget7";

	private Connection conn;
	private ResultSet rs;

	public void doSearch(String departs, String arrives) {
		String query = "SELECT departs.city as 'departs', arrives.city as 'arrives', departs.time as 'time1', arrives.time as 'time2', "
				+ "departs.flight_id, flight.airline, flight.passenger_capacity, flight.status\r\n"
				+ "FROM departs join arrives on departs.flight_id = arrives.flight_id join flight on flight.flight_id = departs.flight_id\r\n"
				+ "WHERE departs.flight_id = arrives.flight_id AND departs.city LIKE ? AND arrives.city LIKE ?";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/flightcatch?useSSL=false", user, password);

			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, "%" + departs + "%");
			ps.setString(2, "%" + arrives + "%");
			System.out.println(ps);
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
				flight flight1 = new flight();
				flight1.setFlight_id(this.rs.getInt("flight_id"));
				flight1.setPassenger_capacity(this.rs.getInt("passenger_capacity"));
				flight1.setStatus(this.rs.getString("status"));
				flight1.setAirline(this.rs.getString("airline"));
				flight1.setDeparts(this.rs.getString("departs"));
				flight1.setArrives(this.rs.getString("arrives"));
				flight1.setDepartureTime(this.rs.getTime("time1").toString());
				flight1.setArrivalTime(this.rs.getTime("time2").toString());

				table += "<tr>";
				table += "<td>";
				table += flight1.getDeparts();
				table += "</td>";

				table += "<td>";
				table += flight1.getDepartureTime();
				table += "</td>";

				table += "<td>";
				table += flight1.getArrives();
				table += "</td>";

				table += "<td>";
				table += flight1.getArrivalTime();
				table += "</td>";

				table += "<td>";
				table += flight1.getAirline();
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