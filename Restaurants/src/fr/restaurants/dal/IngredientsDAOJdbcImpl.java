package fr.restaurants.dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

import fr.restaurants.bo.Ingredients;

public class IngredientsDAOJdbcImpl implements IngredientsDAO {
	
	private static final String INSERT = "INSERT INTO ingredients(Nom_Ingredient) VALUES(?);";
	private static final String ASSOCIATION = "INSERT INTO asso_plat_ingredient(ID_plat, ID_ingredients) VALUES(?,?);";
	private static final String SELECT_BY_PLAT_ID = "SELECT ali.nom FROM asso_plat_ingredients api, ingredients ali WHERE api.id_plat = ? AND ara.id_ingredient=ali.id;";
	public static Logger logger = Logger.getLogger("Test");
	
	public void insert(Ingredients ingredients) {
		try(Connection cnx = ConnectionProvider.getConnection())
		{
			PreparedStatement pstmt = cnx.prepareStatement(INSERT, PreparedStatement.RETURN_GENERATED_KEYS);
			pstmt.setString(1, ingredients.getNom());
			pstmt.executeUpdate();
			ResultSet rs = pstmt.getGeneratedKeys();
			if (rs.next())
			{
				ingredients.setId(rs.getInt(1));
			}
		}
		catch (Exception e)
		{
			logger.severe("Crash en vue : "+ e.getMessage());
		}
	}
	
	public void associer(int idPlat, int idIngredient) {
		try(Connection cnx = ConnectionProvider.getConnection())
		{
			PreparedStatement pstmt = cnx.prepareStatement(ASSOCIATION, PreparedStatement.RETURN_GENERATED_KEYS);
			pstmt.setInt(1, idPlat);
			pstmt.setInt(2, idIngredient);
			pstmt.executeUpdate();
		}
		catch(Exception e)
		{
			logger.severe("Crash en vue : "+ e.getMessage());
		}	
	}
	
	public List<Ingredients> selectByPlatId(int id) {
		List<Ingredients> aliments = new ArrayList<Ingredients>();
		try(Connection cnx = ConnectionProvider.getConnection())
		{
			PreparedStatement pstmt = cnx.prepareStatement(SELECT_BY_PLAT_ID, PreparedStatement.RETURN_GENERATED_KEYS);
			pstmt.setInt(1, id);
			ResultSet rs  = pstmt.executeQuery();
			
			while(rs.next())
			{
				Ingredients tmp = new Ingredients();
				tmp.setNom(rs.getString(1));
				aliments.add(tmp);
			}
		}
		catch(Exception e)
		{
			logger.severe("Crash en vue : "+ e.getMessage());
		}
		return aliments;
	}
	
	
	

}
