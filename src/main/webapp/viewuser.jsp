<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
    <style>
        .button {
            background-color: #4CAF50;
            border: none;
            color: white;
            padding: 8px;
            text-align: center;
            text-decoration: none;
            display: block;
            font-size: 14px;
            margin: 10px 0;
            cursor: pointer;
            border-radius: 4px;
            transition: background-color 0.3s;
            width: 200px;
        }


        .button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

<h1>Users</h1>

<table>

    <tr>
        <th>First Name</th>
        <th>Last Name</th>
        <th colspan="3">Email</th>
    </tr>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:forEach var="user" items="${users}">
        <tr>
            <td>${user.firstName}</td>
            <td>${user.lastName}</td>
            <td>${user.email}</td>
            <td><a href="userAdmin?action=display_user&amp;email=${user.email}">Update</a></td>
            <td><a href="userAdmin?action=delete_user&amp;email=${user.email}">Delete</a></td>
        </tr>
    </c:forEach>

</table>
<p class="pad_top"><a href="userAdmin">Refresh</a></p>
<form class="pad_top" action="userAdmin" method="post">
    <input type="hidden" name="action" value="return">
    <input type="submit" value="return" class="button">
</form>

</body>
</html>
