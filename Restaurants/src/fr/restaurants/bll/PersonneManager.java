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

	public Personne ajouter(String statut, String nom, String prenom, int tel, String mail, String commentaire, String password) {
		Personne personne = new Personne(statut, nom, prenom, tel, mail, commentaire, password);
		return personne;
	}

	/**
	 * @param personneInsert renseignée dans la page inscription.jsp puis ServletInscription
	 * @return reponse sql: insert
	 */
	public Personne insert(Personne personneInsert) {
		return this.personneDAO.insert(personneInsert);
	}
}
