package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Utente;
import model.UtenteDAO;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	private Utente ut;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ut = new Utente(request.getParameter("username"), null, null, null, null, null, null, 0,
				request.getParameter("pwsd"));
		// VEDENDO SE L'UTENTE è VALIDO SE LO è LO PASSIAMO ALLA JSP
		UtenteDAO ris = new UtenteDAO();
		boolean ok = ris.autentico(ut);
		ut.setValid(ok);
		if (ut.isValid()) {
			request.setAttribute("utente", ut);
			RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/BenvenutoUtente.jsp");
			rd.forward(request, response);
		} else {
			request.setAttribute("utente", ut);
			RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/Registrazione.jsp");
			rd.forward(request, response);
		}

	}

}
