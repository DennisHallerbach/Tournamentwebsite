<!-- von Dennis Hallerbach -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
 <%@ taglib prefix="c" 
	uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<base href="${pageContext.request.requestURI}" />
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="../../dashboard/css/styleStart.css" />
<%@ include file = "../../global/jspf/styleImports.jspf" %>
<link rel="stylesheet" type="text/css" href="../css/anzeigen.css" />
<title>HOME</title>
</head>
<body>
<nav>
	<%@ include file = "../../global/jspf/navImports.jspf" %>
</nav>

<%@ include file = "../../global/jspf/createTeamForm.jspf" %>

	
	
		
			<h1>Your Home For Competitive Gaming</h1>

		<h2>Tournaments</h2>
		<h2>${fehler}</h2>
	<div id = "anzeigen">
	<table >
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
					<td><a href="../../../tournamentteilnehmenServlet?tid=${Tournament.tid}">Teilnehmen</a></td>
					
						
				</tr>
				
			</c:forEach>
			</table>
	</div>
	<%@ include file = "../../global/jspf/foot.jspf" %>