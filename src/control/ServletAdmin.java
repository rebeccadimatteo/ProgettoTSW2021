package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Catalogo;
import model.Item;

/**
 * Servlet implementation class ServletAdmin
 */
@WebServlet("/ServletAdmin")
public class ServletAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ServletAdmin() {
		super();

	}

	// in base al pulsante che clicca admin viene riderizionato verso le pagine
	// inerenti
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String azione = request.getParameter("azione");
		if (azione != null) {
			if (azione.equalsIgnoreCase("aggiungi")) {
				RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/AdminInserisci.jsp");
				rd.forward(request, response);

			}
			if (azione.equalsIgnoreCase("rimuovi")) {
				RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/AdminRimuovi.jsp");
				rd.forward(request, response);
			}
			if (azione.equalsIgnoreCase("modifica")) {
				RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/AdminModifica.jsp");
				rd.forward(request, response);
			}
			if (azione.equalsIgnoreCase("ordini")) {
				RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/adminordini.jsp");
				rd.forward(request, response);
			}
			if (azione.equalsIgnoreCase("homepage")) {
				RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/Adminhomepage.jsp");
				rd.forward(request, response);
			}

		}

	}

	// prende parametri dal form per aggiunere rimuove modificare prodotto l,o fa e
	// lo riporta all home page
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String azionee = request.getParameter("azionee");
		String azione3 = request.getParameter("azione3");

		String codice = request.getParameter("cod");
		String nome = request.getParameter("nome");
		String descrizione = request.getParameter("descrizione");
		double prezzo = Double.parseDouble(request.getParameter("prezzo"));
		double peso = Double.parseDouble(request.getParameter("peso"));
		String codicecategoria = request.getParameter("tipo");
		String img = request.getParameter("image");
		Item nuovo = new Item(codice, nome, descrizione, prezzo, peso, codicecategoria, img, 0);

		if (azionee != null) {
			if (azionee.equalsIgnoreCase("aggiungi")) {
				nuovo.inserisciprodotto();
				RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/PaginaAdmin.jsp");
				rd.forward(request, response);

			}
			if (azionee.equalsIgnoreCase("rimuovi")) {
				String codicerim = request.getParameter("codrim");
				Catalogo ris = new Catalogo();
				Item fin = ris.getItem(codicerim);
				fin.rimuoviprodotto();

				RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/PaginaAdmin.jsp");
				rd.forward(request, response);

			}
			if (azionee.equalsIgnoreCase("modificaprezzo")) {
				String codicerim = request.getParameter("codmod");
				double prezzo2 = Double.parseDouble(request.getParameter("prez"));
				Catalogo ris = new Catalogo();
				Item fin = ris.getItem(codicerim);
				fin.setPrezzo(prezzo2);

				RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/PaginaAdmin.jsp");
				rd.forward(request, response);

			}
			if (azionee.equalsIgnoreCase("modificapeso")) {
				String codicerim = request.getParameter("codmod");
				double peso2 = Double.parseDouble(request.getParameter("pes"));
				Catalogo ris = new Catalogo();
				Item fin = ris.getItem(codicerim);
				fin.setPeso(peso2);

				RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/PaginaAdmin.jsp");
				rd.forward(request, response);

			}
			if (azionee.equalsIgnoreCase("modificaquant")) {
				String codicerim = request.getParameter("codmod");
				double quant1 = Double.parseDouble(request.getParameter("quant"));
				Catalogo ris = new Catalogo();
				Item fin = ris.getItem(codicerim);
				fin.setQuantita(quant1);

				RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/PaginaAdmin.jsp");
				rd.forward(request, response);

			}
		}
		if(azione3!=null) {
		if (azione3.equalsIgnoreCase("cliente")) {
			
			String c = null;
			request.setAttribute("c",c);
			c=(String)c;

			RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/PaginaAdminOrdineCliente.jsp");
			rd.forward(request, response);

		}
		}
	}
		


	}
