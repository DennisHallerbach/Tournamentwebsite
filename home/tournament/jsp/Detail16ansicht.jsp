<!-- von Dennis Hallerbach -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<base href="${pageContext.request.requestURI}" />
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="../../dashboard/css/styleStart.css" />
<%@ include file="../../global/jspf/styleImports.jspf"%>
<link rel="stylesheet" type="text/css"
	href="../../admin/Css/Player8Tournament.css" />
<title>TunierDetailansicht 16 Spieler Tournament</title>
</head>
<body>
	<nav>
		<a href="../../../showDashboardServlet">Dashboard</a>

	</nav>
	<h1>Tunieransicht 16 Spieler Tournament</h1>
	<div class="tabellen">
		<table id="Achtelfinale">
			<tr>
				<th>Achtelfinale</th>


			</tr>

			<c:forEach var="Team" items="${alle}">
				<tr>

					<td>${Team.teamname}</td>


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


				</tr>

			</c:forEach>
		</table>
		<table id="Halbfinale">
			<tr>
				<th>Halbfinale</th>


			</tr>

			<c:forEach var="Team" items="${halb}">
				<tr>

					<td>${Team.teamname}</td>


				</tr>

			</c:forEach>
		</table>
		<table id="Finale">
			<tr>
				<th>Finale</th>


			</tr>

			<c:forEach var="Team" items="${finale}">
				<tr>

					<td>${Team.teamname}</td>


				</tr>

			</c:forEach>
		</table>
		<table id="Sieg">
			<tr>
				<th>Sieg</th>


			</tr>

			<c:forEach var="Team" items="${sieg}">
				<tr>

					<td>${Team.teamname}</td>


				</tr>

			</c:forEach>
		</table>
	</div>
</body>
</html>