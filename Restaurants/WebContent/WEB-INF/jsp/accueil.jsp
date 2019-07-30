<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<!--  Bootstrap -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<title>accueil</title>

<style>section {margin-top:50px;}
</style>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->



</head>
<body>

<jsp:include page="navBar.jsp"></jsp:include>

<article class="row">
	<header class="col-lg-12 m-5">
		<h1 class="text-center">101 Recettes Gourmandes</h1>
	</header>
	<section class="col-lg-4 offset-lg-2">
		<h2>Restaurant de Rennes</h2>
		<img src="${pageContext.request.contextPath}/img/rennes.jpg" alt="photo restaurant Rennes">
	</section>
	<section class="col-lg-4">
		<h3>Nous trouver</h3>
		<iframe class="googleMap" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2664.950449883552!2d-1.6758748841163345!3d48.091898362319846!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x480edfc0a05d116f%3A0x6ec1dd6dacc1552d!2s10+Boulevard+de+l&#39;Yser%2C+35200+Rennes!5e0!3m2!1sfr!2sfr!4v1564403795300!5m2!1sfr!2sfr" width="600" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
	</section>
</article>
<article class="row">
	<section class="col-lg-4 offset-lg-2">
	<h2>Restaurant de Nantes</h2>
	<img src="${pageContext.request.contextPath}/img/rennes.jpg" alt="photo restaurant Rennes">
	</section>
	<section class="col-lg-4">
		<h3>Nous trouver</h3>
		<iframe class="googleMap" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2664.950449883552!2d-1.6758748841163345!3d48.091898362319846!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x480edfc0a05d116f%3A0x6ec1dd6dacc1552d!2s10+Boulevard+de+l&#39;Yser%2C+35200+Rennes!5e0!3m2!1sfr!2sfr!4v1564403795300!5m2!1sfr!2sfr" width="600" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
	</section>
	<section class="col-lg-4 offset-lg-2">
		<h3>Restaurant de Brest, ouverture prochaine.</h3>
		<img src="${pageContext.request.contextPath}/img/rennes.jpg" alt="photo restaurant Rennes">
		
		<p> Nous vous informons que le restaurant ouvrira ses portes le 02 septembre 2019. 
		<br>
		Nous vous accueillerons avec plaisir dans une ambiance lounge.
	</section>
</article>

<jsp:include page="scriptJS.jsp"></jsp:include>


</body>
</html>