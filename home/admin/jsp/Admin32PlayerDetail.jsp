<!-- von Dennis Hallerbach -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<base href="${pageContext.request.requestURI}" />
<script type="text/javascript" src ="../JS/Tournament32JS.js">


</script>

<link rel="stylesheet" type="text/css"
	href="../../dashboard/css/styleStart.css" />
<%@ include file="../../global/jspf/styleImports.jspf"%>
<link rel="stylesheet" type="text/css"
	href="../Css/Player32Tournament.css" />
<meta charset="UTF-8">
<title>TunierDetailansicht 32 Spieler Tournament</title>
</head>
<body>
<nav>
		<a href="../../../showTournamentsadminServlet">Tournaments</a>
	</nav>
	<h1>Tunieransicht 32 Spieler Tournament</h1>
	<h2>TournamentID : ${tid.tid}</h2>
	<table id="Sechzehntelfinale">

		<tr>
			<th>Sechzehntelfinale</th>


		</tr>

		<c:forEach var="Team" items="${alle}">
			<tr>

				<td>${Team.teamname}</td>
				<td id = "${Team.teamname}sechzehn"><a
					href="../../../admin32PlayerPromotionServlet?tid=${tid.tid}&teamname=${Team.teamname}">Promote</a></td>

			</tr>

		</c:forEach>
	</table>
	<table id="Achtelfinale">

		<tr>
			<th>Achtelfinale</th>


		</tr>

		<c:forEach var="Team" items="${achtel}">
			<tr>

				<td>${Team.teamname}</td>
				<td id = "${Team.teamname}achtel"><a
					href="../../../admin32PlayerPromotionachtelServlet?tid=${tid.tid}&teamname=${Team.teamname}">Promote</a></td>

			</tr>

		</c:forEach>
	</table>
	<table id="Viertelfinale">

		<tr>
			<th>Viertelfinale</th>


		</tr>

		<c:forEach var="Team" items="${viertel}">
			<tr>

				<td>${Team.teamname}</td>
				<td id = "${Team.teamname}viertel"><a
					href="../../../admin32PlayerPromotionviertelServlet?tid=${tid.tid}&teamname=${Team.teamname}">Promote</a></td>

			</tr>

		</c:forEach>
	</table>
	<table id = "Halbfinale">
		<tr>
			<th>Halbfinale</th>


		</tr>

		<c:forEach var="Team" items="${halb}">
			<tr>

				<td>${Team.teamname}</td>
				<td id = "${Team.teamname}halb"><a
					href="../../../admin32PlayerPromotionhalbServlet?tid=${tid.tid}&teamname=${Team.teamname}">Promote</a></td>

			</tr>

		</c:forEach>
	</table>
	<table id = "Finale">
		<tr>
			<th>Finale</th>


		</tr>

		<c:forEach var="Team" items="${finale}">
			<tr>

				<td>${Team.teamname}</td>
				<td id = "${Team.teamname}finale"><a
					href="../../../admin32PlayerPromotionfinaleServlet?tid=${tid.tid}&teamname=${Team.teamname}">Promote</a></td>

			</tr>

		</c:forEach>
	</table>
	<table id = "Sieg">
		<tr>
			<th>Sieg</th>


		</tr>

		<c:forEach var="Team" items="${sieg}">
			<tr>

				<td>${Team.teamname}</td>


			</tr>

		</c:forEach>
	</table>

</body>
</html>