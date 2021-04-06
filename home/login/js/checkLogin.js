//von Stefan Rother

"use strict"

document.addEventListener("DOMContentLoaded", init);

function init() {
	document.getElementById("submitLogin")
			.addEventListener("click", checkLogin);
}

function checkLogin() {
	var xmlhttp = new XMLHttpRequest();
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			var user = JSON.parse(xmlhttp.responseText);
			if (user.admin == "admin") {
				window.location.replace("../../admin/jsp/startseiteEingeloggt_admin.jsp");
			}
			if (user.username == document.getElementById("inputUsername").value) {
				window.location.replace("../../dashboard/jsp/startseiteEingeloggt.jsp");
			} else {
				document.getElementById("failedLogin").innerHTML = "Wrong username and/or password!";
			}
		}

	}
	var inputUsername = document.getElementById("inputUsername").value;
	var inputPassword = document.getElementById("inputPassword").value;
	var queryString = "username=" + inputUsername + "&password=" + inputPassword;

	xmlhttp.open("POST", "../../../LoginServlet", true);
	xmlhttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
	xmlhttp.send(encodeURI(queryString));
}
