package fr.restaurants.bo;

import java.util.Date;

public class Commentaire {
	
	private int id;
	private String texte;
	private float note;
	private Date date; // = new Date();

    //formater = new SimpleDateFormat("'le' dd MMMM yyyy 'à' hh:mm:ss");
    //System.out.println(formater.format(date));
	
	
	public Commentaire() {
		super();
	}


	public Commentaire(int id, String texte, float note, Date date) {
		super();
		this.id = id;
		this.texte = texte;
		this.note = note;
		this.date = date;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getTexte() {
		return texte;
	}


	public void setTexte(String texte) {
		this.texte = texte;
	}


	public float getNote() {
		return note;
	}


	public void setNote(float note) {
		this.note = note;
	}


	public Date getDate() {
		return date;
	}


	public void setDate(Date date) {
		this.date = date;
	}
	
	
	
	
	

}
