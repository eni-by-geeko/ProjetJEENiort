
var commentairesDiv = document.getElementById("commentaires");
var statutGlobal;
var mailGlobal;

function createXHRForList() {
	    if (window.XMLHttpRequest) {
	        xhr = new XMLHttpRequest();
	    } else if (window.ActiveXObject) {
	        xhr = new ActiveXObject("Msxml2.XMLHTTP");
	    }
	    
	    xhr.onreadystatechange = function() {
	        if (xhr.readyState == 4) {
	            if (xhr.status == 200) {
	            	succes(xhr.responseText);
	            } else {
	                echec(xhr.status, xhr.responseText);
	            }
	        }
	    };
	    return xhr;
	}

function createXHRForOthers() {
    if (window.XMLHttpRequest) {
        xhr = new XMLHttpRequest();
    } else if (window.ActiveXObject) {
        xhr = new ActiveXObject("Msxml2.XMLHTTP");
    }
    
    xhr.onreadystatechange = function() {
        if (xhr.readyState == 4) {
            if (xhr.status == 200) {
            	list(statutGlobal, mailGlobal);
            	
            } else {
                echec(xhr.status, xhr.responseText);
            }
        }
    };
    return xhr;
}

function reloadCss()
{
    var links = document.getElementsByTagName("link");
    for (var cl in links)
    {
        var link = links[cl];
        if (link.rel === "stylesheet")
            link.href += "";
    }
}


function list(statut, mail) {
	console.log("mail :" + mail);
	statutGlobal = statut;
	mailGlobal = mail;
	var xhr = createXHRForList();
	xhr.open("GET", "/Restaurants/rest/commentaires", true);
	xhr.setRequestHeader("Accept","application/json");
	xhr.send();
}

function succes(response) {
	commentairesDiv.innerHTML = "";
	var responseJSON = JSON.parse(response);
	for(i=0; i<responseJSON.length; i++) {
		commentairesDiv.appendChild(createCommentaireList(responseJSON[i]));
	}
	reloadCss();
}

function echec(statut, response) {
	commentairesDiv.innerHTML=statut + " : " + response;
}

function createCommentaireList(element) {
	var div = document.createElement("div"); // <div></div>
	var textarea = document.createElement("textarea"); // <textarea></textarea>
	textarea.value = element.texte; // <textarea value='la valeur de la note en cours'></textarea>
	textarea.id = "ta" + element.id; // <textarea value='la valeur de la note en cours' id='ta0'></textarea>
	div.className = "card text-white bg-primary mb-3 col-md-12";
	textarea.className = "card-body col-md-12";
	var div2 = document.createElement("div"); // <div></div>
	div2.className = "card-header";
	div2.innerHTML = "Avis de " + mailGlobal;
	var div3 = document.createElement("div"); // <div></div>
	div3.className = "card-body col-md-10";
	
	div.appendChild(div2);
	div.appendChild(div3);
	div.appendChild(textarea); // <div><textarea value='la valeur de la note en cours' id='ta0'></textarea></div>
	
	if (statutGlobal == "admin") {
		var modifier = document.createElement("input");
		modifier.type="button";
		modifier.value="Modifier";
		modifier.onclick=function() {modifierCommentaire(element.id)};
	
		var supprimer = document.createElement("input");
		supprimer.type="button";
		supprimer.value="Supprimer";
		supprimer.onclick=function() {supprimerCommentaire(element.id)};
		
		div.appendChild(modifier);
		div.appendChild(supprimer);
	}
	
	return div;
}

function ajouter() {
	var xhr = createXHRForOthers();
	
	var textarea = document.getElementById("taCreation");
	var formulaire = "texte=" + encodeURIComponent(textarea.value);
	
	xhr.open("POST", "/Restaurants/rest/commentaires", true);
	xhr.setRequestHeader("Accept","application/json");
    xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
	xhr.send(formulaire);
	textarea.value="";
	textarea.placeholder="Créez un nouveau commentaire...";
}

function modifierCommentaire(id) {
	var xhr = createXHRForOthers();
	
	var textarea = document.getElementById("ta" + id);
	var formulaire = "texte=" + encodeURIComponent(textarea.value);
	
	xhr.open("PUT", "/Restaurants/rest/commentaires/" + id, true);
	xhr.setRequestHeader("Accept","application/json");
    xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
	xhr.send(formulaire);
}

function supprimerCommentaire(id) {
	var xhr = createXHRForOthers();
	xhr.open("DELETE", "/Restaurants/rest/commentaires/" + id, true);
	xhr.send();
}