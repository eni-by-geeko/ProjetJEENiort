package fr.restaurants.rest;

import java.util.ArrayList;
import java.util.List;


import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;

import fr.restaurants.bo.Tables;

@Path("/tables")
public class GestionTables {
	private static List<Tables> tables = new ArrayList<Tables>();
	
	
	static {
		tables.add(new Tables(0, "libre"));
		tables.add(new Tables(1, "occupee"));
		tables.add(new Tables(3, "commande"));
		tables.add(new Tables(4, "reserve"));
		tables.add(new Tables(5, "reserve"));
		tables.add(new Tables(6, "libre"));
		tables.add(new Tables(7, "commande"));
		tables.add(new Tables(8, "reserve"));
		
	}
	
	@GET
	public List<Tables> getNotes() {
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
