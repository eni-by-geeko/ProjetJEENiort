package fr.restaurants.rest;

import java.util.ArrayList;
import java.util.List;


import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;

import fr.restaurants.bll.TablesManager;
import fr.restaurants.bo.Tables;

@Path("/tables")
public class GestionTables {
	private static List<Tables> tables = new ArrayList<Tables>();	
	
	@GET
	public List<Tables> getTables() {
		TablesManager tm = new TablesManager();
		List<Tables> tables = tm.selectAll();	
		return tables;
	}
	@GET
	@Path("/{id : \\d+}")
	public List<Tables> getTables(@PathParam("id") int id) {		
		TablesManager tm = new TablesManager();
		List<Tables> tables = tm.selectAllByRestaurants(id);	
		return tables;
	}
	
	
	@PUT
	@Path("/{numero : \\d+}")
	public Tables modifierNote(
			@PathParam("numero") int numero,
			@FormParam("value") String value)
	{
		Tables noteAModifier = null;
		for(Tables table : tables)
		{
			if(table.getNumero()==numero)
			{
				table.setStatut(value);
				noteAModifier=table;
				break;
			}
		}
		return noteAModifier;
	}
	
	
}
