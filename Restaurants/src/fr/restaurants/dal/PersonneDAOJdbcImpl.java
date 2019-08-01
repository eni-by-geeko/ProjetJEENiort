package fr.restaurants.dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import fr.restaurants.bo.Personne;


/**
 * @author Titmumu: gestion de la base de donnée
 * Ajout et lecture de la table Personnes
 *
 */
public class PersonneDAOJdbcImpl implements PersonneDAO {

	private static final String SELECT_BY_EMAIL = "SELECT mail, Mot_De_Passe, statut from Personnes WHERE mail= ?";
	private static final String INSERT = "INSERT INTO Personnes (Statut, Nom, Prenom, Tel, Mail, Commentaire, Mot_De_Passe) values (?,?,?,?,?,?,?)";
	/**
	 * @param personne Ajout d'une personne dans la base de donnée par Marc
	 * @return 
	 */
	@Override
	public Personne insert(Personne personne) {
		
		try(Connection connexion = ConnectionProvider.getConnection()){
			PreparedStatement pstmt = connexion.prepareStatement(INSERT, PreparedStatement.RETURN_GENERATED_KEYS);
			pstmt.setString(1, personne.getStatut());
			pstmt.setString(2, personne.getNom());
			pstmt.setString(3, personne.getPrenom());
			pstmt.setInt(4, personne.getTel());
			pstmt.setString(5, personne.getMail());
			pstmt.setString(6, personne.getCommentaire());
			pstmt.setString(7, personne.getPassword());
			
			pstmt.executeUpdate();
			ResultSet rs = pstmt.getGeneratedKeys();
			if (rs.next())
			{
				System.out.println(rs.getInt(1));
			}
			
		} catch (SQLException erreurInsertionPersonneDB) {
			// TODO Auto-generated catch block
			erreurInsertionPersonneDB.printStackTrace();
		}
		return null;
	}
	
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
			
			e.printStackTrace();
		}
		
		
		return personne;
	}

}
