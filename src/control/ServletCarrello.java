package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Carrello;
import model.Catalogo;
import model.Item;
import model.Ordine;
import model.SpecificaOrdine;
import model.Utente;

/**
 * Servlet implementation class ServletCarrello
 */
@WebServlet("/ServletCarrello")
public class ServletCarrello extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ServletCarrello() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Carrello car = (Carrello) request.getSession().getAttribute("car");
		if (car == null) {
			car = new Carrello();
			request.getSession().setAttribute("car", car);
		}

		System.out.println(car.getProdotti().size());

		RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/mainCarrello.jsp");
		rd.forward(request, response);
	}

	private Catalogo catal = new Catalogo();

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String azione = request.getParameter("azione");
		String az=request.getParameter("az");
	
		if (az != null) {
		
		 if(az.equalsIgnoreCase("acquista")) {
			 
				if (request.getSession().getAttribute("utente") == null) {
					response.sendRedirect("LoginServlet");

				} else {
					Carrello carrelloin = (Carrello) request.getSession().getAttribute("car");
					Utente ut = (Utente) request.getSession().getAttribute("utente");
					Ordine nuovo = new Ordine(0,null,null,ut.getId(),request.getParameter("via"),request.getParameter("cap"),request.getParameter("citta") ,0);
					SpecificaOrdine spec=new SpecificaOrdine(0,nuovo.getNumeroordine(),carrelloin.SommaPeso(),carrelloin.SommaPrezzo(),request.getParameter("via"),request.getParameter("cap"),request.getParameter("citta"),ut.getId());
					nuovo.setIdspecificaordine(spec.getId());
					ut.setIban(request.getParameter("iban"));
					ut.setTipo(request.getParameter("tipo"));
					ut.setNominativo(request.getParameter("nominativo"));
					nuovo.inserisciordine();
					spec.inserisciSpecificaOrdine();
					
					RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/Acquistato.jsp");
					rd.forward(request, response);
					return;

				}

			
		}

	} if(azione!=null) {
		 if (azione.equalsIgnoreCase("aggiungi")) {
				String page = request.getParameter("pagina");
				System.out.println("page " + page);
				Item el = catal.getItem(request.getParameter("id"));
				Carrello car = (Carrello) request.getSession().getAttribute("car");
				if (!car.isPresente(el))
					car.addProduct(el);
				request.getSession().setAttribute("car", car);
				response.sendRedirect(page);
				return;
			}
	}
	}
}

