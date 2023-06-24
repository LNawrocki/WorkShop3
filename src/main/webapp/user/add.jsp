
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edytuj użytkownika</title>
</head>
<body>

<a href="/user/list">Lista użytkowników</a> <br>


<form action="/user/add" method="POST">

    <input name="name" PLACEHOLDER="Nazwa użytkownika"/><br>
    <input name="email" PLACEHOLDER="Email użytkownika"/><br>
    <input name="password" PLACEHOLDER="Hasło użytkownika"/><br>

    <button type="SUBMIT">Dodaj użytkownika</button>
</form>

</body>
</html>
