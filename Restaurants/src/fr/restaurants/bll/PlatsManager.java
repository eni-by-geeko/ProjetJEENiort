package fr.restaurants.bll;

import java.util.List;

import fr.restaurants.bo.Plat;
import fr.restaurants.dal.PlatDAO;
import fr.restaurants.dal.PlatsDAOJdbcImpl;

public class PlatsManager {
	
	private PlatDAO platDAO;
	
	public PlatsManager() {
		this.platDAO = new PlatsDAOJdbcImpl();
		
	}


	public List<Plat> selectAll(){
		List<Plat> listeDesPlats = platDAO.selectAll();
		
		return listeDesPlats;
	}
	
}
