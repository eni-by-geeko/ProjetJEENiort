<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Nos plats</title>

<style> body {background-color: black;} img {height:500px; border-radius:15px;} </style>

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
<jsp:include page="scriptJS.jsp"></jsp:include>
</body>
</html>