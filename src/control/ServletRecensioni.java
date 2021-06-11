package control;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Recensione;

/**
 * Servlet implementation class ServletRecensioni
 */
@WebServlet("/ServletRecensioni")
public class ServletRecensioni extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ServletRecensioni() {
		super();

	}

	// se è l'amministratore lo porta a vedere tutte le recensioni
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/adminrecensioni.jsp");
		rd.forward(request, response);

	}

// prende i parametri dal form crea una nuova recensione  e l'aggiunge al db
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		String nome = request.getParameter("nomep");
		String descr = request.getParameter("arearec");
		Recensione nuova = new Recensione(0, descr, id,nome);

		nuova.inseriscirecensione();

		RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/HomePage.jsp");
		rd.forward(request, response);

	}

}
