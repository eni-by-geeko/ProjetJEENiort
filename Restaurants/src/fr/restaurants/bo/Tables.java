package fr.restaurants.bo;

public class Tables {
private int id;
private int numero;
private String statut;
private Reservations reservations;


public Tables() {
		// TODO Auto-generated constructor stub
	}
public Tables(int numero, String statut) {
	super();
	this.numero = numero;
	this.statut = statut;
}

public Tables(int id, int numero, String statut, Reservations reservations) {
	super();
	this.id = id;
	this.numero = numero;
	this.statut = statut;
	this.reservations = reservations;
}
public int getNumero() {
	return numero;
}
public void setNumero(int numero) {
	this.numero = numero;
}
public String getStatut() {
	return statut;
}
public void setStatut(String statut) {
	this.statut = statut;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public Reservations getReservation() {
	return reservations;
}
public void setReservations(Reservations reservations) {
	this.reservations = reservations;
}


}
