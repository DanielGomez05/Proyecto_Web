<%-- 
    Document   : inicio_sesion
    Created on : 21/06/2023, 06:16:55 PM
    Author     : Uzías
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" session="true"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iniciar sesion</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <link rel="stylesheet" href="css/estilos.css">
    </head>
    <body>
        <!-- Cargar el script para bootstrap -->
        <script src="js/bootstrap.bundle.min.js"></script>
        <header>
            <nav class="navbar navbar-expand-lg barra">
                <div class="container-fluid">
                    <a href="index.html" class="logo navbar-brand">
                        <img src="img/log.jpeg" width="50" height="50" alt="company logo" class="logo-img">
                       Papeleria Gomita
                    </a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                      <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                      <div class="navbar-nav">
                        <a class="nav-link" href="index.html">Inicio</a>
                        <a class="nav-link" href="papeleria.jsp">Papelería</a>
                        <a class="nav-link" href="merceria.jsp">Mercería</a>
                        <a class="nav-link" href="Contacto.html">Contacto</a>
                        <a class="nav-link" href="registrarse.jsp">Registrarse</a>
                      </div>
                    </div>
                </div>
              </nav>
        </header>
        
        <main>
            <div class="container-fluid mt-4 sesion">
                <h1 class="text-center"> Iniciar sesion </h1>
                <div class="row">
                    <form action="Inicia" method="post">
                        <fieldset>
                            <div class="form-group">
                                <label for="nombre" class="form-label mt-4">Nombre:</label>
                                <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Nombre de usuario" required="required">
                            </div>
                            <div class="form-group">
                                <label for="email" class="form-label mt-4">Correo:</label>
                                <input type="email" class="form-control" id="email" name="email" placeholder="Correo electrónico" required="required">
                            </div>
                            <div class="form-group">
                                <label for="pass" class="form-label mt-4">Contraseña</label>
                                <input type="password" class="form-control" id="pass" name="pass" placeholder="Password" required="required">
                            </div>
                            <div class="form-group row m-2 mt-4">
                                <p class="text-center">
                                    <button class="btn btn_principal" type="submit"> Iniciar sesion </button>
                                    <button  class="btn btn_secundario" type="reset">Borrar</button>
                                </p>
                            </div>
                        </fieldset>
                    </form>
                    <div class="form-group row mt-2">
                        <p class="text-center">
                            ¿No tienes una cuenta? &nbsp;
                            <a href="registrarse.jsp" class="btn btn_principal">Registrate</a>
                        </p>
                    </div>
                </div>
            </div>
        </main>
    </body>
</html>
