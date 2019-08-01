<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
</style>



</head>
<body>

	<jsp:include page="navBar.jsp"></jsp:include>

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
			
				
				<div class="card text-white bg-primary mb-3 col-md-8" >
			  		<div class="card-header">Avis</div>
			  		<div class="card-body col-md-10">
					  	<textarea class="card-body col-md-10" rows="4" >
								fgsqdfgfdq
						</textarea>
						<div class="rating col-md-2">
							<h3>
								note :
							</h3>
							<div class="stars">
								<i href="star1" class="fa fa-star"></i>
								<i href="star2" class="fa fa-star"></i>
								<i href="star3" class="fa fa-star"></i>
								<i href="star4" class="fa fa-star"></i>
								<i href="star5" class="fa fa-star"></i>
							</div>
						</div>
			  		</div>

				</div>
				<div class="col-md-2">
				</div>
			</div>
		</div>
	</div>
</div>






	<jsp:include page="scriptJS.jsp"></jsp:include>

</body>
</html>