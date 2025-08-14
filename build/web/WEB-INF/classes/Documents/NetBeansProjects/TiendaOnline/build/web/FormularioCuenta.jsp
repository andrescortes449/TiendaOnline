<%-- 
    Document   : index
    Created on : 14/08/2025, 12:09:21 a. m.
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Tienda Deportiva Online</title>
  <link href="css/styleFormulario.css" rel="stylesheet" type="text/css"/>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Alfa+Slab+One&family=Permanent+Marker&display=swap" rel="stylesheet">
</head>
<body>

  <!-- Baner superior -->
  <header class="header">
    <img src="img/logo.png" alt="Logo Tienda" class="logo"/>
    <h1 class="titulo">Tienda Deportiva Online</h1>
  </header>

  <!-- Menú de navegación -->
  <nav class="menu">
    <ul>
      <li><a href="#nuestra-tienda">Nuestra Tienda On-line</a></li>
      <li><a href="#servicios">Servicios</a></li>
      <li><a href="#contacto">Contáctenos</a></li>
      <li><a href="#cotizacion">Solicitud de Cotización</a></li>
    </ul>
  </nav>

  
  <div class="seccion-formulario">
    <form class="formulario-cuenta" action="#" method="POST">
        
        <!-- Información Personal -->
        <div class="seccion-formulario">
            <h3>📋 Información Personal</h3>
            <div class="campos-grupo">
                <div class="campo">
                    <label for="nombre">Nombre Completo *</label>
                    <input type="text" id="nombre" name="nombre" required>
                </div>
                
                <div class="campo">
                    <label for="email">Apodo *</label>
                    <input type="text" id="apodo" name="apodo" required>
                </div>
                
                <div class="campo">
                    <label for="telefono">Color de cabello *</label>
                    <input type="text" id="colorCabello" name="colorCabello" required>
                </div>
                
                <div class="campo">
                    <label for="telefono">Color de ojos *</label>
                    <input type="text" id="ojos" name="ojos" required>
                </div>
                <div class="campo">
                    <label for="telefono">Hobby *</label>
                    <input type="text" id="hobby" name="hobby" required>
                </div>
                
            </div>
        </div>
  </div>  

<div class="botones-formulario">
            <button type="submit" class="boton-enviar">Enviar</button>
            <button type="reset" class="boton-limpiar">🔄 Limpiar Formulario</button>
        </div>

</body>
</html>

