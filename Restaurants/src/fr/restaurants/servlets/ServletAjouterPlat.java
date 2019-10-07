package fr.restaurants.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.restaurants.bll.PlatsManager;
import fr.restaurants.bo.Ingredients;
import fr.restaurants.bo.Plat;

/**
 * Servlet implementation class ServletAjouterPlat
 */
@WebServlet("/ajouterPlat")
public class ServletAjouterPlat extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletAjouterPlat() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/jsp/ajouterPlat.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
				// Recuperation des donnees de la jsp
				String nom = request.getParameter("nomDuPlat");
				float prix = Float.parseFloat(request.getParameter("prix"));
				String descriptif = request.getParameter("descriptif");
				String url = request.getParameter("url");
				String ingredients = request.getParameter("ingredients");
				
				
				// Formatage des données
				List<String> ingredientsAsStringList = Arrays.asList(ingredients.split(","));
				List<Ingredients> ingredientsAsList = new ArrayList<Ingredients>();
				for(String alim : ingredientsAsStringList) {
					ingredientsAsList.add(new Ingredients(alim.trim()));
				}
				
				// Début de la transaction avec la base de données
				PlatsManager pm = new PlatsManager();
				Plat platInsere = pm.ajouter(descriptif, ingredients, prix, url, nom);
				pm.insererMultiple(platInsere.getId(), ingredientsAsList);
				
				RequestDispatcher rd = request.getRequestDispatcher("/Plats");
				rd.forward(request, response);
	}

}
