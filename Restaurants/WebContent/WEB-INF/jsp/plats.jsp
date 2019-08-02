<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Nos plats</title>

<style> body {background-color: black;} img {height:500px; border-radius:15px;} 

/* Par défaut, une étoile est en gris,
   avec un padding et un curseur en forme de main. */
.fa-star {
	color: gray;
	cursor: pointer;
	padding: 0.0625rem;
}
/* Si elle porte en plus la classe '.gold', elle sera en jaune. */
.fa-star.blue {
	color: blue;
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
		color: blue;
	}
	/* Et si la souris survole une étoile en particulier,
		 on sélectionne toutes les étoiles qui sont APRÈS celle-ci
		 grâce à l'opérateur '~' et on les force en GRIS */
	.stars .fa-star:hover ~ .fa-star {
		color: gray;
	}

footer {
    position: fixed;
    bottom: 0;
    text-align : center;left: 50%;
    transform: translateX(-50%);
        }



</style>

<!--  Bootstrap  -->
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

</head>
<body>

<jsp:include page="navBar.jsp"></jsp:include>

<header class="row">
	<div class="col-lg-12 mt-3">
		<h1 class="text-center">101 Recettes Gourmandes</h1>
		<h2 class="text-center">Nos plats</h2>
	</div>
</header>
	
<!-- ############################ ZONE TEST A SUPPRIMER A LA FIN DES TEST ######################### -->
<%-- //Delete this line to active the code below
 <c:forEach var="plat" items="${listePlats}">
		 - ${plat.toString()}<br>
</c:forEach>
//Delete this line if code above active --%>
<!-- ############################# FIN ZONE TEST ################################################### -->

<div class="container-item mt-3">
	<div class="row">
		<div class="col-lg-6 offset-lg-3">
			<div class="carousel slide" id="carousel-564796">
				<ol class="carousel-indicators">
					<c:forEach var="plat" items="${listePlats}">
						<li data-slide-to="${plat.getId()}" data-target="#carousel-564796" class="<c:if test='${plat.getId() == 1}'>active</c:if>"></li>
					</c:forEach>
				</ol>

				<div class="carousel-inner">
					<!-- La première image doit être nommée "active" pour le framework Bootstrap -->
					<c:forEach var="plat" items="${listePlats}">
						<div class="carousel-item <c:if test='${plat.getId() == 1}'>active</c:if>">
							<img class="d-block w-100" alt="Plat n°${plat.getId()} src:PlatN${plat.getId()}.jpg"
									src="${pageContext.request.contextPath}/img/PlatN${plat.getId()}.jpg" />
							<div class="carousel-caption">
								<h4>${plat.getNom()}</h4>
								<p>${plat.getDescriptif()}</p>
								<p><%-- ${plat.getIngredients()} --%></p>
								<p>${plat.getIngredients()}</p>
							</div>
						</div>
					</c:forEach>	
				</div> <a class="carousel-control-prev" href="#carousel-564796" data-slide="prev"><span class="carousel-control-prev-icon"></span> <span class="sr-only">Previous</span></a> <a class="carousel-control-next" href="#carousel-564796" data-slide="next"><span class="carousel-control-next-icon"></span> <span class="sr-only">Next</span></a>
			</div>
		</div>
	</div>
</div>
<br>
<div class="rating">
	<div class="stars">
		<i href="star1" class="fa fa-star"></i>
		<i href="star2" class="fa fa-star"></i>
		<i href="star3" class="fa fa-star"></i>
		<i href="star4" class="fa fa-star"></i>
		<i href="star5" class="fa fa-star"></i>
	</div>
	<a href="${pageContext.request.contextPath}/notes">Voir les avis et noter ce plat</a>
</div>


<jsp:include page="scriptJS.jsp"></jsp:include>
<footer class="text-center"><a href="<%=request.getContextPath()%>/ServletMentionsLegales"><strong>Mentions légales</strong></a></footer>

</body>
</html>