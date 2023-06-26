<%-- 
    Document   : papeleria
    Created on : 22/06/2023, 10:44:09 PM
    Author     : Uzías
--%>

<%@page import="Conexion.Consultas"%>
<%@page import="Soporte.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true" language="java"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Merceria</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <link rel="stylesheet" href="css/estilos.css">
    </head>
    <%
        //Verificar si la sesion está iniciada para desactivar los botones de agregar al carrito
        HttpSession sesion;
        Usuario u = new Usuario();

        sesion = request.getSession();
        u = (Usuario)sesion.getAttribute("usuario");

        //Bandera
        boolean sesionVerdadera = false;
        if(u != null){
            sesionVerdadera = true;
        }

        int idNegocio = 2;

        //Objetos de las consultas
        Consultas con = new Consultas();
        int maxIdProducto = con.maxIdProducto();
    %>
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
                        <!-- Si la sesion está iniciada mostrar los botones para el carrito y el perfil -->
                        <%
                            if(sesionVerdadera){
                                //Mostrar los botones
                            %>
                             <a class="nav-link" href="perfil.jsp">Editar Perfil</a>   
                             <a class="nav-link" href="carrito.jsp">Carrito</a>   
                        <% } else {
                                //Opcion de registro
                        %>
                                <a class="nav-link" href="registrarse.jsp">Registrarse</a>
                        <%
                            }
                        %>
                        
                      </div>
                    </div>
                </div>
              </nav>
        </header>

        <main>
            <div class="container-fluid mt-4">
                <div class="row">
                    <h1 class="text-center"> Los productos disponibles son: </h1>
                </div>
                <div class="row table-responsive">
                    <!-- Aqui es donde se debe modificar para que aparezcan por categorias, pero tengo sueñou -->
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <td> Id </td>
                                <td> Nombre </td>
                                <td> Imagen </td>
                                <td> Precio </td>
                                <td> Catalogo Producto </td>
                                <td> Negocio </td>
                                <td> Acciones </td>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                //El iterador empieza en 1 para matchear con los ids
                                for (int i = 1; i <= maxIdProducto; i++) {
                                        String [] producto = con.obtenerProductoByNegocio(idNegocio, i);
                                        //Imprimir los datos del producto, verificando que el arreglo no sea null
                                        if(producto == null || maxIdProducto == 0){
                                            break;
                                        }
                            %>
                                <tr>
                                    <td> <%=producto[0]%> </td>
                                    <td> <%=producto[1]%> </td>
                                    <td> <img src="<%=producto[2]%>" /> </td>
                                    <td> <%=producto[3]%> </td>
                                    <td> <%=producto[4]%> </td>
                                    <td> <%=producto[5]%> </td>
                                    <!-- Verificar si la sesión está iniciada antes de imprimir los botones -->
                                    <%
                                        if(sesionVerdadera){
                                    %>
                                        <td> <p class="text-center"> <a class="btn btn_principal" href="#">Agregar al carrito</a> </p> </td>
                                    <%    } else {
                                            //Iniciar sesión para añadir al carrito
                                    %>
                                        <td> <p class="text-center text-break"> <a class="btn btn_principal" href="inicio_sesion.jsp">Inicia sesión para agregar</a> </p> </td>
                                    <%
                                        }
                                    %>
                                </tr>
                            <%
                                }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
            
        </main>
        
    </body>
</html>
