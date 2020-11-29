package view;
import java.sql.*;


public class reserveView {
	String user = "root";
	String password = "ALuckyNugget7"; //put in your password to the MySQL Workbench database

	public boolean reserveTicket(int flightID) throws ClassNotFoundException {
		
  String query= "UPDATE FlightCatch.Flight set current_capacity=current_capacity+1 WHERE flight_id=?;";
	boolean res = false;
	Class.forName("com.mysql.jdbc.Driver");
	try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/FlightCatch?useSSL=false",
			user, password);

		PreparedStatement ps = connection.prepareStatement(query)) {
		ps.setInt(1, flightID);


		System.out.println(ps);
		//int rs = 
		ps.executeUpdate();
		//res = rs.next();
		
	} catch (SQLException e) {
		e.printStackTrace();
	}
	
	return res;
	}

}
