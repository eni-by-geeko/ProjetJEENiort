<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NavBar</title>

  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
  <!-- Bootstrap core CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <!-- Material Design Bootstrap -->
  <link href="css/mdb.min.css" rel="stylesheet">
  <!-- Your custom styles (optional) -->
  <link href="css/style.css" rel="stylesheet">


</head>
<body>

	<c:choose>
		<c:when test="${value==1}"> 			<!-- NAV BAR ADMINISTRATEUR-->
				<nav class="mb-1 navbar navbar-expand-lg navbar-dark primary-color">
				  <a class="navbar-brand" href="#">Accueil</a>
				  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-333"
				    aria-controls="navbarSupportedContent-333" aria-expanded="false" aria-label="Toggle navigation">
				    <span class="navbar-toggler-icon"></span>
				  </button>
				  <div class="collapse navbar-collapse" id="navbarSupportedContent-333">
				    <ul class="navbar-nav mr-auto">
				      <li class="nav-item dropdown">
				        <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink-333" data-toggle="dropdown"
				          aria-haspopup="true" aria-expanded="false">Nos Plats
				        </a>
				        <div class="dropdown-menu dropdown-default" aria-labelledby="navbarDropdownMenuLink-333">
				          <a class="dropdown-item" href="#">Ajouter plat</a>
				        </div>
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
				          <a class="dropdown-item" href="${pageContext.request.contextPath}/web/accueil">Se déconnecter</a>
				        </div>
				      </li>
				    </ul>
				  </div>
				</nav>
	
		</c:when>
		<c:when test="${value==2}"> 			<!-- NAV BAR CLIENT--> 
				<nav class="mb-1 navbar navbar-expand-lg navbar-dark primary-color">
				  <a class="navbar-brand" href="#">Accueil</a>
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
				          <a class="dropdown-item" href="${pageContext.request.contextPath}/compte">Se déconnecter</a>
				        </div>
				      </li>
				    </ul>
				  </div>
				</nav>
	
		</c:when>
		
		
		<c:otherwise> 			<!-- NAV BAR DEFAUT-->
				<nav class="mb-1 navbar navbar-expand-lg navbar-dark primary-color">
				  <a class="navbar-brand" href="#">Accueil</a>
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
				          <a class="dropdown-item" href="${pageContext.request.contextPath}/Inscription">S'inscrire</a>
				        </div>
				      </li>
				    </ul>
				  </div>
				</nav>
		
		</c:otherwise>
		
	</c:choose>




		<!-- SCRIPTS -->
	  <!-- JQuery -->
	  <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
	  <!-- Bootstrap tooltips -->
	  <script type="text/javascript" src="js/popper.min.js"></script>
	  <!-- Bootstrap core JavaScript -->
	  <script type="text/javascript" src="js/bootstrap.min.js"></script>
	  <!-- MDB core JavaScript -->
	  <script type="text/javascript" src="js/mdb.min.js"></script>


</body>
</html>