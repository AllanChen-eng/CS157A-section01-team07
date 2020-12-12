package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import view.reservations_View;

/**
 * Servlet implementation class delete_Servlet
 */
@WebServlet("/delete")
public class delete_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public delete_Servlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = (String) request.getSession().getAttribute("username");
		int flightID = Integer.parseInt(request.getParameter("flight_id"));
		int ticketNumber = Integer.parseInt(request.getParameter("ticket_number"));
		reservations_View rv = new reservations_View();
		String table = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/flightcatch?useSSL=false",
					"root", "password");
			String query = "DELETE FROM bought WHERE user_id = (SELECT user_id FROM users WHERE username = ?) AND flight_id = ? AND"
					+ " ticket_number = ? LIMIT 1";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, username);
			ps.setInt(2, flightID);
			ps.setInt(3, ticketNumber);
			ps.executeUpdate();
			rv.getReservations(username);
			table = rv.getHTMLTable();

		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException ex) {
			ex.printStackTrace();
		}
		request.setAttribute("table", table);
		String url = "/reservations.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);

//		String url = "/reservations.jsp";
//		RequestDispatcher rd = request.getRequestDispatcher(url);
//		rd.forward(request, response);
	}

}
