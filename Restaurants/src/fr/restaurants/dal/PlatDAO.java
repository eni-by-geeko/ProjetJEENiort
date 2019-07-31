package fr.restaurants.dal;

import java.util.List;

import fr.restaurants.bo.Plat;

public interface PlatDAO {
	// public void insert(Plat plat); // à venir
	public List<Plat> selectAll();
}
