package fr.restaurants.bo;

public class Tables {

private int numero;
private String statut;

public Tables() {
		// TODO Auto-generated constructor stub
	}
public Tables(int numero, String statut) {
	super();
	this.numero = numero;
	this.statut = statut;
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

}
