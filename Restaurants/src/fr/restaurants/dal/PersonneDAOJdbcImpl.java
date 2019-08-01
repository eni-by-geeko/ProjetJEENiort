package fr.restaurants.dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Logger;

import fr.restaurants.bo.Personne;


public class PersonneDAOJdbcImpl implements PersonneDAO {

	private static final String SELECT_BY_EMAIL = "SELECT mail, Mot_De_Passe, statut from Personnes WHERE mail= ?";
	public static Logger logger = Logger.getLogger("Test");
	
	@Override
	public Personne getByEmail(String email) {
		
		Personne personne = new Personne ();
		
		try (Connection cnx = ConnectionProvider.getConnection ()){
			
			PreparedStatement pstmt = cnx.prepareStatement(SELECT_BY_EMAIL);
			pstmt.setString(1, email);
			ResultSet rs  = pstmt.executeQuery();
			
			if(rs.next())
			{
				
				personne.setMail(rs.getString(1));
				personne.setPassword(rs.getString(2));
				personne.setStatut(rs.getString(3));
				
			}
			
		} catch (SQLException e) {
			
			logger.severe("Crash en vue : "+ e.getMessage());
		}
		
		
		return personne;
	}

}
