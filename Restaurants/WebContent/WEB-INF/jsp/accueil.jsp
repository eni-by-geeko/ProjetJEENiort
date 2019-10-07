<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


<title>accueil</title>

<style>section {margin-top:50px;}
img {width: 620px; height : 300px}
hr {border: none;
    border-top: 3px double #333;
    color: #333;
    overflow: visible;
    text-align: center;
    height: 10px;}
hr:after {
    background: #fff;
    content: '§';
    padding: 0 4px;
    position: relative;
    top: -13px;
}

@import url('https://fonts.googleapis.com/css?family=Pacifico&display=swap');
h1.pacifico{font-family: 'Pacifico', cursive;}
@import url('https://fonts.googleapis.com/css?family=Pacifico|Permanent+Marker&display=swap');
h3.permanentmarker {font-family: 'Permanent Marker', cursive;}
footer {
    position: fixed;
    bottom: 0;
    text-align : center;left: 50%;
    transform: translateX(-50%);
        }
</style>

<!--  Bootstrap -->
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">


</head>
<body>

<jsp:include page="navBar.jsp"></jsp:include>

<article class="row">
	<header class="col-lg-12 m-5">
		<h1 class="pacifico text-center ">101 Recettes Gourmandes</h1>
		<h3 class="permanentmarker text-center"> Prenez votre temps et profitez de cet instant, on s'occupe de vous. </h3>
		<hr>
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
		<img src="${pageContext.request.contextPath}/img/nantes.jpg" alt="photo restaurant Nantes">
	</section>
	<section class="col-lg-4">
		<h3>Nous trouver</h3>
		<iframe class="googleMap" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2710.2793873588275!2d-1.5447476839924799!3d47.21111537916048!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4805eeb6e7545b31%3A0xa5cbad1d4d90664f!2s10+Quai+Andr%C3%A9+Morice%2C+44000+Nantes!5e0!3m2!1sfr!2sfr!4v1564660570139!5m2!1sfr!2sfr" width="600" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
	</section>
	<section class="col-lg-4 offset-lg-2">
		<h3>Restaurant de Brest</h3>
		<img src="${pageContext.request.contextPath}/img/brest.jpg" alt="photo restaurant Brest">
		
	</section>
	<section class="col-lg-4">
		<h3>Ouverture prochaine</h3>
		<p > Nous vous informons que le restaurant ouvrira ses portes le 02 septembre 2019. 
		<br>
		Nous vous accueillerons avec plaisir dans une ambiance lounge avec une cuisine soignée.
		<br><br>
		<strong>101 Recettes Gourmandes </strong> c'est...<br>
		... une formule osée, une cuisine tranchée, un caractère affirmé.<br>
		... une cuisine inspirée par les caprices de la nature et les opportunités du marché. <br>
		... un service attentif, souriant et chaleureux.
	</section>
	
</article>

<jsp:include page="scriptJS.jsp"></jsp:include>
<br>
<footer class="text-center"><a href="<%=request.getContextPath()%>/ServletMentionsLegales"><strong>Mentions légales</strong></a></footer>

</body>
</html>