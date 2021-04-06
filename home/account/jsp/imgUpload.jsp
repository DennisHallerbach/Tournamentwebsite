<!-- von Stefan Rother -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    
    <link rel="stylesheet" type="text/css" href="home/global/css/styleMsg.css" />
    <title>Insert title here</title>
</head>

<body>
<div id="LayoutContainer">
    <h1>Your Picture Has Been Uploaded ${form.filename}</h1>
    <img id="image" src="ShowPictureServlet?username=${form.username}" alt="Picture of your avatar">
    <a class="link" href="ReadAccServlet_Session">back to Account</a>
</div>
</body>

</html>