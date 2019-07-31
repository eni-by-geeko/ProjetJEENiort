package fr.restaurants.dal;

import java.util.List;

import fr.restaurants.bo.Tables;

public interface TablesDAO {

	List<Tables> selectAll();
	List<Tables> selectAllByRestaurants(int i);

}
