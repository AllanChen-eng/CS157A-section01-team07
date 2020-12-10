package model;

public class reservations_Model {
	private static int ticketNumber;
	private int seat_number;
	private static int flightID;
	private static String status;
	private static String Airline;
	private static String departs;
	private static String arrives;
	private static String departure_time;
	private static String arrival_time;

	public static int getFlightID() {
		return flightID;
	}

	public void setFlightID(int flightID) {
		this.flightID = flightID;
	}

	public static String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getAirline() {
		return Airline;
	}

	public void setAirline(String airline) {
		this.Airline = airline;
	}

	public String getDeparts() {
		return departs;
	}

	public void setDeparts(String departs) {
		this.departs = departs;
	}

	public String getArrives() {
		return arrives;
	}

	public void setArrives(String arrives) {
		this.arrives = arrives;
	}

	public String getDepartureTime() {
		return departure_time;
	}

	public void setDepartureTime(String departureTime) {
		this.departure_time = departureTime;
	}

	public String getArrivalTime() {
		return arrival_time;
	}

	public void setArrivalTime(String arrivalTime) {
		this.arrival_time = arrivalTime;
	}

	public static int getTicketNumber() {
		return ticketNumber;
	}

	public void setTicketNumber(int ticketNumber) {
		this.ticketNumber = ticketNumber;
	}

	public int getSeatNumber() {
		return seat_number;
	}

	public void setSeatNumber(int seat_number) {
		this.seat_number = seat_number;
	}

}