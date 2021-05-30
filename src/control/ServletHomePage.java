package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletHomePage
 */
@WebServlet("/ServletHomePage")
public class ServletHomePage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletHomePage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String home=request.getParameter("home");
		if(home!=null)
		{
			if(home.equalsIgnoreCase("home"))
			{
				RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/HomePage.jsp");
				rd.forward(request, response);
			}
			if(home.equalsIgnoreCase("recensione"))
			{
				RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/Recensioni.jsp");
				rd.forward(request, response);
			}
			if(home.equalsIgnoreCase("catal"))
			{
				RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/ServletDati");
				rd.forward(request, response);
			}
			if(home.equalsIgnoreCase("chisiamo"))
			{
				
				RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/ChiSiamo.jsp");
				rd.forward(request, response);
			}
			if(home.equalsIgnoreCase("contatti"))
			{
				RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/Contatti.jsp");
				rd.forward(request, response);
			}
			if(home.equalsIgnoreCase("pagmet"))
			{
				RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/MetodoSpedizione.jsp");
				rd.forward(request, response);
			}
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
