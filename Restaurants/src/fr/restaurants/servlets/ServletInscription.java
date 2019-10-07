package fr.restaurants.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.restaurants.bll.PersonneManager;
import fr.restaurants.bo.Personne;

/**
 * Servlet implementation class Inscription
 */
@WebServlet("/inscription")
public class ServletInscription extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletInscription() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/jsp/inscription.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//Get form data
		//int id_personnes = request.getParameter(""); //NOT USED IN DB auto-incrementation
		String statut = "client";
		String nom = request.getParameter("name");
		String prenom = request.getParameter("prenom");
		int tel = 0; // Remplacé par 0 ici.
		String mail = request.getParameter("email");
		String commentaire = request.getParameter("commentaire");
		String password = request.getParameter("password");		
		
		//Prepare db et insert Personne dans la table Personnes
		PersonneManager pm = new PersonneManager();
		Personne personneInsert = pm.ajouter(statut, nom, prenom, tel, mail, commentaire, password);
		pm.insert(personneInsert);
		
		RequestDispatcher rd = request.getRequestDispatcher("/accueil");
		rd.forward(request, response);
	}

}
