package fr.restaurants.dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import fr.restaurants.bo.Tables;


public class TablesDAOJdbcImpl implements TablesDAO {
	private static final String SELECT_ALL_TABLES = "SELECT ID_Tables, Numero, Statut from Tables";
	private static final String SELECT_ALL_TABLES_BY_RESTAURANTS = "SELECT ID_Tables, Numero, Statut from Tables where ID_Tables_Restaurants=?";
	
	@Override
	public List<Tables> selectAll() {
		List<Tables> tables = new ArrayList<Tables>();
		try (Connection cnx = ConnectionProvider.getConnection ()){
			
			PreparedStatement pstmt = cnx.prepareStatement(SELECT_ALL_TABLES);		
			ResultSet rs  = pstmt.executeQuery();			
			while(rs.next())
			{
				Tables table = new Tables();
				table.setId(rs.getInt(1));
				table.setNumero(rs.getInt(2));
				table.setStatut(rs.getString(3));
				tables.add(table);
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return tables;
	}
	public List<Tables> selectAllByRestaurants(int i) {
		List<Tables> tables = new ArrayList<Tables>();
		try (Connection cnx = ConnectionProvider.getConnection ()){
			
			PreparedStatement pstmt = cnx.prepareStatement(SELECT_ALL_TABLES_BY_RESTAURANTS);
			pstmt.setInt(1,Integer.valueOf(i) );
			ResultSet rs  = pstmt.executeQuery();			
			while(rs.next())
			{
				Tables table = new Tables();
				table.setId(rs.getInt(1));
				table.setNumero(rs.getInt(2));
				table.setStatut(rs.getString(3));
				tables.add(table);
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return tables;
	}
}
