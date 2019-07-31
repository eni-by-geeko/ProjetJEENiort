package fr.restaurants.bo;

public class Ingredients {

	private int id;
	private String nom;
	
	public Ingredients() {
		
	}
	
	
	public Ingredients(String nom) {
		super();
		this.nom = nom;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getNom() {
		return nom;
	}


	public void setNom(String nom) {
		this.nom = nom;
	}
	
	
	
	
	
	
}
