<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
  <!-- Bootstrap core CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <!-- Material Design Bootstrap -->
  <link href="css/mdb.min.css" rel="stylesheet">
  <!-- Your custom styles (optional) -->
  <link href="css/style.css" rel="stylesheet">

<style type="text/css">
nav {
	background-color: #4285F4;
}
#footer {
    position: absolute;
    bottom: 0;
        }
</style>

	<c:choose>
		<c:when test="${statut=='admin'}"> 			<!-- NAV BAR ADMINISTRATEUR-->
				<nav class="mb-1 navbar navbar-expand-lg navbar-dark primary-color">
				  <a class="navbar-brand" href="${pageContext.request.contextPath}/accueil">Accueil</a>
				  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-333"
				    aria-controls="navbarSupportedContent-333" aria-expanded="false" aria-label="Toggle navigation">
				    <span class="navbar-toggler-icon"></span>
				  </button>
				  <div class="collapse navbar-collapse" id="navbarSupportedContent-333">
				    <ul class="navbar-nav mr-auto">
				      <li class="nav-item active">
				        <a class="nav-link" href="${pageContext.request.contextPath}/Plats">Nos Plats
				          <span class="sr-only">(current)</span>
				        </a>
				      </li>
				      <li class="nav-item active">
				        <a class="nav-link" href="${pageContext.request.contextPath}/ajouterPlat">Ajouter plat
				          <span class="sr-only">(current)</span>
				        </a>
				      </li>
				    </ul>
				    <ul class="navbar-nav ml-auto nav-flex-icons">
				      <li class="nav-item dropdown">
				        <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink-333" data-toggle="dropdown"
				          aria-haspopup="true" aria-expanded="false">
				          <i class="fas fa-user"></i>
				        </a>
				        <div class="dropdown-menu dropdown-menu-right dropdown-default"
				          aria-labelledby="navbarDropdownMenuLink-333">
				          <a class="dropdown-item" href="${pageContext.request.contextPath}/compte">Mon compte</a>
				          <a class="dropdown-item" href="${pageContext.request.contextPath}/ServletDeconnexion">Se déconnecter</a>
				        </div>
				      </li>
				    </ul>
				  </div>
				</nav>
	
		</c:when>
		<c:when test="${statut=='client'}"> 			<!-- NAV BAR CLIENT--> 
				<nav class="mb-1 navbar navbar-expand-lg navbar-dark primary-color">
				  <a class="navbar-brand" href="${pageContext.request.contextPath}/accueil">Accueil</a>
				  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-333"
				    aria-controls="navbarSupportedContent-333" aria-expanded="false" aria-label="Toggle navigation">
				    <span class="navbar-toggler-icon"></span>
				  </button>
				  <div class="collapse navbar-collapse" id="navbarSupportedContent-333">
				    <ul class="navbar-nav mr-auto">
				      <li class="nav-item active">
				        <a class="nav-link" href="${pageContext.request.contextPath}/Plats">Nos Plats
				          <span class="sr-only">(current)</span>
				        </a>
				      </li>
				    </ul>
				    <ul class="navbar-nav ml-auto nav-flex-icons">
				      <li class="nav-item dropdown">
				        <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink-333" data-toggle="dropdown"
				          aria-haspopup="true" aria-expanded="false">
				          <i class="fas fa-user"></i>
				        </a>
				        <div class="dropdown-menu dropdown-menu-right dropdown-default"
				          aria-labelledby="navbarDropdownMenuLink-333">
				          <a class="dropdown-item" href="${pageContext.request.contextPath}/compte">Mon compte</a>
				          <a class="dropdown-item" href="${pageContext.request.contextPath}/ServletDeconnexion">Se déconnecter</a>
				        </div>
				      </li>
				    </ul>
				  </div>
				</nav>
	
		</c:when>
		
		
		<c:otherwise> 			<!-- NAV BAR DEFAUT-->
				<nav class="mb-1 navbar navbar-expand-lg navbar-dark">
				  <a class="navbar-brand" href="${pageContext.request.contextPath}/accueil">Accueil</a>
				  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-333"
				    aria-controls="navbarSupportedContent-333" aria-expanded="false" aria-label="Toggle navigation">
				    <span class="navbar-toggler-icon"></span>
				  </button>
				  <div class="collapse navbar-collapse" id="navbarSupportedContent-333">
				    <ul class="navbar-nav mr-auto">
				      <li class="nav-item active">
				        <a class="nav-link" href="${pageContext.request.contextPath}/Plats">Nos Plats
				          <span class="sr-only">(current)</span>
				        </a>
				      </li>
				    </ul>
				    <ul class="navbar-nav ml-auto nav-flex-icons">
				      <li class="nav-item dropdown">
				        <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink-333" data-toggle="dropdown"
				          aria-haspopup="true" aria-expanded="false">
				          <i class="fas fa-user"></i>
				        </a>
				        <div class="dropdown-menu dropdown-menu-right dropdown-default"
				          aria-labelledby="navbarDropdownMenuLink-333">
				          <a class="dropdown-item" href="${pageContext.request.contextPath}/connexion">Se connecter</a>
				          <a class="dropdown-item" href="${pageContext.request.contextPath}/inscription">S'inscrire</a>
				        </div>
				      </li>
				    </ul>
				  </div>
				</nav>
		
		</c:otherwise>
		
	</c:choose>
	
