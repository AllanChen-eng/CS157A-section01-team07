package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.forgotPassword;
import view.forgotPassword_Person;

/**
 * Servlet implementation class ForgotPasswordServlet
 */
@WebServlet("/forgotPassword")
public class ForgotPasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private forgotPassword_Person fpp = new forgotPassword_Person();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ForgotPasswordServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());

		RequestDispatcher d = request.getRequestDispatcher("/forgotPassword.jsp");
		d.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("username");
		String emailAddress = request.getParameter("emailAddress");
		String password = request.getParameter("password");
		forgotPassword fg = new forgotPassword();
		fg.setUsername(username);
		fg.setEmailAddress(emailAddress);
		fg.setPassword(password);

		try {
			if (fpp.checkUsernameAndEmailAddress(fg)) {
				fpp.registerNewPassword(fg);
				RequestDispatcher d = request.getRequestDispatcher("/login.jsp");
				d.forward(request, response);
			} else {
				request.setAttribute("error", "Username or Email Address is incorrect. Please try again");
				request.getRequestDispatcher("/forgotPassword.jsp").forward(request, response);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

	}

}
