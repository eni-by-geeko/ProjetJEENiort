package fr.restaurants.bll;

import fr.restaurants.bo.Personne;
import fr.restaurants.dal.PersonneDAO;
import fr.restaurants.dal.PersonneDAOJdbcImpl;

public class PersonneManager {

// attribut
	
	private PersonneDAO personneDAO;
	
	// constructeur
	
	public PersonneManager() {
	this.personneDAO = new PersonneDAOJdbcImpl();	
	}
	
	public Personne getByEmail (String email) {
		
		return this.personneDAO.getByEmail (email);
		
		
		
	}
	
	
}
