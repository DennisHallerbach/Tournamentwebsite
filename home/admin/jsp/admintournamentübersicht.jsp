<!-- von Dennis Hallerbach -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<base href="${pageContext.request.requestURI}" />
<link rel="stylesheet" type="text/css" href="../../dashboard/css/styleStart.css" />
<%@ include file = "../../global/jspf/styleImports.jspf" %>
<meta charset="UTF-8">
<title>Tournamentübersicht</title>
</head>
<body>
<nav>
	<a href="../tournament/tournamentanlegen.html">Create Tournament</a>
	<a href="startseiteEingeloggt_admin.jsp">Dashboard</a>
	</nav>
	<h1>Alle Tournaments</h1>
	<table>

		<tr>
			<th>Tournament-ID</th>
			<th>Titel</th>
			<th>Spiel</th>
			<th>Anzahl</th>
			<th>Teilnehmer</th>

		</tr>

		<c:forEach var="Tournament" items="${tournaments}">
			<tr>

				<td>${Tournament.tid}</td>
				<td>${Tournament.tournamenttitel}</td>
				<td>${Tournament.game}</td>
				<td>${Tournament.anzahl}</td>
				<td>${Tournament.currentAnzahl}</td>

				<td><a
					href="../../../deleteTournamentServlet?tid=${Tournament.tid}&anzahl=${Tournament.anzahl}">Löschen</a></td>


			</tr>

		</c:forEach>
	</table>
	<h2>Volle 8er Tournaments</h2>
	<table>

		<tr>
			<th>Tournament-ID</th>
			<th>Titel</th>
			<th>Spiel</th>
			<th>Anzahl</th>
			<th>Teilnehmer</th>

		</tr>

		<c:forEach var="Tournament" items="${tournaments8}">
			<tr>

				<td>${Tournament.tid}</td>
				<td>${Tournament.tournamenttitel}</td>
				<td>${Tournament.game}</td>
				<td>${Tournament.anzahl}</td>
				<td>${Tournament.currentAnzahl}</td>
				<td><a
					href="../../../show8PlayerDetailAdminServlet?tid=${Tournament.tid}">Detail</a></td>
				<td><a
					href="../../../deleteTournamentServlet?tid=${Tournament.tid}&anzahl=${Tournament.anzahl}">Löschen</a></td>


			</tr>

		</c:forEach>
	</table>
	<h2>Volle 16er Tournaments</h2>
	<table>

		<tr>
			<th>Tournament-ID</th>
			<th>Titel</th>
			<th>Spiel</th>
			<th>Anzahl</th>
			<th>Teilnehmer</th>

		</tr>

		<c:forEach var="Tournament" items="${tournaments16}">
			<tr>

				<td>${Tournament.tid}</td>
				<td>${Tournament.tournamenttitel}</td>
				<td>${Tournament.game}</td>
				<td>${Tournament.anzahl}</td>
				<td>${Tournament.currentAnzahl}</td>
				<td><a
					href="../../../show16PlayerDetailAdminServlet?tid=${Tournament.tid}">Detail</a></td>
				<td><a
					href="../../../deleteTournamentServlet?tid=${Tournament.tid}&anzahl=${Tournament.anzahl}">Löschen</a></td>


			</tr>

		</c:forEach>
	</table>
	<h2>Volle 32er Tournaments</h2>
	<table>

		<tr>
			<th>Tournament-ID</th>
			<th>Titel</th>
			<th>Spiel</th>
			<th>Anzahl</th>
			<th>Teilnehmer</th>

		</tr>

		<c:forEach var="Tournament" items="${tournaments32}">
			<tr>

				<td>${Tournament.tid}</td>
				<td>${Tournament.tournamenttitel}</td>
				<td>${Tournament.game}</td>
				<td>${Tournament.anzahl}</td>
				<td>${Tournament.currentAnzahl}</td>
				<td><a
					href="../../../show32PlayerDetailAdminServlet?tid=${Tournament.tid}">Detail</a></td>
				<td><a
					href="../../../deleteTournamentServlet?tid=${Tournament.tid}&anzahl=${Tournament.anzahl}">Löschen</a></td>


			</tr>

		</c:forEach>
	</table>
</body>
</html>