<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 
	uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="Utf-8">
<base href="${pageContext.request.requestURI}" />
<link rel="stylesheet" type="text/css" href="../css/styleTeamTable.css">
<script src="../js/defaultPicture.js"></script>
<%@ include file = "../../global/jspf/styleImports.jspf" %>
<title>Show Team</title>
</head>
  	<body>
  <nav>
	
	<%@ include file = "../../global/jspf/navImports.jspf" %>
</nav>

<%@ include file = "../../global/jspf/createTeamForm.jspf" %>
  		
	<h1>Your Team</h1>
	
	<div id="LayoutContainer">
	
		<div id="tablediv">
		<table>
				<tr class="tableRow">			
					<th class="tableHead">Team Name</th>
					<th class="tableHead">Teamleader</th>
					<th class="tableHead">Username</th>
					<th class="tableHead">Region</th>
					<th class="tableHead">Name</th>
					<th class="tableHead">Picture</th>
			</tr>
			  
			<c:forEach var="users" items="${user}">
				 <tr class="tableRow">	
				 	<td class="tableData">${users.teamname}</td>
				 	<td class="tableData">${users.teamleader}</td>
					<td class="tableData">${users.username}</td>
					<td class="tableData">${users.region}</td>
					<td class="tableData">${users.name}</td>
					<td class="tableData"><img src="../../../ShowPictureServlet?username=${users.username}" class="picture" name="${users.filename}" alt="Picture of your avatar"></td>	
				</tr>
			</c:forEach>	
		</table>
		</div>
		<div id="ButtonContainer">
			<a class="link" href="../../../LeaveTeamServlet?teamId=${teamId}">Leave Team</a>
		</div>
	</div>
	
	<%@ include file = "../../global/jspf/foot.jspf" %>
