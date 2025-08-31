<%-- 
    Document   : Cotizacion
    Created on : 31/08/2025, 10:59:06 a. m.
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Diseña tu Cuento - Tienda Deportiva Online</title>
        <link href="css/styleCotizacion.css" rel="stylesheet" type="text/css"/>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Alfa+Slab+One&family=Permanent+Marker&display=swap" rel="stylesheet">
    </head>
    <body>

        <!-- Banner superior -->
        <header class="header">
            <img src="img/logo.png" alt="Logo Tienda" class="logo"/>
            <h1 class="titulo">Tienda Deportiva Online</h1>
        </header>

        <!-- Menú de navegación -->
        <nav class="menu">
            <ul>
                <li><a href="index.jsp">Nuestra Tienda On-line</a></li>
                <li><a href="index.jsp#servicios">Servicios</a></li>
                <li><a href="index.jsp#contacto">Contáctenos</a></li>
                <li><a href="index.jsp#cotizacion">Solicitud de Cotización</a></li>
                <li><a href="FormularioCuenta.jsp" class="active">Diseña tu Cuento</a></li>
            </ul>
        </nav>

        <section id="cotizacion" class="seccion">
            <h2>Solicitud de Cotización</h2>


            <form class="formulario-cotizacion" action="#" method="POST">

                <!-- Información Personal -->
                <div class="seccion-formulario">
                    <h3>📋 Información Personal</h3>
                    <div class="campos-grupo">
                        <div class="campo">
                            <label for="nombre">Nombre Completo *</label>
                            <input type="text" id="nombre" name="nombre" required>
                        </div>

                        <div class="campo">
                            <label for="email">Correo Electrónico *</label>
                            <input type="email" id="email" name="email" required>
                        </div>

                        <div class="campo">
                            <label for="telefono">Teléfono *</label>
                            <input type="tel" id="telefono" name="telefono" required>
                        </div>

                        <div class="campo">
                            <label for="empresa">Empresa/Organización</label>
                            <input type="text" id="empresa" name="empresa" placeholder="Opcional">
                        </div>
                    </div>
                </div>
                <!-- Detalles de la Cotización -->
                <div class="seccion-formulario">
                    <h3>🛒 Detalles de la Cotización</h3>

                    <table class="Productos">
                        <tr>
                            <th>Imagen</th>
                            <th>Producto</th>
                            <th>Precio</th>
                            <th>Seleccionar</th>
                            <th>Cantidad</th>
                        </tr>
                        <tr>
                            <td><img src="img/balon.png" alt="Balón" class="producto"></td>
                            <td>Balón de Fútbol</td>
                            <td>$30.000</td>
                            <td><input type="checkbox" name="producto" value="Balon Futbol"></td>
                            <td><input type="number" name="cantidad_Balon Futbol" class="cantidad" value="1" min="1"></td>
                        </tr>
                        <tr>
                            <td><img src="img/tenis.png" alt="Tenis" class="producto"></td>
                            <td>Tenis Deportivos</td>
                            <td>$80.000</td>
                            <td><input type="checkbox" name="producto" value="Tenis Deportivos"></td>
                            <td><input type="number" name="cantidad_Tenis Deportivos" class="cantidad" value="1" min="1"></td>
                        </tr>
                        <tr>
                            <td><img src="img/guantes.png" alt="Guantes" class="producto"></td>
                            <td>Guantes de Boxeo</td>
                            <td>$45.000</td>
                            <td><input type="checkbox" name="producto" value="Guantes Boxeo"></td>
                            <td><input type="number" name="cantidad_Guantes Boxeo" class="cantidad" value="1" min="1"></td>
                        </tr>
                        <tr>
                            <td><img src="img/camisa1.png" alt="Camisa1" class="producto"></td>
                            <td>Guantes de Boxeo</td>
                            <td>$45.000</td>
                            <td><input type="checkbox" name="producto" value="camisa1"></td>
                            <td><input type="number" name="cantidad_Guantes Boxeo" class="cantidad" value="1" min="1"></td>
                        </tr>
                        <tr>
                            <td><img src="img/camisa2.png" alt="camisa2" class="producto"></td>
                            <td>Guantes de Boxeo</td>
                            <td>$45.000</td>
                            <td><input type="checkbox" name="producto" value="camisa2"></td>
                            <td><input type="number" name="cantidad_Guantes Boxeo" class="cantidad" value="1" min="1"></td>
                        </tr>
                        <tr>
                            <td><img src="img/pantalon.png" alt="pantalon" class="producto"></td>
                            <td>Guantes de Boxeo</td>
                            <td>$45.000</td>
                            <td><input type="checkbox" name="producto" value="pnatalon"></td>
                            <td><input type="number" name="cantidad_Guantes Boxeo" class="cantidad" value="1" min="1"></td>
                        </tr>
                        <tr>
                            <td><img src="img/camisamujer.png" alt="camisamujer" class="producto"></td>
                            <td>Guantes de Boxeo</td>
                            <td>$45.000</td>
                            <td><input type="checkbox" name="producto" value="camisaMujer"></td>
                            <td><input type="number" name="cantidad_Guantes Boxeo" class="cantidad" value="1" min="1"></td>
                        </tr>
                    </table>
                </div>
                <!-- Información Adicional -->
                <div class="seccion-formulario">
                    <h3>📝 Información Adicional</h3>

                    <div class="campo">
                        <label for="descripcion">Descripción Detallada de tus Necesidades *</label>
                        <textarea id="descripcion" name="descripcion" rows="4" 
                                  placeholder="Describe específicamente qué productos necesita, tallas, colores, marcas preferidas, fechas de entrega, etc." required></textarea>
                    </div>

                    <div class="campos-grupo">
                        <div class="campo">
                            <label for="entrega">Fecha Necesaria de Entrega</label>
                            <input type="date" id="entrega" name="entrega">
                        </div>

                        <div class="campo">
                            <label for="ciudad">Ciudad de Entrega *</label>
                            <input type="text" id="ciudad" name="ciudad" required placeholder="Ej: Bogotá, Medellín, Cali">
                        </div>
                    </div>
                </div>


                <!-- Botones -->
                <div class="botones-formulario">
                    <button type="submit" class="boton-enviar">🚀 Solicitar Cotización</button>
                    <button type="reset" class="boton-limpiar">🔄 Limpiar Formulario</button>
                </div>

                <div class="nota-formulario">
                    <p><strong>Nota:</strong> Los campos marcados con (*) son obligatorios. Nos comprometemos a responder tu solicitud en máximo 24 horas hábiles.</p>
                </div>
            </form>
        </section>
    </body>
</html>
