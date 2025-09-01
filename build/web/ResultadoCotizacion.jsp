<%-- 
    Document   : ResultadoCotizacion
    Created on : 31/08/2025
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Resultado de Cotización - Tienda Deportiva Online</title>
        <link href="css/styleCotizacion.css" rel="stylesheet" type="text/css"/>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Alfa+Slab+One&family=Permanent+Marker&display=swap" rel="stylesheet">
        <style>
            .resultado-cotizacion {
                max-width: 900px;
                margin: 0 auto;
                background: white;
                border-radius: 10px;
                padding: 30px;
                box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            }
            
            .exito-mensaje {
                background: linear-gradient(135deg, #28a745, #20c997);
                color: white;
                padding: 20px;
                border-radius: 10px;
                text-align: center;
                margin-bottom: 30px;
            }
            
            .info-cliente, .productos-tabla {
                background: #f8f9fa;
                padding: 20px;
                border-radius: 8px;
                margin: 20px 0;
            }
            
            .productos-cotizados {
                width: 100%;
                border-collapse: collapse;
                margin: 20px 0;
            }
            
            .productos-cotizados th,
            .productos-cotizados td {
                padding: 12px;
                text-align: left;
                border-bottom: 1px solid #ddd;
            }
            
            .productos-cotizados th {
                background: linear-gradient(135deg, #1b7d96, #4e9aac);
                color: white;
            }
            
            .total-cotizacion {
                background: linear-gradient(135deg, #1b7d96, #4e9aac);
                color: white;
                padding: 20px;
                border-radius: 8px;
                text-align: center;
                margin: 20px 0;
                font-size: 1.2em;
                font-weight: bold;
            }
            
            .acciones-cotizacion {
                text-align: center;
                margin: 30px 0;
            }
            
            .boton-accion {
                padding: 15px 30px;
                margin: 0 10px;
                border: none;
                border-radius: 8px;
                font-size: 16px;
                font-weight: bold;
                text-decoration: none;
                display: inline-block;
                transition: all 0.3s ease;
            }
            
            .boton-nueva {
                background: linear-gradient(135deg, #1b7d96, #4e9aac);
                color: white;
            }
            
            .boton-inicio {
                background: #6c757d;
                color: white;
            }
            
            .boton-accion:hover {
                transform: translateY(-2px);
                box-shadow: 0 4px 8px rgba(0,0,0,0.2);
            }
        </style>
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
                <li><a href="FormularioCuenta.jsp">Diseña tu Cuento</a></li>
            </ul>
        </nav>

        <%
        // Obtener el ID de la cotización desde la URL
        String cotizacionId = request.getParameter("id");
        
        if (cotizacionId != null) {
            try {
                // Conexión a base de datos (técnicas de la Unidad 3) - CORREGIDA
                Class.forName("com.mysql.jdbc.Driver");
                Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/tienda_cotizaciones?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC", "root", "");
                
                // Consultar la cotización por ID
                String sql = "SELECT * FROM cotizaciones WHERE id = ?";
                PreparedStatement stmt = conexion.prepareStatement(sql);
                stmt.setInt(1, Integer.parseInt(cotizacionId));
                ResultSet rs = stmt.executeQuery();
                
                if (rs.next()) {
                    // Obtener todos los datos
                    String nombre = rs.getString("nombre");
                    String email = rs.getString("email");
                    String telefono = rs.getString("telefono");
                    String empresa = rs.getString("empresa");
                    String productos = rs.getString("productos_seleccionados");
                    String cantidades = rs.getString("cantidades");
                    String descripcion = rs.getString("descripcion");
                    String fechaEntrega = rs.getString("fecha_entrega");
                    String ciudad = rs.getString("ciudad");
                    Date fechaSolicitud = rs.getTimestamp("fecha_solicitud");
        %>

        <div class="seccion">
            <div class="resultado-cotizacion">
                
                <div class="exito-mensaje">
                    <h2>¡Cotización Procesada Exitosamente!</h2>
                    <p>Hemos recibido tu solicitud de cotización. A continuación encontrarás el resumen completo de tu solicitud.</p>
                </div>

                <!-- Información del Cliente -->
                <div class="info-cliente">
                    <h3>Información del Cliente</h3>
                    <table class="productos-cotizados">
                        <tr>
                            <th>Campo</th>
                            <th>Información</th>
                        </tr>
                        <tr>
                            <td><strong>Nombre Completo:</strong></td>
                            <td><%= nombre %></td>
                        </tr>
                        <tr>
                            <td><strong>Correo Electrónico:</strong></td>
                            <td><%= email %></td>
                        </tr>
                        <tr>
                            <td><strong>Teléfono:</strong></td>
                            <td><%= telefono %></td>
                        </tr>
                        <tr>
                            <td><strong>Empresa/Organización:</strong></td>
                            <td><%= empresa != null && !empresa.isEmpty() ? empresa : "No especificada" %></td>
                        </tr>
                        <tr>
                            <td><strong>Ciudad de Entrega:</strong></td>
                            <td><%= ciudad %></td>
                        </tr>
                        <tr>
                            <td><strong>Fecha Deseada de Entrega:</strong></td>
                            <td><%= fechaEntrega != null && !fechaEntrega.isEmpty() ? fechaEntrega : "No especificada" %></td>
                        </tr>
                        <tr>
                            <td><strong>Fecha de Solicitud:</strong></td>
                            <td><%= new SimpleDateFormat("dd/MM/yyyy HH:mm:ss").format(fechaSolicitud) %></td>
                        </tr>
                    </table>
                </div>

                <!-- Productos Cotizados -->
                <div class="productos-tabla">
                    <h3>Productos Cotizados</h3>
                    
                    <%
                    if (productos != null && cantidades != null) {
                        String[] arrayProductos = productos.split(",");
                        String[] arrayCantidades = cantidades.split(",");
                        double totalGeneral = 0.0;
                    %>
                    
                    <table class="productos-cotizados">
                        <thead>
                            <tr>
                                <th>Producto</th>
                                <th>Cantidad</th>
                                <th>Precio Unitario</th>
                                <th>Subtotal</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                            for (int i = 0; i < arrayProductos.length && i < arrayCantidades.length; i++) {
                                String producto = arrayProductos[i].trim();
                                int cantidad = Integer.parseInt(arrayCantidades[i].trim());
                                
                                // Determinar precio según el producto
                                double precioUnitario = 0.0;
                                String nombreProducto = "";
                                
                                switch(producto) {
                                    case "Balon Futbol": 
                                        precioUnitario = 30000.0; 
                                        nombreProducto = "Balón de Fútbol";
                                        break;
                                    case "Tenis Deportivos": 
                                        precioUnitario = 80000.0; 
                                        nombreProducto = "Tenis Deportivos";
                                        break;
                                    case "Guantes Boxeo": 
                                        precioUnitario = 45000.0; 
                                        nombreProducto = "Guantes de Boxeo";
                                        break;
                                    case "camisa1": 
                                        precioUnitario = 45000.0; 
                                        nombreProducto = "Camisa Deportiva Hombre";
                                        break;
                                    case "camisa2": 
                                        precioUnitario = 45000.0; 
                                        nombreProducto = "Camisa Deportiva Casual";
                                        break;
                                    case "pantalon": 
                                        precioUnitario = 45000.0; 
                                        nombreProducto = "Pantalón Deportivo";
                                        break;
                                    case "camisaMujer": 
                                        precioUnitario = 45000.0; 
                                        nombreProducto = "Camisa Deportiva Mujer";
                                        break;
                                    default: 
                                        precioUnitario = 0.0;
                                        nombreProducto = producto;
                                }
                                
                                double subtotal = precioUnitario * cantidad;
                                totalGeneral += subtotal;
                            %>
                            <tr>
                                <td><%= nombreProducto %></td>
                                <td><%= cantidad %></td>
                                <td>$<%= String.format("%,.0f", precioUnitario) %></td>
                                <td>$<%= String.format("%,.0f", subtotal) %></td>
                            </tr>
                            <%
                            }
                            %>
                        </tbody>
                    </table>
                    
                    <div class="total-cotizacion">
                        TOTAL DE LA COTIZACIÓN: $<%= String.format("%,.0f", totalGeneral) %>
                    </div>
                    
                    <%
                    } else {
                    %>
                    <p>No se seleccionaron productos para esta cotización.</p>
                    <%
                    }
                    %>
                </div>

                <!-- Descripción Adicional -->
                <div class="info-cliente">
                    <h3>Información Adicional</h3>
                    <p><strong>Descripción de Necesidades:</strong></p>
                    <div style="background: white; padding: 15px; border-radius: 5px; border-left: 4px solid #1b7d96;">
                        <%= descripcion != null ? descripcion : "No se proporcionó descripción adicional." %>
                    </div>
                </div>

                <!-- Acciones -->
                <div class="acciones-cotizacion">
                    <a href="Cotizacion.jsp" class="boton-accion boton-nueva">Nueva Cotización</a>
                    <a href="index.jsp" class="boton-accion boton-inicio">Volver al Inicio</a>
                </div>

                <!-- Nota de seguimiento -->
                <div class="nota-formulario">
                    <p><strong>Seguimiento:</strong> Nos comunicaremos contigo en las próximas 24 horas hábiles al teléfono <strong><%= telefono %></strong> o al correo <strong><%= email %></strong> para finalizar los detalles de tu cotización.</p>
                </div>
            </div>
        </div>

        <%
                } else {
                    out.println("<div class='seccion'><div class='error'>No se encontró la cotización solicitada.</div></div>");
                }
                
                conexion.close();
                
            } catch (Exception e) {
                out.println("<div class='seccion'><div class='error'>Error al consultar la cotización: " + e.getMessage() + "</div></div>");
            }
        } else {
            out.println("<div class='seccion'><div class='error'>ID de cotización no válido.</div></div>");
        }
        %>

    </body>
</html>