<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajouter plat</title>
</head>
<body>

	<%@include file="navBar.jsp" %>
	
<form method="post" action="<%= request.getContextPath()%>/ajouterPlat">	
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				 <h1>Création d'un nouveau plat :</h1>
				<div class="row">
					<div class="col-md-5">
						<img alt="Bootstrap Image Preview" src="./img/PlatN1.jpg" />
					
						<div class="form-group">
								 
								<label for="exampleInputFile">
									Selectionner l'image du plat :
								</label>
								<input type="file" class="form-control-file" id="exampleInputFile" accept="image/png, image/jpeg"/>
								<p class="help-block">
									Format accepté : .jpg, .png
								</p>
						</div>
					</div>
					<div class="col-md-7">
						<section>
							<div class="form-group">
								 
								<label for="nomDuPlat">
									Nom du plat :
								</label>
								<input type="text" class="form-control" id="nomDuPlat" name="nomDuPlat"/>
							</div>
							<div class="form-group">
								 
								<label for="prix">
									Prix :
								</label>
								<input type="number" min="0" max="10000" step="0.01" name="prix" id="prix" required="required" class="form-control"/>
							</div>
							
						</section>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<h2>
							Description :
						</h2>
						<div class="md-form amber-textarea active-amber-textarea-2">
						  <i class="fas fa-pencil-alt prefix"></i>
						  <textarea id="description" class="md-textarea form-control" rows="3" name="descriptif"></textarea>
						  <label for="description">Ecrire une description clair et appétissante du plat</label>
						</div>
					</div>
					<div class="col-md-6">
						<h2>
							Ingrédients :
						</h2>
						<div class="md-form amber-textarea active-amber-textarea-2">
						  <i class="fas fa-pencil-alt prefix"></i>
						  <textarea id="ingredients" class="md-textarea form-control" rows="3" name="ingredients"></textarea>
						  <label for="ingredients">Faire la liste exaustive des ingrédients, allergénes...</label>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div>
			<input type="submit" class="btn btn-primary" value="Enregistrer"></input>
		</div> 
	</div>
</form>
	<%@include file="scriptJS.jsp" %>
	
</body>
</html>