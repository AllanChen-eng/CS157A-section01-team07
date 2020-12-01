package model;

public class feedback {
private int commentID;
private String comment;
private double rating;
public String getAirline() {
	return airline;
}
public void setAirline(String airline) {
	this.airline = airline;
}
private int flightID;
private String airline;
public int getCommentID() {
	return commentID;
}
public void setCommentID(int commentID) {
	this.commentID = commentID;
}
public String getComment() {
	return comment;
}
public void setComment(String comment) {
	this.comment = comment;
}
public double getRating() {
	return rating;
}
public void setRating(double rating) {
	this.rating = rating;
}
public int getFlightID() {
	return flightID;
}
public void setFlightID(int flightID) {
	this.flightID = flightID;
}


}
