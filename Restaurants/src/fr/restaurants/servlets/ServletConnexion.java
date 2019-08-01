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
	
    // Attribut
	private static final long serialVersionUID = 1L;
	private int tentative;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletConnexion() {
        super();
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

		RequestDispatcher rd = null;
		// Recuperation des donnï¿½es
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		// Transaction avec la base de donnï¿½es
		Personne personne=null;
		PersonneManager pm =new PersonneManager(); 
		personne= pm.getByEmail(email);
		
		
			if (personne.getMail()==null) {
				
				request.setAttribute ("erreur", "Votre email est invalide");
				tentative++;
				
				
			} else {
				
				if (password.equals(personne.getPassword())) {
					
					//Le membre est connu, tout va bien, on continue
					HttpSession session = request.getSession();
					session.setAttribute("statut", personne.getStatut());
					
					// Transaction avec la base de donnï¿½es
					Personne personneComplete = null;
					personneComplete = pm.getAllByEmail(email);
					
					
					//Marc: ajout des données de la personne pour la page compte (modifier son profil)
					session.setAttribute("personne", personneComplete);

					rd = request.getRequestDispatcher("/accueil");

				}
				else {
					
					request.setAttribute("erreur","Votre mot de passe est incorrect");
					tentative++;
					
				}
				
			}
		if (tentative==3) {
			tentative=0;


			rd = request.getRequestDispatcher("/inscription");

		}

		if (rd == null)
			rd = request.getRequestDispatcher("/WEB-INF/jsp/connexion.jsp");
		rd.forward(request, response);
		
	}
	

}