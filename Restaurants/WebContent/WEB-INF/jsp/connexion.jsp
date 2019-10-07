<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>

<style>
footer {
    position: fixed;
    bottom: 0;
    text-align : center;left: 50%;
    transform: translateX(-50%);
        }
        
</style>
<meta charset="ISO-8859-1">
<title>connexion</title>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">

</head>
<body>

<jsp:include page="navBar.jsp"></jsp:include>

<div class="container">
	<p class="text-center mt-3">Page de connexion à votre compte </p>
	<hr>
	<div class="row">
		<main class="col-lg-4 offset-lg-4 col-sm-4 offset-sm-4">
			<p>Merci de remplir les champs suivants :</p>
			<div class="card" >
				<article class="card-body">
					
					${erreur}
					
					<h1 class="h5 card-title mb-4 mt-1">Connexion</h1>
					
					<form method= "POST" action = "<%= request.getContextPath()%>/connexion">
					    <div class="form-group">
					    	<label>Votre adresse mail :</label>
					        <input name="email" class="form-control" placeholder="Email" type="email">
					    </div> <!-- form-group// -->
					    <div class="form-group">
					    	<a class="float-right" href="#">Mot de passe oublié ?</a>
					    	<label>Votre mot de passe</label>
					        <input class="form-control" name="password" placeholder="******" type="password">
					    </div> <!-- form-group// --> 
					    <div class="form-group"> 
						    <div class="checkbox">
						      <label> <input type="checkbox"> Memoriser le mot de passe </label>
						    </div> <!-- checkbox .// -->
					    </div> <!-- form-group// -->  
					    <div class="form-group">
					        <button type="submit" class="btn btn-primary btn-block"> Connexion </button>
					    </div> <!-- form-group// -->                                                           
					</form>
				</article>
			</div> <!-- card.// -->
		</main> <!-- col.// -->
	</div><!-- close <div class="row"> -->
</div><!--  close container -->
<jsp:include page="scriptJS.jsp"></jsp:include>	
<footer class="text-center"><a href="<%=request.getContextPath()%>/ServletMentionsLegales"><strong>Mentions légales</strong></a></footer>
	
</body>
	
</html>