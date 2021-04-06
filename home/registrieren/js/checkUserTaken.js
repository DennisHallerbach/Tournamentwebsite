//von Stefan Rother

"use strict"

document.addEventListener("DOMContentLoaded", init);

function init() {
	document.getElementById("inputUser")
			.addEventListener("blur", checkUsername);
}

function checkUsername() {
	var xmlhttp = new XMLHttpRequest();
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			var user = JSON.parse(xmlhttp.responseText);
			if(user.username == document.getElementById("inputUser").value){
				var ausgabe = "Username '" + user.username + "' is already taken!"
				document.getElementById("taken").innerHTML = ausgabe;
				document.getElementById("submitForm").disabled = true;
			}else{
				document.getElementById("taken").innerHTML = "";
				document.getElementById("submitForm").disabled = false;
			}
		}
	}
	var input = document.getElementById("inputUser").value;
	var url = "../../../CheckUserTakenServlet?username=" + encodeURIComponent(input);
	
	xmlhttp.open("GET", url, true);
	xmlhttp.send();
}

