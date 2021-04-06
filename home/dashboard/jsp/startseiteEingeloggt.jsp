<!-- von Stefan Rother -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" 
	uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<base href="${pageContext.request.requestURI}" />
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="../css/styleStart.css" />
<%@ include file = "../../global/jspf/styleImports.jspf" %>
<title>HOME</title>
</head>
<body>
<nav>
	<%@ include file = "../../global/jspf/navImports.jspf" %>
</nav>

<%@ include file = "../../global/jspf/createTeamForm.jspf" %>
	
<br>
<br>
<hr>
<div id="banner-image">
    <div id="banner-text">
        <h1>Your Home For Competitive Gaming</h1>
    </div>
</div>
<hr>
<!-- ab hier: von Dennis Hallerbach -->

<h2>Tournaments</h2>
<h3>8-Player Tournaments</h3>
<div id="anzeigen">
<table>
    <tr>
        <th>Titel</th>
        <th>Spiel</th>
        <th>Anzahl</th>
        <th>Teilnehmer</th>
        <th>Position</th>

    </tr>

    <c:forEach var="achte" items="${acht}">
        <tr>

            <td>${achte.titel}</td>
            <td>${achte.spiel}</td>
            <td>${achte.anzahl}</td>
            <td>${achte.currentAnzahl}</td>
            <td>${achte.position}</td>

            <td><a href="../../../show8PlayerDetailServlet?tid=${achte.tid}">Details</a></td>

        </tr>

    </c:forEach>
</table>

<h3>16-Player Tournaments</h3>
<table>
    <tr>
        <th>Titel</th>
        <th>Spiel</th>
        <th>Anzahl</th>
        <th>Teilnehmer</th>
        <th>Position</th>

    </tr>

    <c:forEach var="achte" items="${sechzehn}">
        <tr>

            <td>${achte.titel}</td>
            <td>${achte.spiel}</td>
            <td>${achte.anzahl}</td>
            <td>${achte.currentAnzahl}</td>
            <td>${achte.position}</td>

            <td><a href="../../../show16PlayerDetailServlet?tid=${achte.tid}">Details</a></td>

        </tr>

    </c:forEach>
</table>

<h3>32-Player Tournaments</h3>
<table>
    <tr>
        <th>Titel</th>
        <th>Spiel</th>
        <th>Anzahl</th>
        <th>Teilnehmer</th>
        <th>Position</th>

    </tr>

    <c:forEach var="achte" items="${dreizwei}">
        <tr>

            <td>${achte.titel}</td>
            <td>${achte.spiel}</td>
            <td>${achte.anzahl}</td>
            <td>${achte.currentAnzahl}</td>
            <td>${achte.position}</td>

            <td><a href="../../../show32PlayerDetailServlet?tid=${achte.tid}">Details</a></td>

        </tr>

    </c:forEach>
</table>
</div>
	
	
	<%@ include file = "../../global/jspf/foot.jspf" %>