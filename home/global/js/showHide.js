//von Stefan Rother
"use strict"

document.addEventListener("DOMContentLoaded", toggleShowCreate);

function toggleShowCreate() {
	// Create Team Form - Show/Hide

	document.getElementById("hideMe").addEventListener("click", hideForm);
	document.getElementById("createTeamButton").addEventListener("click",
			showForm);
}

function hideForm() {
	document.getElementById("createTeam").classList.remove("show");
	document.getElementById("createTeam").classList.add("hide");
}

function showForm() {
	document.getElementById("createTeam").classList.remove("hide");
	document.getElementById("createTeam").classList.add("show");
}
