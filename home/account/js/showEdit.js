//von Stefan Rother
"use strict"

document.addEventListener("DOMContentLoaded", toggleTable);

function toggleTable() {
	var toggle = document.getElementsByClassName("toggle");

	for (var i = 0; i < toggle.length; i++) {
		toggle[i].addEventListener("click", toggleShowTable);
	}
}

function toggleShowTable() {
	if(document.getElementById(this.name).classList.contains("hideTable")){
		document.getElementById(this.name).classList.remove("hideTable");
		document.getElementById(this.name).classList.add("showTable");
	}else{
		document.getElementById(this.name).classList.add("hideTable");
		document.getElementById(this.name).classList.remove("showTable");
	}
}