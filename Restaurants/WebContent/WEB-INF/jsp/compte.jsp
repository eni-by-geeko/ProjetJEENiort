<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<body>
   <div class="container">
      <div class="col-md-6 mx-auto text-center">
         <div class="header-title">
            <h1 class="wv-heading--title">
               Mon Compte
            </h1>
            <h5 class="wv-heading--subtitle mb-4">
               Une erreur ? Pas de souci : nom, prénom, mail, mot de passe, faites vos changements et validez !
            </h5>
         </div>
      </div>
      <div class="row">
         <div class="col-md-4 mx-auto">
            <div class="myform form ">
               <form action="" method="post" name="login">
                  <div class="form-group">
                     <input type="text" name="name"  class="form-control my-input" id="name" placeholder="Nom">
                  </div>
                   <div class="form-group">
                     <input type="text" name="prenom"  class="form-control my-input" id="prenom" placeholder="Prénom">
                  </div>
                  <div class="form-group">
                     <input type="email" name="email"  class="form-control my-input" id="email" placeholder="Email">
                  </div>
                  <div class="form-group">
                     <input type="password"  name="password" id="password"  class="form-control my-input" placeholder="Mot de passe">
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
</body>
</body>
</html>