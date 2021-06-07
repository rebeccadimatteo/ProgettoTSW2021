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
import model.Utente;
import model.UtenteDAO;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginServlet() {
		super();

	}

	// metodo get porta a login page per far loggare la persona
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/LoginPagee.jsp");
		rd.forward(request, response);

	}

	// variabile dell'utente
	private Utente ut;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// prende paranetri dal form login
		ut = new Utente(request.getParameter("username"), null, null, null, null, null, null, 0,
				request.getParameter("pwsd"), null, null, null, null, null, null);

		// VEDENDO SE L'UTENTE è VALIDO
		UtenteDAO ris = new UtenteDAO();
		boolean ok = ris.autentico(ut);

		// se valido allora lo inserisce nella sessione e se corrisponde alle
		// credenziali dell amministratore
		// lo porta alla pagine amministratore
		ut.setValid(ok);
		if (ut.isValid()) {
			ut.restituisciutente();

			request.getSession().setAttribute("utente", ut);
			request.getSession().setMaxInactiveInterval(2 * 60 * 60);
			if (ut.getId().equalsIgnoreCase("admin")) {
				RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/PaginaAdmin.jsp");
				rd.forward(request, response);
			} // se è un utente lo porta verso home page del sito
			else {

				RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/HomePage.jsp");
				rd.forward(request, response);

			}
			// se non è valido lo porta a registrarsi
		} else {

			RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/Registrazione.jsp");
			rd.forward(request, response);
		}
		// invalidare la sessione
		String azione = request.getParameter("azione");
		if (azione != null) {
			if (azione.equalsIgnoreCase("autentico")) {
				request.getSession().invalidate();
				RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/HomePage.jsp");
				rd.forward(request, response);
			}
		}

	}

}
