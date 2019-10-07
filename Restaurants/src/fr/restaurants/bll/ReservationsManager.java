package fr.restaurants.bll;

import fr.restaurants.bo.Reservations;
import fr.restaurants.dal.ReservationsDAO;
import fr.restaurants.dal.ReservationsDAOJdbcImpl;

public class ReservationsManager {
private ReservationsDAO reservationsDAO;
	
	public ReservationsManager() {
		this.reservationsDAO = new ReservationsDAOJdbcImpl();
	}


	public Reservations selectById() {
		return reservationsDAO.selectById();
	}
}
