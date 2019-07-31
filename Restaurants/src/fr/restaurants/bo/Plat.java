package fr.restaurants.bo;

/**
 * @author Marc L. Harnist
 * 
 * Objet plat, affich� dans la page "Nos plats", plats.jsp et modifi�
 * dans la page "Ajouter un plat"
 * Les attributs sont enregistr�s dans la base de donn�e
 *
 */
public class Plat { 
	
	 private int id ;
	 private String descriptif;
	 private String ingredients;
	 private float prix;
	 private String url; // url de l'image: photo du plat
	 private String nom;
	 
	/**
	 *  Empty constructor for src/dal/PlatsDAOJdbcImpl 
	 */
	public Plat() {}
	

	/**
	 * @param descriptif D�scription du plat affich� sous le carrousel
	 * @param ingr�dients Liste des ingr�dients en cha�ne de caract�re
	 * @param prix Prix du plat
	 * @param uRL Adresse de l'image, photo du plat
	 * @param nom Nom du plat
	 */
	public Plat(String descriptif, String ingredients, float prix, String url, String nom) {
		setDescriptif(descriptif);
		setIngredients(ingredients);
		setPrix(prix);
		setUrl(url);
		setNom(nom);
	}

	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return the descriptif
	 */
	public String getDescriptif() {
		return descriptif;
	}

	/**
	 * @param descriptif the descriptif to set
	 */
	public void setDescriptif(String descriptif) {
		this.descriptif = descriptif;
	}

	/**
	 * @return the ingr�dients
	 */
	public String getIngredients() {
		return this.ingredients;
	}

	/**
	 * @param ingr�dients the ingr�dients to set
	 */
	public void setIngredients(String ingredients) {
		this.ingredients = ingredients;
	}

	/**
	 * @return the prix
	 */
	public float getPrix() {
		return prix;
	}

	/**
	 * @param prix the prix to set
	 */
	public void setPrix(float prix) {
		this.prix = prix;
	}

	/**
	 * @return the url
	 */
	public String getUrl() {
		return url;
	}

	/**
	 * @param url the url to set
	 */
	public void setUrl(String url) {
		this.url = url;
	}

	/**
	 * @return the nom
	 */
	public String getNom() {
		return nom;
	}

	/**
	 * @param nom the nom to set
	 */
	public void setNom(String nom) {
		this.nom = nom;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Plat [id=").append(id).append(", descriptif=").append(descriptif).append(", ingredients=")
				.append(ingredients).append(", prix=").append(prix).append(", url=").append(url).append(", nom=")
				.append(nom).append("]");
		return builder.toString();
	}
}
