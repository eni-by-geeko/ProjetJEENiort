package fr.restaurants.dal;

import fr.restaurants.bo.Personne;

public interface PersonneDAO {

	public Personne getByEmail (String email);
	public Personne insert(Personne personne);
}
