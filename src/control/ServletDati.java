
package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Catalogo;

/**
 * Servlet implementation class ServletDati
 */
@WebServlet("/ServletDati")
public class ServletDati extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ServletDati() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setAttribute("Catalogo", catal);
		String azione = request.getParameter("azione");
		if (azione != null) {
		 if(azione.equalsIgnoreCase("admin"))
		 {
			 RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/Admincat.jsp");
				rd.forward(request, response);
			 
		 }
		
		}
		RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/mainCatalogo.jsp");
		rd.forward(request, response);
	}

	private Catalogo catal = new Catalogo();

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
