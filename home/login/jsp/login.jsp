<!-- von Stefan Rother -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <script src="../js/checkLogin.js"></script>
	<link rel="stylesheet" type="text/css" href="../../global/css/styleMsg.css" />
	<link rel="stylesheet" type="text/css" href="../../global/css/styleFormular.css" />
    <base href="${pageContext.request.requestURI}" />
    <meta charset="UTF-8">
    <title>Your Team</title>
</head>

<body>
<div id="FormPadding">
<div id="LayoutContainer">
<fieldset class="formFieldset">
<legend class="formLegend">Please Enter Your Login Information</legend>
    <div>
        <p id="failedLogin"></p>
    </div>
    <div>
        <label class="formLabel" for="inputUsername">Username:</label>
        <input class="formInput" type="text" name="username" id="inputUsername" placeholder="Enter Your Username" title="enter Username" required autofocus maxlength="20" />
    </div>
    <div>
        <label class="formLabel" for="inputPassword">Passwort:</label>
        <input class="formInput" type="password" name="password" id="inputPassword" placeholder="Enter Your Password" title="enter Password" required maxlength="20" />
    </div>
    <div>
        <button class="formButton" type="button" id="submitLogin" name="action" value="writeToSession">Login</button>
    </div>
</fieldset>
<a class="link" href="../../../index.html">back to mainpage</a>
</div>
</div>
</body>

</html>