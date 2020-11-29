package search_Model;

public class flight {
	private static int flight_id;
	private static int passenger_capacity;
	private static String status;
	private static String Airline;
	private static String departs;
	private static String arrives;

	public static int getFlight_id() {
		return flight_id;
	}

	public void setFlight_id(int flight_id) {
		this.flight_id = flight_id;
	}

	public static int getPassenger_capacity() {
		return passenger_capacity;
	}

	public void setPassenger_capacity(int passenger_capacity) {
		this.passenger_capacity = passenger_capacity;
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
}