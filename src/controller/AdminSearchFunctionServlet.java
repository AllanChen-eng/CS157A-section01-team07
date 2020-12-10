package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import view.adminSearchFunction_Person;

/**
 * Servlet implementation class AdminSearchFunctionServlet
 */
@WebServlet("/adminSearch")
public class AdminSearchFunctionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminSearchFunctionServlet() {
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
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String departs = request.getParameter("departVal");
		String arrives = request.getParameter("arriveVal");
		
		adminSearchFunction_Person asfp = new adminSearchFunction_Person();
//		AdminSearch adminSearch = new AdminSearch();
		
		asfp.doAdminSearch(departs, arrives);
		
		String table = asfp.getAdminHTMLTable();

		request.setAttribute("adminTable", table);
		String url = "/adminSearchResults.jsp";

		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
	}

}
