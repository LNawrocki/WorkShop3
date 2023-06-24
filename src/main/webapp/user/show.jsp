
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show</title>
</head>
<body>

<a href="/user/add">Dodaj użytkownika</a> <br>
<br>

Szczegóły użytkownika <br>
<br>

Id <br>
${userShow.getId()} <br>

Nazwa użytkownika <br>
${userShow.getUserName()} <br>

Email <br>
${userShow.getEmail()} <br>

</body>
</html>
