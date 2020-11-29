package model;

import java.sql.Time;

public class reserve {
private int economyClass;
private int businessClass;
private int firstClass;
private int price;
private int ticketNumber;
private int userID;
private int passenger_capacity;

public int getEconomyClass() {
	return economyClass;
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


}
