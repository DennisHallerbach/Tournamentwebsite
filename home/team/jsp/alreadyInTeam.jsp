<!-- von Stefan Rother -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <base href="${pageContext.request.requestURI}" />
    <link rel="stylesheet" type="text/css" href="../../global/css/styleMsg.css" />
    <title>Already in Team</title>
</head>

<body>
<div id="LayoutContainer">
    <h1>Sorry! Player: ${player} is already in a team</h1>
    <a class="link" href="../../../ReadTeamServlet">back to Team</a>
</div>
</body>

</html>