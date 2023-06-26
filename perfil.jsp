<%-- 
    Document   : perfil
    Created on : 25/06/2023, 06:50:42 PM
    Author     : Uzías
--%>

<%@page import="Soporte.Usuario"%>
<%@page import="Soporte.Usuario"%>
<%@page import="Conexion.Consultas"%>
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
        } else {
            response.sendRedirect("inicio_sesion.jsp");
        }
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
            <!-- Si llegó hasta aqui significa que la sesión está iniciada -->
            <%
                if(sesionVerdadera){
                    //Obtener el idCUsuario para futuras operaciones
                    int privilegios = u.getIdCUsuarios();
                
                //Hay 5 cosas que se pueden modificar, entre ellas el pago
            %>
            <div class="container-fluid mt-4 sesion">
                <div class="row">
                    <div class="col">
                        <h1 class="text-center"> Está editando los datos del usuario </h1>
                        <form action="actualizar" method="post">
                            <fieldset>
                                <legend>Datos de la cuenta</legend>
                                <div class="form-group">
                                    <label for="name">Nombre</label>
                                    <input class="form-control" type="text" name="name" id="name" required="required" value="<%=u.getNombre()%>"/>
                                    
                                    <label for="email">Correo</label>
                                    <input class="form-control" type="email" name="email" id="email" required="required" value="<%=u.getCorreo()%>"/>
                                    
                                    <label for="pass">Contraseña</label>
                                    <input class="form-control" type="password" name="pass" id="pass" required="required" value="<%=u.getPass()%>"/>
                                    
                                    <label for="direccion">Direccion</label>
                                    <input class="form-control" type="text" name="direccion" id="direccion" required="required" value="<%=u.getDireccion()%>"/>
                                </div>
                            </fieldset>
                            <!-- Para seguir con el formulario hay que obtener los datos de la tarjeta que se tiene registrada -->
                            <%
                                boolean pagoRegistrado = false;
                                Consultas con = new Consultas();
                                String [] pago = con.obtenerPagoByPago(u.getIdPago());
                                if(u.getIdPago() != 1){
                                    pagoRegistrado = true;
                                    System.out.println("El pago está registrado");
                                    System.out.println("El valor del idPago es "+u.getIdPago());
                                }
                            %>
                            <fieldset>
                                <legend>Datos de pago</legend>
                                <div class="form-group">
                                    <%
                                        if(pagoRegistrado){
                                    %>
                                        <label for="numTar">Numero de Tarjeta</label>
                                        <input class="form-control" type="number" name="numTar" id="numTar" max="9999999999999999" required="required" value="<%=pago[1]%>"/>
                                        
                                        <label for="titular">Titular</label>
                                        <input class="form-control" type="text" name="titular" id="titular" required="required" value="<%=pago[2]%>"/>
                                        
                                        <label for="CVV">CVV</label>
                                        <input class="form-control" type="number" name="CVV" id="CVV" min="000" max="999" required="required" value="<%=pago[3]%>"/>
                                        
                                        <label for="fechaCad">Fecha de Caducidad</label>
                                        <input class="form-control" type="date" name="fechaCad" id="fechaCad" required="required" value="<%=pago[4]%>"/>
                                    <%        
                                        } else {
                                    %>
                                        <label for="numTar">Numero de Tarjeta</label>
                                        <input class="form-control" type="number" name="numTar" id="numTar" max="9999999999999999" required="required"/>
                                        
                                        <label for="titular">Titular</label>
                                        <input class="form-control" type="text" name="titular" id="titular" required="required"/>
                                        
                                        <label for="CVV">CVV</label>
                                        <input class="form-control" type="number" name="CVV" id="CVV" min="000" max="999" required="required" />
                                        
                                        <label for="fechaCad">Fecha de Caducidad</label>
                                        <input class="form-control" type="date" name="fechaCad" id="fechaCad" required="required"/>
                                    <%        
                                        }}
                                    %>
                                    
                                </div>
                                    
                                <div class="form-group row mt-4">
                                    <p class="text-center">
                                        <button class="btn btn_principal" type="submit"> Confirmar </button>
                                        <button class="btn btn_secundario" type="reset"> Cancelar </button>
                                    </p>
                                </div>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </main>
    </body>
</html>
