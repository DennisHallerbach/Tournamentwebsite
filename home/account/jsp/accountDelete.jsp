<!-- von Stefan Rother -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
 <base href="${pageContext.request.requestURI}" />
	<link rel="stylesheet" type="text/css" href="../../global/css/styleMsg.css" />
    <title>Account Deleted</title>
</head>

<body>
<div id="LayoutContainer">
    <h1>Account Deleted! </h1>
    <p>Good Bye ${user} ! :(</p>
    <a class="link" href="../../../index.html">back to mainpage</a>
</div>
</body>

</html>