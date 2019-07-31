<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>connexion</title>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

</head>
<body>


<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">

<jsp:include page="navBar.jsp"></jsp:include>

<div class="container">
<br>  <p class="text-center">Page de connexion à votre compte </p>
<hr>

<div class="row">
	<aside class="col-sm-4">
<p>Merci de remplir les champs suivants :</p>
<div class="card">
<article class="card-body">

${erreur}

<h4 class="card-title mb-4 mt-1">Connexion</h4>
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

	</aside> <!-- col.// -->
	<aside class="col-sm-4">
	
<jsp:include page="scriptJS.jsp"></jsp:include>	
	
</body>
</html>