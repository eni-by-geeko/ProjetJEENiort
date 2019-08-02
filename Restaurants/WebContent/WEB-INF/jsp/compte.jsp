<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- ####################################################################
     #
     #  L'objet personne est créé lors de la connexion du membre dans le
     #  servlet "ServletConnexion" et inséré dans la session en tant qu'
     #  qu'attribut de session "personne". Ses attributs sont stockés et
     #  récuépérés dans la base de donnée. Par Marc
     #
	 ##################################################################### -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>compte</title>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

</head>

<body>

<jsp:include page="navBar.jsp"></jsp:include>

   <div class="container">
      <div class="col-md-6 mx-auto text-center">
         <div class="header-title">
            <h1 class="wv-heading--title">Mon Compte</h1>
            <h5 class="wv-heading--subtitle mb-4">
               Une erreur ? Pas de souci : nom, prénom, mail, mot de passe, faites vos changements et validez !
            </h5>
         </div>
      </div>
      <div class="row">
         <div class="col-md-4 mx-auto">
            <div class="myform form ">
               <form action="${pageContext.request.contextPath}/compte" method="post" name="login">
                  <div class="form-group">
                  	<!-- ######### PREMIERE UTILISATION DE L'OBJET "Personne" stocké dans la session ######## -->
                     <input type="text" name="name"  class="form-control my-input" id="name" placeholder="Nom" value="${personne.getNom()}" >
                  </div>
                   <div class="form-group">
                     <input type="text" name="prenom"  class="form-control my-input" id="prenom" placeholder="Prénom" value="${personne.getPrenom()}" >
                  </div>
                  <div class="form-group">
                     <input type="email" name="email"  class="form-control my-input" id="email" placeholder="Email"  value="${personne.getMail()}" >
                  </div>
                  <div class="form-group">
                     <input type="password"  name="password" id="password"  class="form-control my-input" placeholder="Mot de passe" value="${personne.getPassword()}" >
                  </div>
                  <div class="form-group">
                     <input type="password"  name="password" id="password"  class="form-control my-input" placeholder="Confirmez votre mot de passe">
                  </div>
                  <div class="text-center ">
                     <button type="submit" class=" btn btn-primary send-button tx-tfm">Modifier</button>
                  </div>
               </form>
            </div>
         </div>
      </div>
   </div>
   
   <jsp:include page="scriptJS.jsp"></jsp:include>
   

</body>
</html>