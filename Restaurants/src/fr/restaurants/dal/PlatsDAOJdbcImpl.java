package fr.restaurants.dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import fr.restaurants.bo.Plat;

public class PlatsDAOJdbcImpl implements PlatDAO {
	
	private static final String SELECT_ALL = "SELECT ID_Plats, Descriptif, Ingredients, Prix, URL, Nom FROM Plats";
	private static final String INSERT = "INSERT INTO plats(Descriptif, Ingredients, Prix, URL, Nom) VALUES(? , ? , ? , ? , ?)";

	@Override
	public List<Plat> selectAll() {
		List<Plat> listePlats = new ArrayList<Plat>();
		try(Connection cnx = ConnectionProvider.getConnection()){
			PreparedStatement pstmt = cnx.prepareStatement(SELECT_ALL);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				Plat plat = new Plat();
				plat.setId(rs.getInt(1));
				plat.setDescriptif(rs.getString(2));
				plat.setIngredients(rs.getString(3));
				plat.setPrix(rs.getFloat(4));
				plat.setUrl(rs.getString(5));
				plat.setNom(rs.getString(6));
				listePlats.add(plat);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listePlats;
	}

	@Override
	public void insert(Plat plat) {
		try(Connection cnx = ConnectionProvider.getConnection())
		{
			PreparedStatement pstmt = cnx.prepareStatement(INSERT, PreparedStatement.RETURN_GENERATED_KEYS);
			pstmt.setString(1, plat.getDescriptif());
			pstmt.setString(2, plat.getIngredients());
			pstmt.setFloat(3, plat.getPrix());
			pstmt.setString(4, plat.getUrl());
			pstmt.setString(5, plat.getNom());
			
			pstmt.executeUpdate();
			ResultSet rs = pstmt.getGeneratedKeys();
			if (rs.next())
			{
				plat.setId(rs.getInt(1));
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}
	
}