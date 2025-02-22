<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="entidades.Usuario" %>
<%
    Usuario usuarioActual = (Usuario) session.getAttribute("UsuarioActual");
    if (usuarioActual == null) {
        response.sendRedirect("Login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reservación de Mesas - Naútica Plus</title>
    <script src="https://unpkg.com/@tailwindcss/browser@4"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700&display=swap" rel="stylesheet">
    <style>
        /* Animaciones personalizadas */
        @keyframes float {
            0% { transform: translateY(0px); }
            50% { transform: translateY(-10px); }
            100% { transform: translateY(0px); }
        }
        
        .float-animation {
            animation: float 3s ease-in-out infinite;
        }
        
        .mesa-hover:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(251, 191, 36, 0.2);
        }
        
        /* Efecto de brillo en los bordes */
        .gradient-border {
            position: relative;
            border: 2px solid transparent;
            background: linear-gradient(45deg, #fbbf24, #f59e0b, #d97706) border-box;
            -webkit-mask: 
                linear-gradient(#fff 0 0) padding-box, 
                linear-gradient(#fff 0 0);
            -webkit-mask-composite: xor;
            mask-composite: exclude;
        }
        
        /* Efecto de cristal */
        .glass-effect {
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, 0.1);
        }
        
        /* Efectos de hover mejorados */
        .hover-lift {
            transition: all 0.3s ease;
        }
        
        .hover-lift:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(251, 191, 36, 0.2);
        }
        
        /* Personalización del scrollbar */
        ::-webkit-scrollbar {
            width: 8px;
        }
        
        ::-webkit-scrollbar-track {
            background: rgba(255, 255, 255, 0.1);
        }
        
        ::-webkit-scrollbar-thumb {
            background: #fbbf24;
            border-radius: 4px;
        }
        
        /* Input personalizado para fecha */
        input[type="date"] {
            position: relative;
            color-scheme: dark;
        }
        
        input[type="date"]::-webkit-calendar-picker-indicator {
            background: transparent;
            bottom: 0;
            color: transparent;
            cursor: pointer;
            height: auto;
            left: 0;
            position: absolute;
            right: 0;
            top: 0;
            width: auto;
        }
        
        input[type="date"]::-webkit-datetime-edit {
            color: white;
        }
        
        /* Estilo para el contenedor principal */
        .main-container {
            background: radial-gradient(circle at top right, rgba(251, 191, 36, 0.1), transparent),
                        radial-gradient(circle at bottom left, rgba(251, 191, 36, 0.05), transparent);
        }
    </style>
<script>
    // Función para formatear fecha en YYYY-MM-DD
    function formatDate(date) {
        return date.toISOString().split('T')[0];
    }

    // Configurar las restricciones de fecha
    window.addEventListener('load', function() {
        const fechaInput = document.getElementById('fechaReserva');
        
        // Obtener fecha actual y mañana
        const hoy = new Date();
        const mañana = new Date(hoy);
        mañana.setDate(hoy.getDate());
        
        // Establecer fecha mínima (mañana)
        fechaInput.min = formatDate(mañana);
        
        // Establecer fecha máxima (3 meses desde hoy)
        const maxDate = new Date(hoy);
        maxDate.setMonth(hoy.getMonth() + 3);
        fechaInput.max = formatDate(maxDate);
        
        // Si hay una fecha seleccionada que no cumple las restricciones, la limpiamos
        if(fechaInput.value) {
            const selectedDate = new Date(fechaInput.value);
            if(selectedDate < mañana || selectedDate > maxDate) {
                fechaInput.value = '';
            }
        }
        
        // Evento para validar la fecha seleccionada
        fechaInput.addEventListener('change', function() {
            const selectedDate = new Date(this.value);
            if(selectedDate < mañana) {
                alert('Por favor, seleccione una fecha a partir de mañana.');
                this.value = '';
            }
        });
    });

    // Mejora visual al interactuar con el campo
    document.getElementById('fechaReserva').addEventListener('focus', function() {
        this.parentElement.classList.add('ring-2', 'ring-amber-500/30');
    });

    document.getElementById('fechaReserva').addEventListener('blur', function() {
        this.parentElement.classList.remove('ring-2', 'ring-amber-500/30');
    });
</script>
</head>
<body class="bg-gradient-to-br from-gray-900 via-gray-800 to-gray-900 min-h-screen font-[Cinzel_Variable]">

	<jsp:include page="header.jsp" />
	

    <div class="relative container mx-auto px-4 py-12">
        <!-- Header mejorado -->
        <div class="text-center mb-16 animate__animated animate__fadeIn">
            <h1 class="playfair text-4xl font-bold text-white mb-6 mt-15">
                <span class="bg-clip-text text-transparent bg-gradient-to-r from-amber-300 via-amber-400 to-amber-500">
                    Reserva Tu Experiencia
                </span>
            </h1>
            <p class="text-gray-300 text-xl max-w-2xl mx-auto leading-relaxed">
                Disfruta de una velada inolvidable en nuestro restaurante
            </p>
        </div>

        <!-- Formulario principal con animación -->
        <div class="max-w-5xl mx-auto animate__animated animate__fadeInUp">
            <div class="backdrop-blur-xl bg-white/10 rounded-3xl shadow-2xl p-10 border border-white/20">
                <form action="RegistrarReserva" method="post" class="space-y-10">
                    <!-- Grid mejorado para campos principales -->
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
                        <!-- Fecha con mejor contraste y visibilidad -->
<!-- Fecha con restricciones y mejor diseño -->
<div class="space-y-3 group">
    <label class="block text-lg font-medium text-amber-300 group-hover:text-amber-400 transition-colors playfair">
        Fecha de Reserva
    </label>
    <div class="relative">
        <!-- Icono de calendario -->
        <div class="absolute left-4 top-1/2 transform -translate-y-1/2">
            <svg class="w-6 h-6 text-amber-500" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" 
                    d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z"/>
            </svg>
        </div>
        
        <input type="date" 
            name="fecha" 
            id="fechaReserva"
            required
            class="w-full pl-14 pr-5 py-4 bg-gray-800 border border-gray-600 rounded-xl 
            text-white placeholder-gray-400
            focus:outline-none focus:ring-2 focus:ring-amber-500 focus:border-transparent
            hover:border-amber-500/50
            transition-all duration-300 cursor-pointer">
    </div>
    <!-- Mensaje informativo -->
    <p class="text-sm text-amber-400/80 italic mt-2">
        * Seleccione una fecha a partir de mañana
    </p>
</div>


<style>
    /* Personalizar el selector de fecha */
    input[type="date"] {
        position: relative;
    }

    /* Ocultar el ícono por defecto del navegador */
    input[type="date"]::-webkit-calendar-picker-indicator {
        background: transparent;
        bottom: 0;
        color: transparent;
        cursor: pointer;
        height: auto;
        left: 0;
        position: absolute;
        right: 0;
        top: 0;
        width: auto;
    }

    /* Estilo para el texto de la fecha */
    input[type="date"]::-webkit-datetime-edit-text,
    input[type="date"]::-webkit-datetime-edit-month-field,
    input[type="date"]::-webkit-datetime-edit-day-field,
    input[type="date"]::-webkit-datetime-edit-year-field {
        color: white;
    }

    /* Estilo para cuando no hay fecha seleccionada */
    input[type="date"]:invalid::-webkit-datetime-edit {
        color: #6b7280;
    }
</style>

                        <!-- Hora con mejor visibilidad -->
<div class="space-y-3 group">
    <label class="block text-lg font-medium text-amber-300 group-hover:text-amber-400 transition-colors playfair">
        Hora de Reserva
    </label>
    <div class="relative">
        <select name="hora" required
            class="w-full px-5 py-4 bg-gray-800 border border-gray-600 rounded-xl 
            text-white appearance-none
            focus:outline-none focus:ring-2 focus:ring-amber-500 focus:border-transparent
            transition-all duration-300">
            <option value="" class="bg-gray-800">Seleccionar hora</option>
            <option value="12:00:00" class="bg-gray-800">12:00 PM - Almuerzo</option>
            <option value="14:00:00" class="bg-gray-800">2:00 PM - Almuerzo tardío</option>
            <option value="20:00:00" class="bg-gray-800">8:00 PM - Cena</option>
            <option value="21:00:00" class="bg-gray-800">9:00 PM - Cena elegante</option>
        </select>
        <div class="absolute right-4 top-1/2 transform -translate-y-1/2 pointer-events-none">
            <svg class="w-6 h-6 text-amber-500" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"/>
            </svg>
        </div>
    </div>
</div>

                        <!-- Número de Comensales con mejor visibilidad -->
<div class="space-y-3 group">
    <label class="block text-lg font-medium text-amber-300 group-hover:text-amber-400 transition-colors playfair">
        Número de Comensales
    </label>
    <div class="relative">
        <select name="numeroPersonas" required
            class="w-full px-5 py-4 bg-gray-800 border border-gray-600 rounded-xl 
            text-white appearance-none
            focus:outline-none focus:ring-2 focus:ring-amber-500 focus:border-transparent
            transition-all duration-300">
            <option value="" class="bg-gray-800">Seleccionar número de personas</option>
            <option value="2" class="bg-gray-800">2 personas - Mesa íntima</option>
            <option value="4" class="bg-gray-800">4 personas - Mesa familiar</option>
            <option value="6" class="bg-gray-800">6 personas - Grupo pequeño</option>
            <option value="8" class="bg-gray-800">8 personas - Grupo grande</option>
        </select>
        <div class="absolute right-4 top-1/2 transform -translate-y-1/2 pointer-events-none">
            <svg class="w-6 h-6 text-amber-500" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"/>
            </svg>
        </div>
    </div>
</div>
                    </div>

                                        <!-- Selector de mesas con diseño mejorado -->
                    <div class="space-y-8 mt-12">
                        <h3 class="text-3xl font-bold text-center mb-8 relative inline-block">
                            <span class="bg-clip-text text-transparent bg-gradient-to-r from-amber-300 to-amber-500">
                                Seleccione su Mesa
                            </span>
                        </h3>
                        
                        <!-- Leyenda mejorada -->
                        <div class="flex flex-wrap justify-center gap-4 mb-8">
                            <div class="flex items-center bg-gray-800/30 px-4 py-2 rounded-lg">
                                <div class="w-4 h-4 bg-green-500 rounded-full mr-2"></div>
                                <span class="text-white">Disponible</span>
                            </div>
                            <div class="flex items-center bg-gray-800/30 px-4 py-2 rounded-lg">
                                <div class="w-4 h-4 bg-yellow-500 rounded-full mr-2"></div>
                                <span class="text-white">Reservada</span>
                            </div>
                            <div class="flex items-center bg-gray-800/30 px-4 py-2 rounded-lg">
                                <div class="w-4 h-4 bg-red-500 rounded-full mr-2"></div>
                                <span class="text-white">Ocupada</span>
                            </div>
                        </div>

                        <!-- Grid de mesas con nuevo diseño -->
                        <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-6">
                            <%
                                java.sql.Connection conn = null;
                                java.sql.PreparedStatement pstmt = null;
                                java.sql.ResultSet rs = null;
                                
                                try {
                                    conn = bd.MySQLConexion.getConexion();
                                    String sql = "SELECT idMesa, numero, capacidad, estado FROM Mesa";
                                    pstmt = conn.prepareStatement(sql);
                                    rs = pstmt.executeQuery();

                                    while(rs.next()) {
                                        String estado = rs.getString("estado");
                                        String colorEstado = "";
                                        String cursor = "";
                                        
                                        switch(estado) {
                                            case "DISPONIBLE":
                                                colorEstado = "bg-green-500";
                                                cursor = "cursor-pointer hover:scale-105";
                                                break;
                                            case "OCUPADA":
                                                colorEstado = "bg-red-500";
                                                cursor = "opacity-60 cursor-not-allowed";
                                                break;
                                            case "RESERVADA":
                                                colorEstado = "bg-yellow-500";
                                                cursor = "opacity-60 cursor-not-allowed";
                                                break;
                                        }
                            %>
                                <div class="mesa-hover p-6 rounded-xl border-2 border-gray-600 <%= cursor %> transition-all duration-300"
                                     onclick="<%= estado.equals("DISPONIBLE") ? "seleccionarMesa(" + rs.getInt("idMesa") + ")" : "" %>">
                                    <div class="text-center">
                                        <div class="w-20 h-20 mx-auto mb-4 rounded-full flex items-center justify-center <%= colorEstado %> shadow-lg">
                                            <span class="text-white text-xl font-bold">M<%= rs.getInt("numero") %></span>
                                        </div>
                                        <div class="space-y-2">
                                            <p class="text-white font-medium">
                                                <span class="text-amber-400">Capacidad:</span> 
                                                <%= rs.getInt("capacidad") %> personas
                                            </p>
                                            <p class="text-gray-300 text-sm"><%= estado.toLowerCase() %></p>
                                        </div>
                                    </div>
                                </div>
                            <%
                                    }
                                } catch(Exception e) {
                                    e.printStackTrace();
                                } finally {
                                    try { if(rs != null) rs.close(); } catch(Exception e) { }
                                    try { if(pstmt != null) pstmt.close(); } catch(Exception e) { }
                                    try { if(conn != null) conn.close(); } catch(Exception e) { }
                                }
                            %>
                        </div>
                    </div>

                    <!-- Campo de observaciones mejorado -->
<div class="space-y-3">
    <label class="block text-lg font-medium text-amber-300 playfair">
        Observaciones Especiales
    </label>
    <textarea name="observaciones" rows="4"
        class="w-full px-5 py-4 bg-gray-800 border border-gray-600 rounded-xl 
        text-white placeholder-gray-400
        focus:outline-none focus:ring-2 focus:ring-amber-500 focus:border-transparent
        transition-all duration-300 resize-none"
        placeholder="Indique cualquier requerimiento especial, alergias o preferencias..."></textarea>
</div>
                    <!-- Campo oculto para la mesa -->
                    <input type="hidden" id="idMesa" name="idMesa" required>

                    <!-- Mensajes de estado -->
                    <% String mensaje = (String) request.getAttribute("mensaje"); %>
                    <% if (mensaje != null) { %>
                        <div class="p-4 rounded-xl bg-amber-500/20 border border-amber-500/40 text-amber-300">
                            <%= mensaje %>
                        </div>
                    <% } %>

                    <!-- Botón de confirmación con efectos modernos -->
                    <div class="pt-8">
                        <button type="submit" 
                            class="w-full bg-gradient-to-r from-amber-500 via-amber-600 to-amber-700 
                            text-white text-xl font-bold py-6 px-8 rounded-xl
                            hover:from-amber-600 hover:via-amber-700 hover:to-amber-800
                            focus:outline-none focus:ring-4 focus:ring-amber-500/50
                            transform hover:scale-[1.02] active:scale-[0.98] 
                            transition-all duration-300 shadow-xl hover:shadow-2xl
                            relative overflow-hidden group">
                            <span class="relative z-10">Confirmar Reservación</span>
                            <div class="absolute inset-0 bg-gradient-to-r from-amber-400 to-amber-600 opacity-0 group-hover:opacity-100 transition-opacity duration-300"></div>
                        </button>
                    </div>
                </form>

                <!-- Footer con información de contacto mejorado -->
                <div class="mt-12 text-center">
                    <p class="text-gray-400 italic text-lg">
                        Para modificaciones o cancelaciones, contáctenos al 
                        <span class="text-amber-400 font-semibold hover:text-amber-300 transition-colors duration-300">
                            +51 999 423 345
                        </span>
                    </p>
                </div>
            </div>
        </div>
    </div>
    
    <jsp:include page="footer.jsp" />

    <!-- Script para selección de mesa -->
    <script>
        function seleccionarMesa(idMesa) {
            // Remover selección previa
            document.querySelectorAll('.border-amber-500').forEach(el => {
                el.classList.remove('border-amber-500');
                el.classList.add('border-gray-600');
            });
            
            // Agregar nueva selección con animación
            const mesaElement = event.currentTarget;
            mesaElement.classList.remove('border-gray-600');
            mesaElement.classList.add('border-amber-500');
            
            // Actualizar campo oculto
            document.getElementById('idMesa').value = idMesa;

            // Efecto de feedback
            mesaElement.classList.add('scale-105');
            setTimeout(() => {
                mesaElement.classList.remove('scale-105');
            }, 200);
        }
    </script>
</body>
</html>