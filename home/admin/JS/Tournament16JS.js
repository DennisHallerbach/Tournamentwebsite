/**
 * Made by Dennis Hallerbach
 */

document.addEventListener("DOMContentLoaded", init);
function init(){
var Children = document.querySelectorAll("#Viertelfinale td");
var liste2 = document.querySelectorAll("#Halbfinale td");
var liste3 = document.querySelectorAll("#Finale td");
var liste4 = document.querySelectorAll("#Sieg td");

var aendern = new Array(0);
if(Children.length >0){	
	for(var i = 0, len2=Children.length;i<len2;i++){
		let test = document.querySelectorAll("#Achtelfinale #"+Children[i].textContent+ "achtel");	
		
		for(var y = 0 , len=test.length;y<len;y++){
			test[y].setAttribute("hidden","hidden")
		}
}
		}
if(liste2.length >0){	
	for(var i = 0, len2=liste2.length;i<len2;i++){
		let test = document.querySelectorAll("#Viertelfinale #"+liste2[i].textContent+ "viertel");	
		
		for(var y = 0 , len=test.length;y<len;y++){
			test[y].setAttribute("hidden","hidden")
		}
}
		}
if(liste3.length >0){	
	for(var i = 0, len2=liste3.length;i<len2;i++){
		let test = document.querySelectorAll("#Halbfinale #"+liste3[i].textContent+ "halb");	
		
		for(var y = 0 , len=test.length;y<len;y++){
			test[y].setAttribute("hidden","hidden")
		}
}
		}
if(liste4.length >0){	
	for(var i = 0, len2=liste4.length;i<len2;i++){
		let test = document.querySelectorAll("#Finale #"+liste4[i].textContent+ "finale");	

		for(var y = 0 , len=test.length;y<len;y++){
			test[y].setAttribute("hidden","hidden")
		}
}
		}
	

}