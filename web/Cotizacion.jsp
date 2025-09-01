<%-- 
    Document   : Cotizacion
    Created on : 31/08/2025, 10:59:06 a. m.
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Solicitud de Cotización - Tienda Deportiva Online</title>
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
                <li><a href="Cotizacion.jsp" class="active">Solicitud de Cotización</a></li>
                <li><a href="FormularioCuenta.jsp">Diseña tu Cuento</a></li>
            </ul>
        </nav>

        <%
        // Técnica de la Unidad 2: Recibir datos del formulario usando request.getParameter()
        String nombre = request.getParameter("nombre");
        String email = request.getParameter("email");
        String telefono = request.getParameter("telefono");
        String empresa = request.getParameter("empresa");
        String descripcion = request.getParameter("descripcion");
        String entrega = request.getParameter("entrega");
        String ciudad = request.getParameter("ciudad");
        
        // Recibir productos seleccionados (como array)
        String[] productosSeleccionados = request.getParameterValues("producto");
        
        // Verificar si se enviaron datos (como en el ejemplo de la Unidad 2)
        if (nombre != null && email != null && telefono != null && ciudad != null) {
            // Si hay datos, procesarlos y guardar en base de datos
            
            // Procesar productos seleccionados
            String productosTexto = "";
            String cantidadesTexto = "";
            
            if (productosSeleccionados != null) {
                for (String producto : productosSeleccionados) {
                    productosTexto += producto + ",";
                    
                    // Obtener cantidad para cada producto
                    String cantidadParam = "cantidad_" + producto.replace(" ", "_");
                    String cantidad = request.getParameter(cantidadParam);
                    if (cantidad != null) {
                        cantidadesTexto += cantidad + ",";
                    }
                }
                
                // Quitar la última coma
                if (productosTexto.length() > 0) {
                    productosTexto = productosTexto.substring(0, productosTexto.length() - 1);
                    cantidadesTexto = cantidadesTexto.substring(0, cantidadesTexto.length() - 1);
                }
            }
            
            // Conexión a base de datos (según técnicas de la Unidad 3)
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/tienda_cotizaciones?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC", "root", "");
                
                // Insertar datos usando PreparedStatement
                String sql = "INSERT INTO cotizaciones (nombre, email, telefono, empresa, productos_seleccionados, cantidades, descripcion, fecha_entrega, ciudad) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
                PreparedStatement stmt = conexion.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
                
                stmt.setString(1, nombre);
                stmt.setString(2, email);
                stmt.setString(3, telefono);
                stmt.setString(4, empresa != null ? empresa : "");
                stmt.setString(5, productosTexto);
                stmt.setString(6, cantidadesTexto);
                stmt.setString(7, descripcion != null ? descripcion : "");
                stmt.setString(8, entrega != null && !entrega.isEmpty() ? entrega : null);
                stmt.setString(9, ciudad);
                
                int resultado = stmt.executeUpdate();
                
                if (resultado > 0) {
                    // Obtener el ID generado
                    ResultSet generatedKeys = stmt.getGeneratedKeys();
                    int cotizacionId = 0;
                    if (generatedKeys.next()) {
                        cotizacionId = generatedKeys.getInt(1);
                    }
                    
                    // Redirigir a página de resultados
                    response.sendRedirect("ResultadoCotizacion.jsp?id=" + cotizacionId);
                } else {
                    out.println("<div class='error' style='color: red; padding: 20px; text-align: center;'>Error al procesar la cotización. Intente nuevamente.</div>");
                }
                
                conexion.close();
            } catch (Exception e) {
                out.println("<div class='error' style='color: red; padding: 20px; text-align: center;'>Error de conexión: " + e.getMessage() + "</div>");
            }
            
        } else {
            // Si no hay datos, mostrar el formulario
        %>

        <section id="cotizacion" class="seccion">
            <h2>Solicitud de Cotización</h2>

            <form class="formulario-cotizacion" action="Cotizacion.jsp" method="POST">

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
                            <td><input type="number" name="cantidad_Balon_Futbol" class="cantidad" value="1" min="1"></td>
                        </tr>
                        <tr>
                            <td><img src="img/tenis.png" alt="Tenis" class="producto"></td>
                            <td>Tenis Deportivos</td>
                            <td>$80.000</td>
                            <td><input type="checkbox" name="producto" value="Tenis Deportivos"></td>
                            <td><input type="number" name="cantidad_Tenis_Deportivos" class="cantidad" value="1" min="1"></td>
                        </tr>
                        <tr>
                            <td><img src="img/guantes.png" alt="Guantes" class="producto"></td>
                            <td>Guantes de Boxeo</td>
                            <td>$45.000</td>
                            <td><input type="checkbox" name="producto" value="Guantes Boxeo"></td>
                            <td><input type="number" name="cantidad_Guantes_Boxeo" class="cantidad" value="1" min="1"></td>
                        </tr>
                        <tr>
                            <td><img src="img/camisa1.png" alt="Camisa1" class="producto"></td>
                            <td>Camisa Deportiva Hombre</td>
                            <td>$45.000</td>
                            <td><input type="checkbox" name="producto" value="camisa1"></td>
                            <td><input type="number" name="cantidad_camisa1" class="cantidad" value="1" min="1"></td>
                        </tr>
                        <tr>
                            <td><img src="img/camisa2.png" alt="camisa2" class="producto"></td>
                            <td>Camisa Deportiva Casual</td>
                            <td>$45.000</td>
                            <td><input type="checkbox" name="producto" value="camisa2"></td>
                            <td><input type="number" name="cantidad_camisa2" class="cantidad" value="1" min="1"></td>
                        </tr>
                        <tr>
                            <td><img src="img/pantalon.png" alt="pantalon" class="producto"></td>
                            <td>Pantalón Deportivo</td>
                            <td>$45.000</td>
                            <td><input type="checkbox" name="producto" value="pantalon"></td>
                            <td><input type="number" name="cantidad_pantalon" class="cantidad" value="1" min="1"></td>
                        </tr>
                        <tr>
                            <td><img src="img/camisamujer.png" alt="camisamujer" class="producto"></td>
                            <td>Camisa Deportiva Mujer</td>
                            <td>$45.000</td>
                            <td><input type="checkbox" name="producto" value="camisaMujer"></td>
                            <td><input type="number" name="cantidad_camisaMujer" class="cantidad" value="1" min="1"></td>
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
                            <select id="ciudad" name="ciudad" required>
                                <option value="">-- Selecciona una ciudad --</option>
                                <option value="Bogotá">Bogotá</option>
                                <option value="Medellín">Medellín</option>
                                <option value="Cali">Cali</option>
                                <option value="Barranquilla">Barranquilla</option>
                                <option value="Cartagena">Cartagena</option>
                                <option value="Cúcuta">Cúcuta</option>
                                <option value="Bucaramanga">Bucaramanga</option>
                                <option value="Pereira">Pereira</option>
                                <option value="Santa Marta">Santa Marta</option>
                                <option value="Ibagué">Ibagué</option>
                                <option value="Manizales">Manizales</option>
                                <option value="Villavicencio">Villavicencio</option>
                                <option value="Pasto">Pasto</option>
                                <option value="Montería">Montería</option>
                                <option value="Neiva">Neiva</option>
                                <option value="Armenia">Armenia</option>
                                <option value="Sincelejo">Sincelejo</option>
                                <option value="Valledupar">Valledupar</option>
                                <option value="Popayán">Popayán</option>
                                <option value="Tunja">Tunja</option>
                            </select>
                        </div>
                    </div>
                </div>

                <!-- Botones -->
                <div class="botones-formulario">
                    <button type="submit" class="boton-enviar">🚀 Enviar Datos</button>
                    <button type="button" class="boton-limpiar" onclick="window.location.href='index.jsp'">❌ Cancelar</button>
                </div>

                <div class="nota-formulario">
                    <p><strong>Nota:</strong> Los campos marcados con (*) son obligatorios. Nos comprometemos a responder tu solicitud en máximo 24 horas hábiles.</p>
                </div>
            </form>
        </section>
        
        <%
            }
        %>

    </body>
</html>