package view;
import java.sql.*;

import search_Model.flight;


public class reserveView {
	String user = "root";
	String password = "ALuckyNugget7"; //put in your password to the MySQL Workbench database
	private ResultSet rs;
	
	public boolean reserveTicket(int flightID) throws ClassNotFoundException {
		
  String updateSQL= "UPDATE FlightCatch.Flight set current_capacity=current_capacity+1 WHERE flight_id=?;";
String ticketNumberSQL="INSERT INTO FlightCatch.Sells"
		+ " (ticket_number,flight_ID) VALUES "
		+ " (SELECT current_capacity FROM FlightCatch.Flight WHERE flight_id=?,?);";
	boolean res = false;
	Class.forName("com.mysql.jdbc.Driver");
	try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/FlightCatch?useSSL=false",
			user, password);

		PreparedStatement ps = connection.prepareStatement(updateSQL)) {
		
		
		ps.setInt(1, flightID);
		System.out.println(ps);
		//int rs = 
		ps.executeUpdate();
		//res = rs.next();
	} catch (SQLException e) {
		e.printStackTrace();
	}
	
	try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/FlightCatch?useSSL=false",
			user, password);

		PreparedStatement ps = connection.prepareStatement(ticketNumberSQL)) {
		
		ps.setInt(1, flightID);
		ps.setInt(2, flightID);
		
		System.out.println(ps);
		//int rs = 
		ps.executeUpdate();
		//res = rs.next();
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return res;
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
