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
  <link href="css/style.css" rel="stylesheet" type="text/css"/>
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
      <li><a href="FormularioCuenta.jsp">Crear Ceunta</a></li>
    </ul>
  </nav>

  <!-- Sección Nuestra Tienda -->
  <section id="nuestra-tienda" class="seccion">
    <h2>Nuestra Tienda On-line</h2>
    
    <!-- Información de la tienda -->
    <div class="info-tienda">
        <h3>¿Quiénes Somos?</h3>
        <p>
            Somos una tienda deportiva online especializada en equipos, ropa y accesorios deportivos de alta calidad. 
            Desde 2024, nos hemos dedicado a brindar a nuestros clientes los mejores productos para potenciar su 
            rendimiento deportivo, ya sea en el gimnasio, la cancha o cualquier actividad física.
        </p>
        
        <div class="caracteristicas-tienda">
            <div class="caracteristica">
                <div class="icono-caracteristica">🏆</div>
                <h4>Calidad Garantizada</h4>
                <p>Productos de las mejores marcas deportivas del mercado</p>
            </div>
            
            <div class="caracteristica">
                <div class="icono-caracteristica">💯</div>
                <h4>100% Confiable</h4>
                <p>Más de 1000 clientes satisfechos nos respaldan</p>
            </div>
            
            <div class="caracteristica">
                <div class="icono-caracteristica">🚀</div>
                <h4>Innovación Constante</h4>
                <p>Siempre actualizados con las últimas tendencias deportivas</p>
            </div>
        </div>
    </div>

    <!-- Catálogo de productos destacados -->
    <div class="productos-destacados">
        <h3>Nuestros Productos Destacados</h3>
        <p>Descubre algunos de los productos más populares de nuestra tienda:</p>
        
        <div class="galeria-productos">
            <div class="producto">
                <div class="imagen-producto">👕</div>
                <h4>Camisetas Deportivas</h4>
                <p>Camisetas de alta calidad para entrenamientos y competencias</p>
                <span class="precio">Desde $45.000</span>
            </div>
            
            <div class="producto">
                <div class="imagen-producto">👟</div>
                <h4>Calzado Deportivo</h4>
                <p>Zapatillas especializadas para running, fútbol y entrenamiento</p>
                <span class="precio">Desde $120.000</span>
            </div>
            
            <div class="producto">
                <div class="imagen-producto">⚽</div>
                <h4>Balones y Pelotas</h4>
                <p>Balones profesionales para fútbol, baloncesto y voleibol</p>
                <span class="precio">Desde $35.000</span>
            </div>
            
            <div class="producto">
                <div class="imagen-producto">🏋️</div>
                <h4>Equipos de Gimnasio</h4>
                <p>Pesas, mancuernas y accesorios para entrenamiento</p>
                <span class="precio">Desde $25.000</span>
            </div>
            
            <div class="producto">
                <div class="imagen-producto">🎾</div>
                <h4>Accesorios Deportivos</h4>
                <p>Raquetas, guantes, protecciones y más</p>
                <span class="precio">Desde $15.000</span>
            </div>
            
            <div class="producto">
                <div class="imagen-producto">👖</div>
                <h4>Ropa Deportiva</h4>
                <p>Shorts, pantalones y ropa especializada</p>
                <span class="precio">Desde $30.000</span>
            </div>
        </div>
    </div>

    <!-- Presentación del equipo -->
    <div class="nuestro-equipo">
        <h3>Nuestro Equipo</h3>
        <p>Conoce a las personas que hacen posible esta experiencia de compra única:</p>
        
        <div class="miembros-equipo">
            <div class="miembro">
                <div class="foto-miembro">👨‍💻</div>
                <h4>Andrés Felipe Cortés</h4>
                <p class="cargo">Desarrollador Frontend</p>
                <p class="descripcion">Especialista en diseño web y experiencia de usuario. Apasionado por crear interfaces intuitivas y atractivas.</p>
            </div>
            
            <div class="miembro">
                <div class="foto-miembro">👩‍💻</div>
                <h4>Tania Romero</h4>
                <p class="cargo">Especialista en Servicios</p>
                <p class="descripcion">Experta en atención al cliente y desarrollo de servicios innovadores para mejorar la experiencia de compra.</p>
            </div>
            
            <div class="miembro">
                <div class="foto-miembro">👨‍💼</div>
                <h4>Alexander Pardo</h4>
                <p class="cargo">Coordinador Comercial</p>
                <p class="descripcion">Responsable de optimizar los procesos comerciales y maximizar la rentabilidad de la tienda.</p>
            </div>
        </div>
    </div>

    <!-- Misión y Visión -->
    <div class="mision-vision">
        <div class="mision">
            <h3>🎯 Nuestra Misión</h3>
            <p>
                Facilitar el acceso a productos deportivos de calidad, promoviendo un estilo de vida activo y saludable 
                a través de una experiencia de compra online excepcional, con atención personalizada y servicios innovadores.
            </p>
        </div>
        
        <div class="vision">
            <h3>🔮 Nuestra Visión</h3>
            <p>
                Ser la tienda deportiva online líder en el mercado nacional, reconocida por nuestra excelencia en 
                servicio al cliente, variedad de productos y compromiso con la promoción del deporte y la vida saludable.
            </p>
        </div>
    </div>
