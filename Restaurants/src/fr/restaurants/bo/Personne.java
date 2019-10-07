package fr.restaurants.bo;

public class Personne {

	//Attribut
	
	private int id_personnes;
	private String statut;
	private String nom;
	private String prenom;
	private int tel;
	private String mail;
	private String commentaire;
	private String password;
	
	
	// constructeurs
	public Personne() {}
	
	/**
	 * @param id_personnes pour la db
	 * @param statut admin ou client
	 * @param nom nom
	 * @param prenom prénom
	 * @param tel n° de tél
	 * @param mail email
	 * @param commentaire "Comment avez-vous trouvé le site?"
	 * @param password mot de passe
	 */
	public Personne(String statut, String nom, String prenom, int tel, String mail, String commentaire, String password) {
		setStatut(statut);
		setNom(prenom);
		setPrenom(prenom);
		setTel(tel);
		setMail(mail);
		setCommentaire(commentaire);
		setPassword(password);
	}

	
	public Personne(String nom) {
		super();
		this.nom = nom;
	}

	public int getId_personnes() {
		return id_personnes;
	}


	public void setId_personnes(int id_personnes) {
		this.id_personnes = id_personnes;
	}


	public String getStatut() {
		return statut;
	}


	public void setStatut(String statut) {
		this.statut = statut;
	}


	public String getNom() {
		return nom;
	}


	public void setNom(String nom) {
		this.nom = nom;
	}


	public String getPrenom() {
		return prenom;
	}


	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}


	public int getTel() {
		return tel;
	}


	public void setTel(int tel) {
		this.tel = tel;
	}


	public String getMail() {
		return mail;
	}


	public void setMail(String mail) {
		this.mail = mail;
	}


	public String getCommentaire() {
		return commentaire;
	}


	public void setCommentaire(String commentaire) {
		this.commentaire = commentaire;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Personne [id_personnes=").append(id_personnes).append(", statut=").append(statut)
				.append(", nom=").append(nom).append(", prenom=").append(prenom).append(", tel=").append(tel)
				.append(", mail=").append(mail).append(", commentaire=").append(commentaire).append(", password=")
				.append(password).append("]");
		return builder.toString();
	}
	

	
	
	
	
	
	
}
