//von Stefan Rother

"use strict"


document.addEventListener("DOMContentLoaded", init);

function init(){
	var kick = document.getElementsByClassName("kick");
	
	for(var i = 0; i < kick.length; i++){
		kick[i].addEventListener("mouseover", checkPlayer);
	}
}

function checkPlayer(){
	if(this.id == this.value){
		document.getElementById(this.id).disabled = true;
	}
}

