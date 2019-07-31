<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<!--  Bootstrap -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<title>Nos plats</title>

<style> body {background-color: black;} img {height:500px; border-radius:15px;} </style>

</head>
<body>
<header class="row">
	<div class="col-lg-12 mt-3">
		<h1 class="text-center text-white">101 Recettes Gourmandes</h1>
		<h2 class="text-center text-white">Nos plats</h2>
	</div>
</header>

<div class="container-item mt-3">
	<div class="row">
		<div class="col-lg-6 offset-lg-3">
			<div class="carousel slide" id="carousel-564796">
				<ol class="carousel-indicators">
					<li data-slide-to="0" data-target="#carousel-564796" class="active">
					</li>
					<li data-slide-to="1" data-target="#carousel-564796">
					</li>
					<li data-slide-to="2" data-target="#carousel-564796">
					</li>
				</ol>
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img class="d-block w-100" alt="Plat n°1 PlatN1.jpg" src="${pageContext.request.contextPath}/img/PlatN1.jpg" />
						<div class="carousel-caption">
							<h4>
								Plat 1
							</h4>
							<p>
									Description plat 1
							</p>
						</div>
					</div>
					<div class="carousel-item">
						<img class="d-block w-100" alt="Carousel Bootstrap Second" src="${pageContext.request.contextPath}/img/PlatN2.jpg" />
						<div class="carousel-caption">
							<h4>
								Plat 2
							</h4>
							<p>
									Description plat 2
							</p>
						</div>
					</div>
					<div class="carousel-item">
						<img class="d-block w-100" alt="Carousel Bootstrap Third" src="${pageContext.request.contextPath}/img/PlatN3.jpg" />
						<div class="carousel-caption">
							<h4>
								Plat 3
							</h4>
							<p>
									Description plat 3
							</p>
						</div>
					</div>
				</div> <a class="carousel-control-prev" href="#carousel-564796" data-slide="prev"><span class="carousel-control-prev-icon"></span> <span class="sr-only">Previous</span></a> <a class="carousel-control-next" href="#carousel-564796" data-slide="next"><span class="carousel-control-next-icon"></span> <span class="sr-only">Next</span></a>
			</div>
		</div>
	</div>
</div>

<!--  Bootstrap  -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>