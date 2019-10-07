package fr.restaurants.rest;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.ws.rs.DELETE;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;

import fr.restaurants.bo.Commentaire;

@Path("/commentaires")
public class GestionCommentaires {
	
	private static List<Commentaire> commentaires = new ArrayList<Commentaire>();
	private static int i;

	static {
		commentaires.add(new Commentaire(0, "J'aime pas le poireau !", 2.2f, new Date()));
		commentaires.add(new Commentaire(1, "C'était trés bon", 4.8f, new Date()));
		i = 2;
	}
	
	@GET
	public List<Commentaire> getNotes() {
		return commentaires;
	}
	
	@POST
	public Commentaire ajouterCommentaire(
			@FormParam("texte") String texte, @FormParam("note") float note)
	{
		Commentaire commentaire = new Commentaire(i++, texte, note, new Date());
		commentaires.add(commentaire);
		return commentaire;
	}
	
	@PUT
	@Path("/{id : \\d+}")
	public Commentaire modifierCommentaire(
			@PathParam("id") int id,
			@FormParam("texte") String texte)
	{
		Commentaire commentaireAModifier = null;
		for(Commentaire commentaire : commentaires)
		{
			if(commentaire.getId()==id)
			{
				commentaire.setTexte(texte);
				commentaireAModifier=commentaire;
				break;
			}
		}
		return commentaireAModifier;
	}
	
	@DELETE
	@Path("/{id : \\d+}")
	public boolean supprimerCommentaire(@PathParam("id") int id)
	{
		Commentaire commentaireASupprimer = null;
		for(Commentaire commentaire : commentaires)
		{
			if(commentaire.getId()==id)
			{
				commentaireASupprimer=commentaire;
				break;
			}
		}
		return commentaires.remove(commentaireASupprimer);
	}
	

}
