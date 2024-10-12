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
<h1>Join our email list</h1>
<p>To join our email list, enter your name and email address below.</p>
<p style="color: red">${message}</p>
<form action="emailList" method="post">
    <input type="hidden" name="action" value="add">
    <label class="pad_top">Email:</label>
    <input type="email" name="email" value="${user.email}" required><br>
    <label class="pad_top">First Name:</label>
    <input type="text" name="firstName" value="${user.firstName}" required><br>
    <label class="pad_top">Last Name:</label>
    <input type="text" name="lastName" value="${user.lastName}" required><br>
    <label>&nbsp;</label>
    <input type="submit" value="Join Now" class="button margin_left">
</form>
<form action="userAdmin" method="post">
    <label>&nbsp;</label>
    <input type="submit" value="Go to User Management" class="button">
</form>
</body>
</html>
