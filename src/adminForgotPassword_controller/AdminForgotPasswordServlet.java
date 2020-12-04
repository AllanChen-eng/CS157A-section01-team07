package adminForgotPassword_controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import adminForgotPassword_Model.adminForgotPassword;
import adminForgotPassword_View.adminForgotPassword_Person;

/**
 * Servlet implementation class AdminForgotPasswordServlet
 */
@WebServlet("/adminForgotPassword")
public class AdminForgotPasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private adminForgotPassword_Person afpp = new adminForgotPassword_Person();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminForgotPasswordServlet() {
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

		RequestDispatcher d = request.getRequestDispatcher("/adminForgotPassword.jsp");
		d.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		adminForgotPassword afg = new adminForgotPassword();
		afg.setFirstName(firstName);
		afg.setLastName(lastName);
		afg.setUsername(username);
		afg.setPassword(password);

		try {
			if (afpp.checkAdminUsername(afg)) {
				afpp.registerAdminNewPassword(afg);
				RequestDispatcher d = request.getRequestDispatcher("/adminLogin.jsp");
				d.forward(request, response);
			} else {
				request.setAttribute("error", "Admin first, last, or username is incorrect. Please try again");
				request.getRequestDispatcher("/adminForgotPassword.jsp").forward(request, response);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

	}

}
