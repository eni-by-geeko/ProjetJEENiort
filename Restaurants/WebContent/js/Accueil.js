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
	    return xhr;
	}

function load() {
	var xhr = createXHR();
	xhr.open("GET", "/Restaurants/rest/tables/3", true);
	xhr.setRequestHeader("Accept","application/json");
	xhr.send(null);
}
function succes(response) {		
	var responseJSON = JSON.parse(response);
	for(i=0; i<responseJSON.length; i++) {
		body.appendChild(createTableList(responseJSON[i]));
	}
	console.log(response);
}
function echec(response) {
body.innerHTML=response;
}

function TabOqpCmd(element){
	let chk = document.getElementById('AffTable')
	if(chk==null){
	let div=document.createElement('div');	
	div.id = "AffTable";
	div.innerHTML = "Table N "+element.numero+"\n Statut " +element.statut+"\n Reserve par "+element.reservation.personne.nom +"\n Nbre de personnes " + element.reservation.nbrePersonnes;	
	div.addEventListener('click',function(){ document.getElementById('AffTable').remove()});
	body.appendChild(div);}
}
function createTableList(element) {	
	var canvas = document.createElement('canvas');	
	canvas.setAttribute("class", "tableResto");	
	canvas.id = element.numero;	
	
	  var context = canvas.getContext("2d");
	  context.beginPath();	  
	  context.arc(150, 75, 60, 0, 2 * Math.PI);//taille et coordonnee
	  context.font = "20px Arial";
		if (element.statut != 'libre'){			 
			  context.fillText(element.numero+" : "+element.statut+" "+ element.reservation.personne.nom, 70, 150);
			  }
				else{
					context.fillText(element.numero+" : "+element.statut, 70, 150);
				}	 
	switch(element.statut){
	case 'libre':
		context.fillStyle='green';
		//canvas.style.backgroundColor=';
		break;		
	case 'occupee':
		context.fillStyle='red';
		break;	
	case 'reserve':
		context.fillStyle='grey';
		break;		
	case 'commande':
		context.fillStyle='orange';
		let chk = document.getElementById('AffTable')
		if(chk==null){}
		canvas.addEventListener('click',function(){ TabOqpCmd(element)});
		break;
	}
	context.fill();
	var ctx = canvas.getContext("2d");
	ctx.translate(50, 20);
	ctx.beginPath();
	ctx.rotate(22.5 * Math.PI / 180);
	ctx.fillStyle="black";   
	ctx.lineWidth="2";   
	ctx.rect(10,10,25,25);
	ctx.stroke();
	ctx.fill();

	ctx.translate(185, -10);
	ctx.beginPath();
	ctx.rotate(0 * Math.PI / 180);
	ctx.fillStyle="black";   
	ctx.lineWidth="2";   
	ctx.rect(10,10,25,25);
	ctx.stroke();	
	ctx.fill();	
	return canvas;
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