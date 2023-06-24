<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edytuj użytkownika</title>
</head>
<body>

<a href="/user/list">Lista użytkowników</a> <br>

<form action="" method="POST">
    Edycja użytkownika <br>
    <br>
    Nazwa <br>
    <input type="text" name="name" value="${user.getUserName()}"><br>

    Email <br>
    <input type="text" name="email" value="${user.getEmail()}"><br>

    Hasło <br>
    <input type="password" name="password" placeholder="Hasło użytkownika"><br>
    <button type="SUBMIT">Edytuj</button>
</form>
</body>
</html>
