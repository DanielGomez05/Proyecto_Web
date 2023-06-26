<%-- 
    Document   : registrarse
    Created on : 22/06/2023, 09:09:21 PM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="es">
<head>
  <title>Papelería Gomita</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
     
  <style>
    /* Estilos CSS para la página */
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
    }
    
    header {
      background-color: white;
      color: #fff;
      padding: 10px;
      text-align: center;
    }
    
    nav {
      background-color: #a87bc7;
      color: #fff;
      padding: 10px;
      text-align: center;
    }
    
    nav a {
      color: #fff;
      margin: 0 10px;
      text-decoration: none;
    }
    
    section {
        background-color:#fff; 
      padding: 20px;
    }
    
    footer {
      background-color: #4b1c71;
      color: white;
      padding: 20px;
      text-align: center;
    }
  </style>
<link rel="stylesheet" href="css/contacto.css">
  
</head>
<body>
    <!-- Cargar el script para bootstrap -->
        <script src="js/bootstrap.bundle.min.js"></script>
  <header>
    <a href="#" class="logo">
        <img src="img/logo.png" alt="company logo" class="logo-img">
        <p class="logo-nombre">Papeleria Gomita</p>
    </a>
    <nav>
        <a href="index.html"    class="nav-link">Inicio</a>
        <a href="papeleria.jsp" class="nav-link">Papeleria</a>
        <a href="merceria.jsp"  class="nav-link">Merceria</a>
        <a href="Contacto.html"  class="nav-link">Contacto</a>
      </nav>
  </header>
  



  <div class="container-fluid m-2 registro">
    <form method="post" action="Registrar">
      <fieldset>
        <div class="form">
          <div class="card">
              <h2>Regístrate</h2>
              <div class="row">
              <div class="col">
                  <div class="form-group">
                    <label class="col-sm-2 col-form-label" for="name"> Nombre: </label>
                    <input class="form-control" type="text" id="name" name="name" placeholder="Nombre_Usuario" required="required">
                  </div>
              </div>

              

            <div class="col">
              <div class="form-group">
                <label class="col-sm-2 col-form-label" for="domicilio"> Domicilio: </label>
                <input class="form-control" type="text" id="domicilio" name="domicilio" placeholder="Calle, número, colonia..." required="required">
              </div>
          </div>

          
          
              <div class="col">
                  <div class="form-group">
                    <label class="col-sm-2 col-form-label text-nowrap" for="email"> E-mail: </label>
                    <input class="form-control" type="email" id="email" name="email" placeholder="email@example.com" required="required">
                  </div>
              </div>

          
              <div class="col">
                  <div class="form-group">
                    <label class="col-sm-2 col-form-label" for="pass"> Contraseña: </label>
                   <input class="form-control" type="password" id="pass" name="pass" required="required">
                  </div>
              </div>


           

              <div class="col">
                <input type="submit" value="Registrarse"></input>
            </div>

          </div>
        </div>
      </fieldset>
    </form>
  </div>

    <p>¿Tienes alguna pregunta o necesitas ayuda? No dudes en ponerte en contacto con nosotros.</p>
    <p>Teléfono: 123-456-7890</p>
    <p>Correo electrónico: info@papeleriaxyz.com</p>
  
  <footer>
    <p>&copy; 2023 Papelería Gomita. Todos los derechos reservados.</p>
  </footer>
</body>
</html>


