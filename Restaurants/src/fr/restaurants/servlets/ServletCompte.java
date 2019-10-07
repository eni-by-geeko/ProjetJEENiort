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
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/jsp/compte.jsp");
		rd.forward(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		/* Get form data from compte.jsp
		/* <input type="text" name="name"  class="form-control my-input" id="name" placeholder="Nom" value="${personne.getNom()}" >
           <input type="text" name="prenom"  class="form-control my-input" id="prenom" placeholder="Prénom" value="${personne.getPrenom()}" >
           <input type="email" name="email"  class="form-control my-input" id="email" placeholder="Email"  value="${personne.getMail()}" >
           <input type="password"  name="password" id="password"  class="form-control my-input" placeholder="Mot de passe" value="${personne.getPassword()}" >
        */ 	
		// Recuperation des données
		String nom = request.getParameter("name");
		String prenom = request.getParameter("prenom");
		String mail = request.getParameter("email");
		String password = request.getParameter("password");
		
		// Transaction avec la base de données
		Personne personne = null;
		PersonneManager pm =new PersonneManager(); 
		personne = pm.getAllByEmail(mail);
		
		// Modification de l'objet personne
		personne.setNom(nom);
		personne.setPrenom(prenom);
		personne.setMail(mail);
		personne.setPassword(password);
				
		// Modification de la db
		personne = pm.update(personne);
		
		HttpSession session = request.getSession();
		session.setAttribute("personne", personne);
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/jsp/compte.jsp");
		rd.forward(request, response);		
	}
}