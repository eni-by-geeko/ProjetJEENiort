package fr.restaurants.dal;

import java.util.List;

import fr.restaurants.bo.Ingredients;


public interface IngredientsDAO {
	public void insert(Ingredients ingredient);
	public void associer(int idPlat, int idIngredient);
	public List<Ingredients> selectByPlatId(int id);

}
