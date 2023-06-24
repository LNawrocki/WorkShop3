
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edytuj użytkownika</title>
</head>
<body>
<form action="/user/add" method="POST">

    <input name="name" PLACEHOLDER="Nazwa użytkownika"/>
    <input name="email" PLACEHOLDER="Email użytkownika"/>
    <input name="password" PLACEHOLDER="Hasło użytkownika"/>

    <button type="SUBMIT">Dodaj użytkownika</button>
</form>

</body>
</html>
