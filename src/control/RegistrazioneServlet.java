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

	public RegistrazioneServlet() {
		super();

	}

//porta l'utente a registrarsi
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/Registrazione.jsp");
		rd.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
// prende parametri dal form per creare  l'utente
		String nome = request.getParameter("nome");
		String cognome = request.getParameter("cognome");
		String id = request.getParameter("username");
		String cf = request.getParameter("cf");
		String email = request.getParameter("email");
		String cellulare = request.getParameter("cell");
		String tipologia = "Registrato";
		int numeroordini = 0;
		String pswd = request.getParameter("pwsd");
		// indirizzo
		String via = request.getParameter("via");
		String cap = request.getParameter("cap");
		String citta = request.getParameter("citta");
		// metodo pagamento
		String iban = request.getParameter("iban");
		String tipo = request.getParameter("tipo");
		String nominativo = request.getParameter("nominativo");

		Utente nuovo = new Utente(id, nome, cognome, cf, email, cellulare, tipologia, numeroordini, pswd, via, cap,
				citta, iban, tipo, nominativo);
		request.setAttribute("utente", nuovo);
		boolean ok = nuovo.idpresente();
		// lo riporta alla pagina con scritto che id è gia presente
		if (ok) {
			RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/Registrazione.jsp");
			String err = "Username già presente";
			request.setAttribute("errore", err);
			rd.forward(request, response);
		} else {// inserisce l'utente all'interno del db
			nuovo.inserisceutente();
			nuovo.inseriscimetodo();
			RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/HomePage.jsp");
			rd.forward(request, response);
		}

	}
}
