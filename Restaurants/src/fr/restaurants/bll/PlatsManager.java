package fr.restaurants.bll;

import java.util.List;

import fr.restaurants.bo.Ingredients;
import fr.restaurants.bo.Plat;
import fr.restaurants.dal.IngredientsDAO;
import fr.restaurants.dal.IngredientsDAOJdbcImpl;
import fr.restaurants.dal.PlatDAO;
import fr.restaurants.dal.PlatsDAOJdbcImpl;


public class PlatsManager {
	
	private PlatDAO platDAO;
	private IngredientsDAO ingredientsDao;
	
	public PlatsManager() {
		this.platDAO = new PlatsDAOJdbcImpl();
		this.ingredientsDao = new IngredientsDAOJdbcImpl();
	}
 
	public Plat ajouter(String descriptif, String ingredients, float prix, String url, String nom) {
		Plat plat = new Plat(descriptif, ingredients, prix, url, nom);
		platDAO.insert(plat);
		return plat;
	}
	
	public void insererMultiple(int idRepas, List<Ingredients> ingredients) {
		for(Ingredients ingredient : ingredients) {
			ingredientsDao.insert(ingredient);
			ingredientsDao.associer(idRepas, ingredient.getId());
		}
	}
	public List<Plat> selectAll(){
		List<Plat> listeDesPlats = platDAO.selectAll();
		
		return listeDesPlats;
	}
	
}
