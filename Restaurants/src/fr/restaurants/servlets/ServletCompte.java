package fr.restaurants.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fr.restaurants.bll.PersonneManager;
import fr.restaurants.bo.Personne;

/**
 * Servlet implementation class connexion
 */
@WebServlet("/compte")
public class ServletCompte extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
     * @see HttpServlet#HttpServlet()
     */
    public ServletCompte() {super();}
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();

		System.out.println(session.getAttribute("statut"));
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/jsp/compte.jsp");
		rd.forward(request, response);
	}
		
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		// Recuperation des données
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		// Transaction avec la base de données
		Personne personne=null;
		PersonneManager pm =new PersonneManager(); 
		personne= pm.getByEmail(email);
		
			if (personne.getMail()==null) {
				request.setAttribute ("erreur", "Votre email est invalide");
				
			} else {
				
				if (password.equals(personne.getPassword())) {
					HttpSession session = request.getSession();
					session.setAttribute("statut", personne.getStatut());

					RequestDispatcher rd = request.getRequestDispatcher("/accueil");
					rd.forward(request, response);					
				}
				else {
					
					request.setAttribute("erreur","Votre mot de passe est incorrect");
				}
			}
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/jsp/compte.jsp");
		rd.forward(request, response);		
	}
}