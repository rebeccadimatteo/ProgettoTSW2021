package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Carrello;
import model.Item;

/**
 * Servlet implementation class ServletOrdine
 */
@WebServlet("/ServletOrdine")
public class ServletOrdine extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ServletOrdine() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Carrello car = (Carrello) request.getAttribute("Carrello");
		RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/PaginaOrdine.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Carrello car = (Carrello) request.getAttribute("Carrello");
		String azione = request.getParameter("azione");
		if (azione != null) {
			if (azione.equalsIgnoreCase("avanti")) {
				RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/Avanti.jsp");
				rd.forward(request, response);

			}
			if (azione.equalsIgnoreCase("+")) {

			}
			if (azione.equalsIgnoreCase("-")) {

			}
			if (azione.equalsIgnoreCase("rim")) {

			}
		}

	}
}
