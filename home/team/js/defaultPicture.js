//von Stefan Rother

"use strict"


document.addEventListener("DOMContentLoaded", init);

function init(){
	var pics = document.getElementsByClassName("picture");
	
	for(var i = 0; pics.length; i++){
		if (pics[i].getAttribute("name") === ""){
			pics[i].src ="../img/Avatar_Template.png"
		}
	}
}