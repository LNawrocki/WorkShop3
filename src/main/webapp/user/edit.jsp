<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edytuj użytkownika</title>
    <link rel="stylesheet" href="/css/style.css"/>
</head>
<body>
<header class="header">
    <div class="name"><h1>Łukasz Nawrocki</h1><br>
        <h1>UsersRUD application</h1>
    </div>
    <div class="info-adress">
        <div class="info-contact">
            <h1>Adres:</h1>
            <h1>Telefon:</h1>
            <h1>E-mail:</h1>
        </div>

        <div class="info-contact">
            <h1>Bielsko-Biała</h1>
            <h1>.............</h1>
            <h1>.............</h1>
        </div>
    </div>

    <div class="info-contact">
        <div><h1><a href="#">Linkedin</a></h1></div>
        <div><h1><a href="#">Pracuj.pl</a></h1></div>
        <div><h1><a href="#">Github</a></h1></div>
    </div>
    </div>
    </div>
</header>

<section class="info">
    <section class="info-block" style="text-align: center">
        <p>Edycja użytkownika</p>
    </section>
    <section class="info-block" style="text-align: center">
        <form action="" method="POST"><br>
            <p>Nazwa</p>
            <p><input type="text" name="name" value="${user.getUserName()}"></p>
            <p>Email</p>
            <p><input type="text" name="email" value="${user.getEmail()}"></p>
            <p>Hasło</p>
            <p><input type="password" name="password" placeholder="Hasło użytkownika"></p>
            <p><button type="SUBMIT">Zapisz</button></p>
        </form>
    </section>
    <section class="info-block" style="text-align: center">
        <p><a href="/user/add">Dodaj użytkownika</a>&nbsp &nbsp<a href="/user/list">Lista użytkowników</a></p>
    </section>
</section>
</body>
</html>
