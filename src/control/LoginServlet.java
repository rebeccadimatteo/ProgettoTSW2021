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
		RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/LoginPagee.jsp");
		rd.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	private Utente ut;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		ut = new Utente(request.getParameter("username"), null, null, null, null, null, null, 0,
				request.getParameter("pwsd"), null, null, null, null, null, null);

		// VEDENDO SE L'UTENTE è VALIDO SE LO è LO PASSIAMO ALLA JSP
		UtenteDAO ris = new UtenteDAO();
		boolean ok = ris.autentico(ut);
		
		
		ut.setValid(ok);
		if (ut.isValid()) {
			ut.restituisciutente();
			
			request.getSession().setAttribute("utente", ut);
			request.getSession().setMaxInactiveInterval(2*60*60);
			if (ut.getId().equalsIgnoreCase("admin")) {
				RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/PaginaAdmin.jsp");
				rd.forward(request, response);
			}   
			else{
				
				RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/HomePage.jsp");
				rd.forward(request, response);
				
			}
             
		} else {

			RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/Registrazione.jsp");
			rd.forward(request, response);
		}
		
		String azione=request.getParameter("azione");
		if(azione!=null) {
			 if (azione.equalsIgnoreCase("autentico")) {
				 request.getSession().invalidate();
				 RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/HomePage.jsp");
					rd.forward(request, response);
				}
		}
		
	
	}

}
