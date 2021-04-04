<%--
  Created by IntelliJ IDEA.
  User: jruedaq
  Date: 4/04/21
  Time: 5:46 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="utf-8">
    <link rel="shortcut icon" href="#">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--Bootstrap tags-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
            integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
            integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
            integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
            crossorigin="anonymous"></script>

    <!--styles.css-->
    <link rel="stylesheet" href="css/style.css">

    <!--FontAwersome-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
          integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <title>Inicia sesión</title>

    <script src="dynamic1.js"></script>
</head>

<body style="background: url('assets/fonfo2.jpg');">

<div class="card mlogin bg-light">
    <div>
        <h1 style="font-family: inherit">Iniciar sesión</h1>
        <form action="LoginServlet" name="loginForm" id="loginform" method="GET">
            <div class="containerform mb-3">
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-portrait"></i></span>
                    </div>
                    <label for="id"></label>
                    <input class="form-control input" placeholder="Identificación" type="number"
                           name="id" id="id" autofocus size="20"/>
                </div>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-lock"></i></span>
                    </div>
                    <label for="password"></label>
                    <input class="form-control input" placeholder="Contraseña"
                           type="password" name="password" id="password" size="20"/>
                </div>
            </div>
            <p class="submit"><input type="submit" name="login" class="button" value="Entrar" onclick="checkForm()"></p>
        </form>
    </div>
</div>
</body>

</html>
