package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import view.reserveView;

/**
 * Servlet implementation class reserveServ
 */
@WebServlet("/reserve")
public class reserveServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public reserveServ() {
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
		// TODO Auto-generated method stub
		String username = (String) request.getSession().getAttribute("username");
		int flightID = Integer.parseInt(request.getParameter("flight_id"));
		reserveView sq = new reserveView();
		sq.reserveTicket(flightID);
		String table = sq.getHTMLTable();
		// String table = sq.getHTMLTable();

		// request.setAttribute("table", table);
		request.setAttribute("table", table);
		String url = "/confirmation.jsp";
		try {
			int ticketNumber = 0;
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/flightcatch?useSSL=false",
					"root", "password");
			String query = "INSERT INTO bought (user_id, ticket_number, flight_id) VALUES ((SELECT user_id FROM users WHERE username = ?), ?, ?);";
			String currentCap = "SELECT current_capacity FROM flight where flight_id = ?;";
			PreparedStatement ps = conn.prepareStatement(query);
			PreparedStatement ps1 = conn.prepareStatement(currentCap);
			ps1.setInt(1, flightID);
			ResultSet rs = ps1.executeQuery();
			if (rs.next()) {
				ticketNumber = rs.getInt("current_capacity");
			}
			ps.setString(1, username);
			ps.setInt(2, ticketNumber);
			ps.setInt(3, flightID);
			ps.executeUpdate();
			System.out.println(ps.toString());
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException ex) {
			ex.printStackTrace();
		}

		request.setAttribute("username", username);
		request.getRequestDispatcher("confirmation.jsp").forward(request, response);
		RequestDispatcher rd = request.getRequestDispatcher(url);
		// rd.forward(request, response);

	}

}
