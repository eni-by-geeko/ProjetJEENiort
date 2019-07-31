package fr.restaurants.bll;

import java.util.List;

import fr.restaurants.bo.Tables;
import fr.restaurants.dal.TablesDAO;
import fr.restaurants.dal.TablesDAOJdbcImpl;

public class TablesManager {
	
	private TablesDAO tablesDao;
	
	public TablesManager() {
		this.tablesDao = new TablesDAOJdbcImpl();
	}


	public List<Tables> selectAll() {
		return tablesDao.selectAll();
	}
	public List<Tables> selectAllByRestaurants(int i){
		return tablesDao.selectAllByRestaurants(i);		
	};
}
