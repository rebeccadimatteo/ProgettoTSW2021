
package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Carrello;
import model.Catalogo;

/**
 * Servlet implementation class ServletDati
 */
@WebServlet("/ServletDati")
public class ServletDati extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ServletDati() {
		super();

	}

	// se azione è dell'amministratore lo porta al catalogo dell amministratore
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setAttribute("Catalogo", catal);
		
		String azione2 = request.getParameter("azione2");
		 // annulla il carrello e lo riporta al main catalogo
		if (azione2 != null) {
			if (azione2.equalsIgnoreCase("fine")) {
				Carrello car = new Carrello();
				request.getSession().setAttribute("car", car);
			}
		}
		RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/mainCatalogo.jsp");
		rd.forward(request, response);
	}

	private Catalogo catal = new Catalogo();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
