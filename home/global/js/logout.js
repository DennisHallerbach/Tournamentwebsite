//von Stefan Rother

"use strict"

document.addEventListener("DOMContentLoaded", init);

function init(){
	document.getElementById("loginButton").addEventListener("click", confirmLogout);
}

function confirmLogout(){
	if(confirm("Are you sure you want to logout?")){
		window.location.replace("../../../index.html");
	}
}