package model;

public class reserve {
	private int economyClass;
	private int businessClass;
	private int firstClass;
	private int price;
	private int ticketNumber;
	private int userID;
	private int passenger_capacity;
	private int seat_number;
	private String username;
	private static String status;
	private static String Airline;
	private static String departs;
	private static String arrives;
	private static String departure_time;
	private static String arrival_time;

	public int getEconomyClass() {
		return economyClass;
	}

	public int getSeat_number() {
		return seat_number;
	}

	public void setSeat_number(int seat_number) {
		this.seat_number = seat_number;
	}

	public static String getStatus() {
		return status;
	}

	public static void setStatus(String status) {
		reserve.status = status;
	}

	public String getAirline() {
		return Airline;
	}

	public void setAirline(String airline) {
		Airline = airline;
	}

	public String getDeparts() {
		return departs;
	}

	public void setDeparts(String departs) {
		reserve.departs = departs;
	}

	public  String getArrives() {
		return arrives;
	}

	public void setArrives(String arrives) {
		reserve.arrives = arrives;
	}

	public String getDeparture_time() {
		return departure_time;
	}

	public void setDeparture_time(String departure_time) {
		reserve.departure_time = departure_time;
	}

	public String getArrival_time() {
		return arrival_time;
	}

	public void setArrival_time(String arrival_time) {
		reserve.arrival_time = arrival_time;
	}

	public void setEconomyClass(int economyClass) {
		this.economyClass = economyClass;
	}

	public int getBusinessClass() {
		return businessClass;
	}

	public void setBusinessClass(int businessClass) {
		this.businessClass = businessClass;
	}

	public int getFirstClass() {
		return firstClass;
	}

	public void setFirstClass(int firstClass) {
		this.firstClass = firstClass;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getTicketNumber() {
		return ticketNumber;
	}

	public void setTicketNumber(int ticketNumber) {
		this.ticketNumber = ticketNumber;
	}

	public int getUserID() {
		return userID;
	}

	public void setUserID(int userID) {
		this.userID = userID;
	}

	public int getPassenger_capacity() {
		return passenger_capacity;
	}

	public void setPassenger_capacity(int passenger_capacity) {
		this.passenger_capacity = passenger_capacity;
	}

	public int getSeatNumber() {
		return seat_number;
	}

	public void setSeatNumber(int seat_number) {
		this.seat_number = seat_number;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

}
