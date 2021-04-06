//von Stefan Rother

"use strict"


document.addEventListener("DOMContentLoaded", init);

function init(){
	var tr = document.getElementById("playersTaken").rows.length;
	if(tr>1){
		document.getElementById("thPlayerTaken").innerHTML = "Already in a team";
		document.getElementById("thPlayerTaken").className = "tableHead";
	}
}