</section>

  <!-- Sección Servicios -->
  <section id="servicios">
    <h2>Nuestros servicios</h2>

    <article class="servicio">
    <div class="icono">🚚</div>
    <h3>Envío Rápido y Seguro</h3>
        <p>Recibe tus productos favoritos en tiempo récord con nuestro servicio de envío rápido y seguro. Entregamos directamente a tu puerta con seguimiento en tiempo real.</p>
        <a href="#envio" class="boton-servicio">Más Información</a>
    </article>

    <article class="servicio">
    <div class="icono">👔</div>
            <h3>Asesoría Personalizada de Estilo</h3>
        <p>¿No sabes qué elegir? Nuestros expertos en moda deportiva te ayudarán a encontrar el look perfecto y que se adapte a tu estilo y necesidades.</p>
        <a href="#asesoria" class="boton-servicio">Solicita tu Asesoría</a>
    </article>

    <!-- Servicios adicionales -->
   <article class="servicio">
    <div class="icono">⭐</div>
    <h3>Programa de Fidelización</h3>
        <p>Únete a nuestro programa de fidelización por dos compras realizadas en la tienda mayor de 215 mil pesos, En la tercera compra una de las prendas tendra el 30% de descuento.</p>
        <a href="#fidelizacion" class="boton-servicio">Únete Ahora</a>
    </article>

    <article class="servicio">
    <div class="icono">🎨</div>
    <h3>Personalización de Prendas</h3>
        <p>Haz tu ropa deportiva única y especial para ti. Añade tu nombre, un diseño o elige colores exclusivos para tus prendas favoritas.</p>
        <a href="#personalizacion" class="boton-servicio">Diseña tu Prenda</a>
    </article>
