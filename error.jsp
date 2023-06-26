<%-- 
    Document   : error
    Created on : 14/06/2023, 02:17:48 PM
    Author     : Uzías
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8" session="true"%>
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
            <div class="container-fluid pt-4">
                <div class="alert alert-danger">
                    <h4 class="alert-heading oscuro"> ¡Ha ocurrido un error! </h4>
                    <p class="text-center text-break fs-4 fw-light oscuro">
                        Al momento de realizar una consulta con el sistema ha llegado a un error, esto puede deberse a varias cosas, pregunte al administrador del sistema qué ocurrió.
                    </p>
                </div>
            </div>
        </main>
    </body>
</html>
