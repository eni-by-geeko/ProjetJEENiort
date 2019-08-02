<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>inscription</title>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

</head>


<body>

<jsp:include page="navBar.jsp"></jsp:include>

   <div class="container">
      <div class="col-md-6 mx-auto text-center">
         <div class="header-title">
            <h1 class="wv-heading--title">
               Formulaire d'inscription
            </h1>
            <h5 class="wv-heading--subtitle mb-4">
               Pour cela, rien de plus simple : un nom, un prénom, un mail, un mot de passe et le tour est joué !
            </h5>
         </div>
      </div>
      <div class="row">
         <div class="col-md-4 mx-auto">
            <div class="myform form ">
               <form action="" method="post" name="login">
                  <div class="form-group">
                     <input type="text" name="name"  class="form-control my-input" id="name" placeholder="Nom" value="Doe">
                  </div>
                   <div class="form-group">
                     <input type="text" name="prenom"  class="form-control my-input" id="prenom" placeholder="Prénom" value="John">
                  </div>
                  <div class="form-group">
                     <input type="email" name="email"  class="form-control my-input" id="email" placeholder="Email" value="john.doe@mars.com">
                  </div>
                  <div class="form-group">
                     <input type="password"  name="password" id="password"  class="form-control my-input" placeholder="Mot de passe"  value="P@$$w0rd">
                  </div>
                  <div class="form-group">
                     <input type="password"  name="password" id="password"  class="form-control my-input" placeholder="Confirmez votre mot de passe" value="P@$$w0rd">
                  </div>
                   <div class ="form-group">
                 <textarea class = " w-100" name="commentaire" placeholder= "Comment avez-vous connu notre site ?" >Google is my friend!</textarea>
                 </div>
                  <div class="text-center ">
                     <button type="submit" class=" btn btn-primary send-button tx-tfm">Créez votre compte</button>
                  </div>
                 
                  
               </form>
            </div>
         </div>
      </div>
   </div>
   
   <jsp:include page="scriptJS.jsp"></jsp:include>
   

</body>
</html>