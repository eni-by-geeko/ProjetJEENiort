package fr.restaurants.bo;

import java.util.Date;

public class Reservations {
private Date date;
private Date heure;
private int nbrePersonnes; 
private Personne personne;


public Reservations() {
	super();
}


public Reservations(Date date, Date heure, int nbrePersonnes) {
	super();
	this.date = date;
	this.heure = heure;
	this.nbrePersonnes = nbrePersonnes;
}


public Reservations(Date date, Date heure, int nbrePersonnes, Personne personne) {
	super();
	this.date = date;
	this.heure = heure;
	this.nbrePersonnes = nbrePersonnes;
	this.personne = personne;
}


public Date getDate() {
	return date;
}


public void setDate(Date date) {
	this.date = date;
}


public Date getHeure() {
	return heure;
}


public void setHeure(Date heure) {
	this.heure = heure;
}


public int getNbrePersonnes() {
	return nbrePersonnes;
}


public void setNbrePersonnes(int nbrePersonnes) {
	this.nbrePersonnes = nbrePersonnes;
}


public Personne getPersonne() {
	return personne;
}


public void setPersonne(Personne personne) {
	this.personne = personne;
}


}
