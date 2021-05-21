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
		if (azione != null) {
			if (azione.equalsIgnoreCase("acquista")) {
				if (request.getSession().getAttribute("utente") == null) {
					response.sendRedirect("LoginServlet");
				} else {
					Utente ut = (Utente) request.getSession().getAttribute("utente");
					Ordine nuovo= new Ordine(ut.getId(),ut.getVia(),ut.getCap(),ut.getCitta()," ");
					nuovo.inserisciordine();
					Carrello car = new Carrello();
					request.getSession().setAttribute("car", car);
					RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/Acquistato.jsp");
					rd.forward(request, response);
					return;

				}
				
				

			} else if (azione.equalsIgnoreCase("aggiungi")) {
				String page = request.getParameter("pagina");
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
