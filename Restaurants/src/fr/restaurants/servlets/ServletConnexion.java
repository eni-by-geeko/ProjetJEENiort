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
@WebServlet("/connexion")
public class ServletConnexion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       // Attribut
	private int tentative;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletConnexion() {
        super();
        // TODO Auto-generated constructor stub
    }
@Override
public void init() throws ServletException {
	 tentative = 0;
	super.init();
}
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.setMaxInactiveInterval(60*10);
		int compteurAccesPendantSession=0;
		if(session.getAttribute("compteurAcces")!=null) 
		{
			compteurAccesPendantSession=(int)session.getAttribute("compteurAcces");
		}
		compteurAccesPendantSession+=1;
		session.setAttribute("compteurAcces", compteurAccesPendantSession);
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/jsp/connexion.jsp");
		rd.forward(request, response);
		
	}
		
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		// Recuperation des donn�es
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		// Transaction avec la base de donn�es
		Personne personne=null;
		PersonneManager pm =new PersonneManager(); 
		personne= pm.getByEmail(email);
		
		
			if (personne.getMail()==null) {
				
				request.setAttribute ("erreur", "Votre email est invalide");
				tentative++;
				
				
			} else {
				
				if (password.equals(personne.getPassword())) {
					HttpSession session = request.getSession();
					session.setAttribute("statut", personne.getStatut());

					RequestDispatcher rd = request.getRequestDispatcher("/accueil");
					rd.forward(request, response);					
				}
				else {
					
					request.setAttribute("erreur","Votre mot de passe est incorrect");
					tentative++;
					
				}
				
			}
		if (tentative==3) {
			tentative=0;

			RequestDispatcher rd = request.getRequestDispatcher("/inscription");

			rd.forward(request, response);
		}
		else {
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/jsp/connexion.jsp");
			rd.forward(request, response);
		}
				
		
	}
	

}
