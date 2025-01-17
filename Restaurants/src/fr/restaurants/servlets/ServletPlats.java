package fr.restaurants.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.restaurants.bll.PlatsManager;
import fr.restaurants.bo.Plat;

/**
 * Servlet implementation class Plats
 */
@WebServlet("/Plats")
public class ServletPlats extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletPlats() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		/**
		 *  suite des travaux: installer la librairie sqljdbc42.jar dans la bonne librairie
		 * 
		 */
		//R�cup�re les infos de la db
		PlatsManager pm = new PlatsManager();
		List<Plat> listePlats = pm.selectAll();
		
		// Stock l'info pour la jsp
		request.setAttribute("listePlats", listePlats);
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/jsp/plats.jsp");
		rd.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
