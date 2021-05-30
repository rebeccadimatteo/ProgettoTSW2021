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
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletRecensioni() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/adminrecensioni.jsp");
		rd.forward(request, response);
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String id=request.getParameter("id");
		 String descr=request.getParameter("arearec");
		 Recensione nuova=new Recensione(0,descr,id);
		
		 nuova.inseriscirecensione();
		
		RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/HomePage.jsp");
		rd.forward(request, response);
		
		
		
	}

}
