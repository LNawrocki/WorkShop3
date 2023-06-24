<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Wyświetl użytkowników</title>
</head>
<body>


<TABLE border>
    <TR ><TD>ID</TD><TD>Nazwa użytkownika</TD><TD>Email</TD><TD>Akcja</TD></TR>

    <c:forEach var="user" items="${users}">
    <TR>
        <td>${user.id}</td> <td>${user.userName}</td><td>${user.email}</td>
        <td>
            <a href="/user/delete?userID=${user.id}">Usuń</a>
            <a href="/user/edit?userID=${user.id}">Edytuj</a>
            <a href="/user/show?userID=${user.id}">Pokaż</a>
        </td>
    </TR>
    </c:forEach>

</TABLE>
<a href="/user/add">Dodaj użytkownika</a>

</body>
</html>
