package forgotPassword_Model;

public class forgotPassword {
	private static String username;
	private static String password;
	private static String emailAddress;
	
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
	public static String getEmailAddress() {
		return emailAddress;
	}
	public void setEmailAddress(String emailAddress) {
		forgotPassword.emailAddress = emailAddress;
	}
	
}
