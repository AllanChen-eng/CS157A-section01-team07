package adminForgotPassword_Model;

public class adminForgotPassword {
	private static String firstName;
	private static String lastName;
	private static String username;
	private static String password;
	
	public static String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		adminForgotPassword.firstName = firstName;
	}
	public static String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		adminForgotPassword.lastName = lastName;
	}
	public static String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public static String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
