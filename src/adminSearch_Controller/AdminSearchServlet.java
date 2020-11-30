package adminSearch_Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import adminSearch_Model.AdminSearch;
import adminSearch_View.AdminSearch_Person;

/**
 * Servlet implementation class AdminSearchServlet
 */
@WebServlet("/adminSearch")
public class AdminSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminSearchServlet() {
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

		String departs = request.getParameter("departVal");
		String arrives = request.getParameter("arriveVal");
		String cityD = request.getParameter("cityDVal");
		String cityA = request.getParameter("cityAVal");
		String timeD = request.getParameter("departureTimeVal");
		String timeA = request.getParameter("timeAVal");

		AdminSearch_Person asp = new AdminSearch_Person();
		AdminSearch adminSearch = new AdminSearch();
		
		adminSearch.setCity(cityD);
		adminSearch.setDepartureTime(timeD);
		adminSearch.setCity(cityA);
		adminSearch.setArrivalTime(timeA);
		
		asp.doAdminSearch(departs, arrives);
		
		try {
			asp.adminInsertDepartureTimeAndCity(adminSearch);
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		try {
			asp.adminInsertArrivalTimeAndCity(adminSearch);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String table = asp.getAdminHTMLTable();

		request.setAttribute("adminTable", table);
		String url = "/adminSearchResults.jsp";

		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);

	}

}
