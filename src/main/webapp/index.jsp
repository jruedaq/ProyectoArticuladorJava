<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js">​</script>
    <meta charset="utf-8"/>
    <title>FORMULARIO FINAL</title>
    <script type="application/Javascript" src="js/segundo.js"></script>
    <script src="js/particles.min.js"></script> <!-- Faltó llamar a particles.min.js -->

    <style>
        div.soild {
            border-style: solid;
        }

        div.row > div {
            height: 50px;
        }

        div#container-fluid {
            border-radius: 5px;
            border-color: black;
            background-color: rgba(245, 241, 241, 0.979);
            width: 450px;
            height: 500px;
        }

        .text {
            width: 200px;
            height: 15px;
            font-family: Arial, Helvetica, sans-serif;
            padding: 10px;
            color: #000000;
            font-weight: bolder;
            font-size: 14px;

        }

        body {
            /*background-color: black;*/
        }

        #particles-js {
            z-index: -1;
            position: fixed; /* Ajusté para que no se mueva */
            width: 100%;
            height: 100%;
        }

        h2 {
            margin-top: 10px;
            margin-block-end: 30px;
        }
    </style>
</head>
<body background="assets/fondo15.png">
<div id="particles-js"></div>
<script src="js/app.js"></script>
<center>
    <div id="container-fluid" class="soild">
        <form method="GET" action="RegisterUserServlet" name="form1" onSubmit="return validarFormulario()">
            <center>
                <h2>FORMULARIO DE REGISTRO</h2>
                <table>
                    <tr>
                        <td>
                            <label for="tipoID">Tipo de Documento:</label>
                        </td>
                        <td>
                            <select id="tipoID" name="typeDoc" class="custom-select" onFocus="vaciar(this)"
                                    onBlur="verificarEntrada(this)">
                                <option selected></option>
                                <option value="CC">CC</option>
                                <option value="TI">TI</option>
                                <option value="NIT">NIT</option>
                                <option value="PASAPORTE">PASAPORTE</option>
                                <option value="CE">Cedula De Extanjeria</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="nID">Numero de Documento:</label>
                        </td>
                        <td>
                            <input id="nID" type="number" name="doc" onFocus="vaciar(this)"
                                   onBlur="verificarEntrada(this)">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="nombre">Nombres:</label>
                        </td>
                        <td>
                            <input id="nombre" type="text" name="fname" onFocus="vaciar(this)"
                                   onBlur="verificarEntrada(this)">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="apellido">Apellidos:</label>
                        </td>
                        <td>
                            <input id="apellido" type="text" name="lname" onFocus="vaciar(this)"
                                   onBlur="verificarEntrada(this)">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="eda">Edad:</label>
                        </td>
                        <td>
                            <input id="eda" type="number" name="age" onFocus="vaciar(this)"
                                   onBlur="verificarEntrada(this)">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="celu">Celular:</label>
                        </td>
                        <td>
                            <input id="celu" type="number" name="phone" onFocus="vaciar(this)"
                                   onBlur="verificarEntrada(this)">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="dire">Direccion:</label>
                        </td>
                        <td>
                            <input id="dire" type="text" name="address" onFocus="vaciar(this)"
                                   onBlur="verificarEntrada(this)">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="fe">Fecha de Nacimiento:</label>
                        </td>
                        <td>
                            <input id="fe" type="date" name="bornDate" onFocus="vaciar(this)" onBlur="verificarEntrada(this)">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="pass">Contraseña:</label>
                        </td>
                        <td>
                            <input id="pass" type="password" name="pass" onFocus="vaciar(this)" onBlur="verificarEntrada(this)">
                        </td>
                    </tr>
                </table>
                <br>

                <input type="submit" value="Enviar" onclick="location.href='correo.html'">
                <input type="reset" value="Borrar">
            </center>
        </form>
    </div>
</center>
</body>
</html>