<%-- 
    Document   : FormularioCuenta
    Created on : 14/08/2025, 12:09:21 a. m.
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Diseña tu Cuento - Tienda Deportiva Online</title>
        <link href="css/styleFormulario.css" rel="stylesheet" type="text/css"/>
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
                <li><a href="Cotizacion.jsp">Solicitud de Cotización</a></li>
                <li><a href="FormularioCuenta.jsp" class="active">Diseña tu Cuento</a></li>
            </ul>
        </nav>

        <%
        // Técnica de la Unidad 2: Recibir datos del formulario usando request.getParameter()
            String nombre = request.getParameter("nombre");
            String apodo = request.getParameter("apodo");
            String colorCabello = request.getParameter("colorCabello");
            String colorOjos = request.getParameter("ojos");
            String edad = request.getParameter("edad");
            String hobby = request.getParameter("hobby");

        // Verificar si se enviaron datos (como en el ejemplo de tipos de datos de la Unidad 2)
            if (nombre != null && apodo != null && colorCabello != null && colorOjos != null && edad != null && hobby != null) {
                // Si hay datos, mostrar el cuento generado usando out.println() como enseña la Unidad 2
        %>

        <div class="seccion-resultado">
            <h2>✨ Tu Cuento Personalizado ✨</h2>

            <div class="cuento-generado">
                <h3>🏃‍♂️ La Aventura Deportiva de <%= apodo%></h3>

                <%
                    // Usar out.println() como en el ejemplo de la Unidad 2
                    out.println("<p>Había una vez una persona de " + edad + " años llamada <strong>" + nombre + "</strong>, ");
                    out.println("pero todos la conocían cariñosamente como <strong>\"" + apodo + "\"</strong>.</p>");

                    out.println("<p>Con su cabello <strong>" + colorCabello + "</strong> y sus ojos <strong>" + colorOjos + "</strong>, ");
                    out.println(apodo + " tenía una gran pasión que lo definía: <strong>" + hobby + "</strong>.</p>");

                    out.println("<p>Un día, " + apodo + " decidió visitar la mejor tienda deportiva online de la ciudad. ");
                    out.println("Buscaba equipos especiales para practicar " + hobby + " de manera profesional.</p>");

                    out.println("<p>Al entrar a la tienda virtual, " + apodo + " quedó sorprendido por la variedad de productos. ");
                    out.println("Sus ojos " + colorOjos + " brillaron de emoción al ver exactamente lo que necesitaba.</p>");

                    out.println("<p>Después de una exitosa compra, " + apodo + " se convirtió en el mejor atleta de " + hobby + " ");
                    out.println("de toda la región, siempre recordando con cariño aquella tienda deportiva online ");
                    out.println("que hizo posible sus sueños deportivos.</p>");

                    out.println("<p><strong>¡Y colorín colorado, el cuento de " + apodo + " ha terminado!</strong> 🎉</p>");
                %>

                <div class="acciones-cuento">
                    <a href="FormularioCuenta.jsp" class="boton-nuevo">🆕 Crear Nuevo Cuento</a>
                    <a href="index.jsp" class="boton-tienda">🏪 Volver a la Tienda</a>
                </div>
            </div>
        </div>

        <%
        } else {
            // Si no hay datos, mostrar el formulario (técnica de la Unidad 2)
        %>

        <div class="seccion-formulario">
            <h2>📚 Diseña tu Cuento Personalizado</h2>
            <p>Completa la información y te crearemos un cuento único con tus datos:</p>

            <form class="formulario-cuenta" action="FormularioCuenta.jsp" method="POST">

                <!-- Información Personal -->
                <div class="seccion-formulario">
                    <h3>📋 Información Personal</h3>
                    <div class="campos-grupo">
                        <div class="campo">
                            <label for="nombre">Nombre Completo *</label>
                            <input type="text" id="nombre" name="nombre" required placeholder="Ej: María Rodríguez">
                        </div>

                        <div class="campo">
                            <label for="apodo">Apodo *</label>
                            <input type="text" id="apodo" name="apodo" required placeholder="Ej: Mari">
                        </div>

                        <div class="campo">
                            <label for="colorCabello">Color de cabello *</label>
                            <input type="text" id="colorCabello" name="colorCabello" required placeholder="Ej: Castaño">
                        </div>

                        <div class="campo">
                            <label for="ojos">Color de ojos *</label>
                            <input type="text" id="ojos" name="ojos" required placeholder="Ej: Verdes">
                        </div>

                        <div class="campo">
                            <label for="edad">Edad *</label>
                            <input type="number" id="edad" name="edad" required min="1" max="100" placeholder="Ej: 25">
                        </div>

                        <div class="campo">
                            <label for="hobby">Hobby (Solo uno) *</label>
                            <input type="text" id="hobby" name="hobby" required placeholder="Ej: Correr, Nadar, Fútbol">
                        </div>

                    </div>
                </div>

                <div class="botones-formulario">
                    <button type="submit" class="boton-enviar">🚀 Crear Mi Cuento</button>
                    <button type="reset" class="boton-limpiar">🔄 Limpiar Formulario</button>
                </div>

                <div class="nota-formulario">
                    <p><strong>Nota:</strong> Todos los campos son obligatorios. ¡Tu cuento será único e irrepetible!</p>
                </div>
            </form>
        </div>  

        <%
            }
        %>

    </body>
</html>
