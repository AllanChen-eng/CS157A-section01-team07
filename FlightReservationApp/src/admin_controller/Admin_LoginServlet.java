package admin_controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin_Model.Admin;
import admin_View.admin_Person;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/admin_login")
public class Admin_LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private admin_Person lp = new admin_Person();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Admin_LoginServlet() {
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

		RequestDispatcher d = request.getRequestDispatcher("/adminLogin.jsp");
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
		String password = request.getParameter("password");
		Admin admin = new Admin();
		admin.setUsername(username);
		admin.setPassword(password);

		try {
			if (lp.admin_login(admin)) {
				RequestDispatcher d = request.getRequestDispatcher("/adminHomepage.jsp");
				d.forward(request, response);
			} else {
				request.setAttribute("error", "Username or Password is incorrect. Please try again");
				request.getRequestDispatcher("/adminLogin.jsp").forward(request, response);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

	}

}
