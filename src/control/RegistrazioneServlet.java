package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Utente;

/**
 * Servlet implementation class RegistrazioneServlet
 */
@WebServlet("/RegistrazioneServlet")
public class RegistrazioneServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegistrazioneServlet() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String nome = request.getParameter("nome");
		String cognome = request.getParameter("cognome");
		String id = request.getParameter("username");
		String cf = request.getParameter("cf");
		String email = request.getParameter("email");
		String cellulare = request.getParameter("cell");
		String tipologia = "Registrato";
		int numeroordini = 0;
		String pswd = request.getParameter("pwsd");

		Utente nuovo = new Utente(id, nome, cognome, cf, email, cellulare, tipologia, numeroordini, pswd);
		request.setAttribute("utente", nuovo);
		boolean ok = nuovo.idpresente();

		if (ok) {
			RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/Registrazione.jsp");
			String err = "Username già presente";
			request.setAttribute("errore", err);
			rd.forward(request, response);
		} else {
			nuovo.inserisceutente();
			RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/BenvenutoUtente.jsp");
			rd.forward(request, response);
		}

	}
}