</section>

    <!-- Sección Solicitud de Cotización -->
  <section id="cotizacion" class="seccion">
    <h2>Solicitud de Cotización</h2>
    
    <div class="intro-cotizacion">
        <p>¿Necesitas una cotización personalizada? Completa el siguiente formulario y nuestro equipo comercial te contactará en máximo 24 horas con la mejor propuesta para tus necesidades deportivas.</p>
    </div>

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
            
            <div class="campo">
                <label for="categoria">Categoría de Producto *</label>
                <select id="categoria" name="categoria" required>
                    <option value="">Selecciona una categoría</option>
                    <option value="camisetas">Camisetas Deportivas</option>
                    <option value="calzado">Calzado Deportivo</option>
                    <option value="balones">Balones y Pelotas</option>
                    <option value="gimnasio">Equipos de Gimnasio</option>
                    <option value="accesorios">Accesorios Deportivos</option>
                    <option value="ropa">Ropa Deportiva</option>
                    <option value="multiple">Múltiples Categorías</option>
                </select>
            </div>
            
            <div class="campos-grupo">
                <div class="campo">
                    <label for="cantidad">Cantidad Estimada *</label>
                    <input type="number" id="cantidad" name="cantidad" min="1" required>
                </div>
                
                <div class="campo">
                    <label for="presupuesto">Presupuesto Aproximado</label>
                    <select id="presupuesto" name="presupuesto">
                        <option value="">Selecciona un rango</option>
                        <option value="50000-100000">$50.000 - $100.000</option>
                        <option value="100000-300000">$100.000 - $300.000</option>
                        <option value="300000-500000">$300.000 - $500.000</option>
                        <option value="500000-1000000">$500.000 - $1.000.000</option>
                        <option value="1000000+">Más de $1.000.000</option>
                    </select>
                </div>
            </div>
            
            <div class="campo">
                <label for="uso">Uso Previsto del Producto *</label>
                <select id="uso" name="uso" required>
                    <option value="">Selecciona el uso</option>
                    <option value="personal">Uso Personal</option>
                    <option value="equipo">Equipo Deportivo</option>
                    <option value="gimnasio">Gimnasio/Centro Deportivo</option>
                    <option value="empresa">Empresa/Corporativo</option>
                    <option value="colegio">Colegio/Universidad</option>
                    <option value="evento">Evento Deportivo</option>
                </select>
            </div>
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

        <!-- Preferencias de Contacto -->
        <div class="seccion-formulario">
            <h3>📞 Preferencias de Contacto</h3>
            
            <div class="campo">
                <label for="contacto">¿Cómo prefieres que te contactemos? *</label>
                <select id="contacto" name="contacto" required>
                    <option value="">Selecciona una opción</option>
                    <option value="email">Correo Electrónico</option>
                    <option value="telefono">Llamada Telefónica</option>
                    <option value="whatsapp">WhatsApp</option>
                    <option value="cualquiera">Cualquier medio</option>
                </select>
            </div>
            
            <div class="campo">
                <label for="horario">Horario Preferido para Contacto</label>
                <select id="horario" name="horario">
                    <option value="">Sin preferencia</option>
                    <option value="manana">Mañana (8:00 AM - 12:00 PM)</option>
                    <option value="tarde">Tarde (12:00 PM - 6:00 PM)</option>
                    <option value="noche">Noche (6:00 PM - 8:00 PM)</option>
                </select>
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
<section id="contacto" class="seccion">
    <h2>Contáctenos</h2>
    <p>Ponte en contacto con nosotros a través de:</p>
    
    <div class="info-contacto">
        <div class="datos-contacto">
            <div class="contacto-item">
                <div class="icono-contacto">📱</div>
                <div class="contacto-detalle">
                    <strong>WhatsApp:</strong><br>
                    <a href="https://wa.me/573028476657?text=Hola%2C%20quiero%20informaci%C3%B3n" target="_blank">+57 302 847 6657</a>
                </div>
            </div>
            
            <div class="contacto-item">
                <div class="icono-contacto">📞</div>
                <div class="contacto-detalle">
                    <strong>Celular:</strong><br>
                    <a href="tel:+573125881176">+57 312 588 1176</a>
                </div>
            </div>
            
            <div class="contacto-item">
                <div class="icono-contacto">📍</div>
                <div class="contacto-detalle">
                    <strong>Dirección:</strong><br>
                    Carrera 48 # 1 - 128<br>
                    Medellín, Antioquia, Colombia
                </div>
            </div>
        </div>
        
        <div class="mapa-google">
            <h3>🗺️ Nuestra Ubicación</h3>
            <iframe 
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3976.525551111111!2d-75.5733333!3d6.2444444!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8e4428e30d30d30d%3A0x1234567890abcdef!2sCRA%2048%20%231-128%2C%20Medell%C3%ADn%2C%20Antioquia!5e0!3m2!1ses!2sco!4v1678888888888!5m2!1ses!2sco" 
                width="100%" 
                height="300" 
                style="border:0;" 
                allowfullscreen="" 
                loading="lazy" 
                referrerpolicy="no-referrer-when-downgrade">
            </iframe>
        </div>
        
        <div class="horarios-atencion">
            <h3>🕒 Horarios de Atención</h3>
            <div class="horario-grid">
                <div class="horario-item">
                    <strong>Lunes a Viernes:</strong><br>
                    8:00 AM - 6:00 PM
                </div>
                <div class="horario-item">
                    <strong>Sábados:</strong><br>
                    9:00 AM - 4:00 PM
                </div>
                <div class="horario-item">
                    <strong>Domingos:</strong><br>
                    10:00 AM - 2:00 PM
                </div>
            </div>
        </div>
    </div>
</section>


</body>
</html>

