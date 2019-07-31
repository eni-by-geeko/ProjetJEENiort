var body = document.querySelector('body');
window.onload=load;
function createXHR() {
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
	    return xhr;s
	}

function load() {
	var xhr = createXHR();
	xhr.open("GET", "/Restaurants/rest/tables", true);
	xhr.setRequestHeader("Accept","application/json");
	xhr.send(null);
}

function succes(response) {		
	var responseJSON = JSON.parse(response);
	for(i=0; i<responseJSON.length; i++) {
		body.appendChild(createNoteList(responseJSON[i]));
	}
}
function echec(response) {
body.innerHTML="";
}
function createNoteList(element) {	
	var div = document.createElement('div');
	div.setAttribute("class", "tableResto");
	div.innerHTML = element.numero+" : "+element.statut;	
	div.id = element.numero;	
	switch(element.statut){
	case 'libre':	
		div.style.backgroundColor='green';
		break;		
	case 'occupee':
		div.style.backgroundColor='red';
		break;	
	case 'reserve':
		div.style.backgroundColor='grey';
		break;		
	case 'commande':
		div.style.backgroundColor='orange';
		break;
	}		
	return div;
}
//
//function ajouter() {
//	var xhr = createXHR();
//	
//	var textarea = document.getElementById("taCreation");
//	var formulaire = "value=" + encodeURIComponent(textarea.value);
//	
//	xhr.open("POST", "/myTPPriseDeNote/rest/notes", true);
//	xhr.setRequestHeader("Accept","application/json");
//    xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
//	xhr.send(formulaire);
//	load();
//	textarea.value="";
//	textarea.placeholder="Créez une nouvelle note...";
//}
//
//function modifierNote(id) {
//	var xhr = createXHR();
//	
//	var textarea = document.getElementById("ta" + id);
//	var formulaire = "value=" + encodeURIComponent(textarea.value);
//	
//	xhr.open("PUT", "/myTPPriseDeNote/rest/notes/" + id, true);
//	xhr.setRequestHeader("Accept","application/json");
//    xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
//	xhr.send(formulaire);
//	load();
//}
//
//function supprimerNote(id) {
//	var xhr = createXHR();
//	xhr.open("DELETE", "/myTPPriseDeNote/rest/notes/" + id, true);
//	xhr.send(null);
//	load();
//}