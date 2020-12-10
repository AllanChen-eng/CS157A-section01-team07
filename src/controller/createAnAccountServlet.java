package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.createAnAccount;
import view.createAnAccount_Person;

@WebServlet("/createAccount")
public class createAnAccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private createAnAccount_Person cap = new createAnAccount_Person();

	public createAnAccountServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());

		RequestDispatcher d = request.getRequestDispatcher("/createAnAccount.jsp");
		d.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String emailAddress = request.getParameter("emailAddress");
		String homeAddress = request.getParameter("homeAddress");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		int zipcode = Integer.parseInt(request.getParameter("zipcode"));
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		createAnAccount caa = new createAnAccount();

		caa.setFirstName(firstName);
		caa.setLastName(lastName);
		caa.setEmailAddress(emailAddress);
		caa.setHomeAddress(homeAddress);
		caa.setCity(city);
		caa.setState(state);
		caa.setZipcode(zipcode);
		caa.setUsername(username);
		caa.setPassword(password);

		try {
			cap.registerAccount(caa);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

		RequestDispatcher d = request.getRequestDispatcher("/accountSuccessful.jsp");
		d.forward(request, response);

	}

}
