<!-- von Stefan Rother -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <base href="${pageContext.request.requestURI}" />
    <meta charset="Utf-8">
    <link rel="stylesheet" type="text/css" href="../css/styleAcc.css" />
    <script src="../js/showEdit.js"></script>
    <%@ include file = "../../global/jspf/styleImports.jspf" %>
    
   
    <title>Account Information</title>
</head>

<body>
    <nav>
     
        <%@ include file = "../../global/jspf/navImports.jspf" %>
    </nav>

    <%@ include file = "../../global/jspf/createTeamForm.jspf" %>

        <div id="topSpace"></div>
<div id="LayoutContainer">
    <div id="tablediv">
        <table class="accTable">
            <tr>
                <th class="tableHead" colspan="3">Account Information</th>
            </tr>
            <tr>
                <td class="tableData">Username:</td>
                <td class="tableData">${user.username}</td>
                <td class="tableData"></td>
            </tr>
            <tr>
                <td class="tableData">Email:</td>
                <td class="tableData">${user.email}</td>
                <td class="tableData">
                    <button type="button" id="emailButton" class="toggle" name="toggleEmail">EDIT</button>
                </td>
                <tr>
                    <td colspan="3" id="toggleEmail" class="hideTable">
                        <form id="emailForm" method="post" action="../../../UpdateEmailServlet?id=${user.username}">

                            <fieldset>
                                <legend>New Email-Adress:</legend>
                                <input type="text" id="email" name="email" placeholder="New Email-Adress" size="35" maxlength="20" />
                                <br>
                                <div>
                                    <button type="submit" name="submit">Edit Email-Adress</button>
                                </div>
                            </fieldset>
                        </form>

                    </td>
                </tr>

                <tr>
                    <td class="tableData">Region:</td>
                    <td class="tableData">${user.region}</td>
                    <td class="tableData">
                        <button type="button" id="regionButton" class="toggle" name="toggleRegion">EDIT</button>
                    </td>
                </tr>
                <tr>
                    <td id="toggleRegion" colspan="3" class="hideTable">
                        <form id="regionForm" method="post" action="../../../UpdateRegionServlet?id=${user.username}">
                            <fieldset>
                                <legend>Change Your Region</legend>
                                <select name="region" id="selectRegion">
                                    <option value="EU">EU</option>
                                    <option value="NA">NA</option>
                                    <option value="Russia">Russia</option>
                                </select>
                                <div>
                                    <button type="submit" name="submit" id="editbutton">Edit Region</button>
                                </div>
                            </fieldset>
                        </form>
                    </td>
                </tr>
        </table>

        <table class="accTable">
            <tr>
                <th class="tableHead" colspan="3">Password</th>
                <tr>
                    <td class="tableData">Password:</td>
                    <td class="tableData">${user.password}</td>
                    <td class="tableData">
                        <button type="button" id="passwordButton" class="toggle" name="togglePassword">EDIT</button>
                    </td>
                    <tr>
                        <td id="togglePassword" colspan="3" class="hideTable">
                            <form id="PasswordForm" method="post" action="../../../UpdatePwServlet?id=${user.username}">
                                <fieldset>
                                    <legend>Change Your Password</legend>
                                    <div>
                                        <label for="newPassword">New Password:</label>
                                        <input type="text" id="newPassword" name="newPassword" placeholder="New Password" size="35" maxlength="20" />
                                    </div>
                                    <br>
                                    <div>
                                        <button type="submit" name="submit">Edit Password</button>
                                    </div>
                                </fieldset>
                            </form>
                        </td>
                    </tr>
        </table>
        
        <table class="accTable">
            <tr>
                <th class="tableHead" colspan="3">Personal Details</th>
            </tr>
            <tr>
                <td class="tableData">Name:</td>
                <td class="tableData">${user.name}</td>
                <td class="tableData">
                    <button type="button" id="nameButton" class="toggle" name="toggleName">EDIT</button>
                </td>
            </tr>
            <tr>
                <td id="toggleName" colspan="3" class="hideTable">
                    <form id="nameForm" method="post" action="../../../UpdateNameServlet?id=${user.username}">
                        <fieldset>
                            <legend>Change Your Name</legend>
                            <div>
                                <label for="name">Edit your Name: </label>
                                <input type="text" id="name" name="name" placeholder="Your Name" size="35" maxlength="20" />
                            </div>
                            <br>
                            <div>
                                <button type="submit" name="submit">Edit Name</button>
                            </div>
                        </fieldset>
                    </form>
                </td>
            </tr>
        </table>
    </div>
    
    <form id="pictureForm" method="post" action="../../../PicServlet" enctype="multipart/form-data">
        <fieldset>
            <legend>Upload An Avatar</legend>
            <div>
                <input type="file" name="image" id="image" accept="image/*">
            </div>
            <div>
                <button type="submit">Upload</button>
            </div>
        </fieldset>
    </form>

    <div id="deleteButton">
        <a class="link" id="deleteAccLink" href="../../../DeleteServlet">Delete Your Account</a>
    </div>

</div>

	<%@ include file = "../../global/jspf/foot.jspf" %>