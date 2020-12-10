package model;

public class AdminSearchFunction {
	private  int flight_id;
	private  int passenger_capacity;
	private  String status;
	private  String Airline;
	private  String departs;
	private  String arrives;
	private  String departure_time;
	private String arrival_time;
	
	public int getFlight_id() {
		return flight_id;
	}

	public String getDeparture_time() {
		return departure_time;
	}

	public void setDeparture_time(String departure_time1) {
		departure_time = departure_time1;
	}

	public String getArrival_time() {
		return arrival_time;
	}

	public void setArrival_time(String arrival_time1) {
		arrival_time = arrival_time1;
	}

	public void setFlight_id(int flight_id) {
		this.flight_id = flight_id;
	}

	public int getPassenger_capacity() {
		return passenger_capacity;
	}

	public void setPassenger_capacity(int passenger_capacity) {
		this.passenger_capacity = passenger_capacity;
	}

	public String getStatus() {
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
}
