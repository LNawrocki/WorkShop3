
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dodaj użytkownika</title>
    <link rel="stylesheet" href="/css/style.css" />
</head>
<body>
<header class="header">
    <div class="name"><h1>Łukasz Nawrocki</h1><br>
        <h1>UsersCRUD application</h1>
    </div>
    <div class="info-adress">
        <div class="info-contact">
            <h1>Adres:</h1>
            <h1>Telefon:</h1>
            <h1>E-mail:</h1>
        </div>

        <div class="info-contact">
            <h1>Bielsko-Biała</h1>
            <h1>..........</h1>
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
        <p>Dodaj użytkownika</p>
    </section>
    <section class="info-block" style="text-align: center">
        <form action="/user/add" method="POST" style="margin: 20px">
            <input name="name" PLACEHOLDER="Nazwa użytkownika"/>
            <input name="email" PLACEHOLDER="Email użytkownika"/>
            <input name="password" PLACEHOLDER="Hasło użytkownika"/>
            <button type="SUBMIT">Dodaj użytkownika</button>
        </form>
    </section>

        <section class="info-block" style="text-align: center">
            <p><a href="/user/list">Lista użytkowników</a> <br></p>
        </section>
</section>
</body>
</html>
