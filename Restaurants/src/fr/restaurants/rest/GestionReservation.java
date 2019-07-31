package fr.restaurants.rest;

import javax.ws.rs.GET;
import javax.ws.rs.Path;

import fr.restaurants.bll.ReservationsManager;
import fr.restaurants.bo.Reservations;

@Path("/tables")
public class GestionReservation {
	private static Reservations reservations;	
	
	@GET
	public Reservations getReservations() {
		ReservationsManager rsrv = new ReservationsManager();
		Reservations reservations = rsrv.selectById();	
		return reservations;
	}	
	
	

	
	
}
