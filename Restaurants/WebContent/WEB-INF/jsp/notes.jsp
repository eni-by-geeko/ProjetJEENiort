<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Notation et commentaires</title>

<style>

/* Par défaut, une étoile est en gris,
   avec un padding et un curseur en forme de main. */
.fa-star {
	color: white;
	cursor: pointer;
	padding: 0.0625rem;
}
/* Si elle porte en plus la classe '.gold', elle sera en jaune. */
.fa-star.green {
	color: green;
}

/* Le parent global '.rating' positionne le groupe des étoiles et le lien en colonne */
.rating {
	display: flex;
	flex-direction: column;
	align-items: center;
}

	/* Le groupe '.stars' positionne les étoiles
		 les unes à côté des autres sans espacements. */
	.stars {
		display: inline-flex;
		justify-content: center;
		font-size: 1em;
	}

	/**
	 * Et là opère la magie du ':hover' !
	 */

	/* A l'état :hover sur le parent '.rating',
		 on force TOUTES les étoiles à passer en jaune. */
	.stars:hover .fa-star {
		color: green;
	}
	/* Et si la souris survole une étoile en particulier,
		 on sélectionne toutes les étoiles qui sont APRÈS celle-ci
		 grâce à l'opérateur '~' et on les force en GRIS */
	.stars .fa-star:hover ~ .fa-star {
		color: white;
	}

footer {
    position: fixed;
    bottom: 0;
    text-align : center;left: 50%;
    transform: translateX(-50%);
        }


	.row {
		display:inline-block
		
	}
	

</style>



</head>
<body onload="list('${statut}', '${personne.getMail()}');">

<jsp:include page="navBar.jsp"></jsp:include>
<p> mail : ${personne.getMail()}</p>
<c:choose>
	<c:when test="${statut=='admin' || statut=='client'}"> 			

		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<div class="row">
						<div class="col-md-10">
							<h3>
								Commentaires :
							</h3>
						</div>
						<div class="col-md-2">
							<h3>
								Note moyenne :
							</h3>
						</div>
					</div>
					<div class="row">
					
						<div class="col-md-2">
						</div>

						<div id="commentaires" class="col-md-8">
						</div>

						<div class="card text-white bg-primary mb-3 col-md-8" >
					  		<div class="card-header">Avis</div>
					  		<div class="card-body col-md-10">
					  			<textarea class="card-body col-md-12" rows="4" id="taCreation" placeholder="Créez un nouveau commentaire..." ></textarea>
								<div class="rating col-md-2">
									<a>note :</a>
									<div class="stars">
										<i href="star1" class="fa fa-star"></i>
										<i href="star2" class="fa fa-star"></i>
										<i href="star3" class="fa fa-star"></i>
										<i href="star4" class="fa fa-star"></i>
										<i href="star5" class="fa fa-star"></i>
									</div>
								</div>
								<input type="button" class="btn btn-warning" value="Ajouter" onclick="ajouter()" style="float: right;">
								
					  		</div>
						</div>
						
						<div class="col-md-2">
						</div>
					</div>
				</div>

			</div>
		</div>
	</c:when>
		
		
	<c:otherwise>
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<div class="row">
						<div class="col-md-10">
							<h3>
								Commentaires :
							</h3>
						</div>
						<div class="col-md-2">
							<h3>
								Note moyenne :
							</h3>
						</div>
					</div>
					<div class="row">
						<div class="col-md-2">
						</div>
						
						<div id="commentaires" class="col-md-8">
						</div>

						<div class="col-md-2">
						</div>
					</div>
				</div>
			</div>
		</div>
	</c:otherwise>
</c:choose>




<jsp:include page="scriptJS.jsp"></jsp:include>


 <footer class="text-center"><a href="<%=request.getContextPath()%>/ServletMentionsLegales"><strong>Mentions légales</strong></a></footer>

</body>
</html>