//von Stefan Rother
"use strict"

document.addEventListener("DOMContentLoaded", function(){
	var cookieAktive = navigator.cookieEnabled;
	if(cookieAktive){
		document.getElementById("noCookies").innerHTML ="Please enable your cookies!"
	}
});