<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Nos plats</title>

<!--  Bootstrap  -->
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">


<style> body {background-color: black;} img {height:500px; border-radius:15px;} h1, h2 {color: white;} </style>

</head>
<body>

	<jsp:include page="navBar.jsp"></jsp:include>

	<header class="row">
		<div class="col-lg-12 mt-3">
			<h1 class="text-center">101 Recettes Gourmandes</h1>
			<h2 class="text-center">Nos plats</h2>
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

	<jsp:include page="scriptJS.jsp"></jsp:include>
	

</body>
</html>