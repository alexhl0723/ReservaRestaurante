<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="entidades.Usuario, java.util.List, entidades.Reserva"%>
<%@ page import="dao.DAOFactory" %>    
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mi Cuenta - Naútica Plus</title>
    <script src="https://unpkg.com/@tailwindcss/browser@4"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
</head>


<style>
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
        
                @charset "UTF-8";

        /* cinzel-latin-wght-normal */
        @font-face {
            font-family: 'Cinzel Variable';
            font-style: normal;
            font-display: swap;
            font-weight: 400 900;
            src: url(https://cdn.jsdelivr.net/fontsource/fonts/cinzel:vf@latest/latin-wght-normal.woff2) format('woff2-variations');
            unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+0304, U+0308, U+0329, U+2000-206F, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
        }

</style>

<body class="font-[Cinzel_Variable] bg-gradient-to-br from-gray-800 via-gray-900 to-gray-800">
    <%
    if (session.getAttribute("reservas") == null) {
        request.getRequestDispatcher("/UsuarioCuenta").forward(request, response);
        return;
    }
    
    Usuario usuarioActual = (Usuario) session.getAttribute("UsuarioActual");
    List<Reserva> reservas = (List<Reserva>) request.getAttribute("reservas");
    if (reservas == null) {
        reservas = (List<Reserva>) session.getAttribute("reservas");
    }
    %>

    <!-- Navbar -->
    <nav class=" shadow-lg">
        <div class="max-w-7xl mx-auto px-4">
            <div class="flex justify-between h-16">
                <div class="flex items-center">
                    <i class="fas fa-utensils text-2xl text-yellow-500"></i>
                    <span class="ml-2 text-xl font-bold text-white">Naútica Plus</span>
                </div>
                <div class="flex items-center space-x-4">
                    <div class="flex items-center space-x-2">
                        <p class="text-white font-bold">Bienvenid@</p>
                        <span class="text-white font-medium"><%= usuarioActual.getNombre() %></span>
                    </div>
                </div>
            </div>
        </div>
    </nav>

<div class="min-h-screen">
    <div class="container mx-auto px-4 py-8">
        <!-- Grid de 3 columnas para los cards principales -->
        <div class="grid grid-cols-1 lg:grid-cols-3 gap-8">
            
<!-- Reservas Card -->
<div class="w-full lg:col-span-3">
    <div class="bg-white rounded-2xl shadow-xl p-4 sm:p-6 lg:p-8 transition-all duration-300 hover:shadow-2xl">
        <!-- Header Section -->
        <div class="flex flex-col sm:flex-row justify-between items-start sm:items-center gap-4 border-b border-gray-100 pb-6">
            <div class="flex flex-col sm:flex-row sm:items-center gap-2">
                <h2 class="text-2xl font-bold text-gray-800">MIS RESERVAS</h2>
                <span class="inline-flex bg-yellow-100 text-yellow-800 px-3 py-1 rounded-full text-sm font-medium">
                    <%= reservas != null ? reservas.size() : 0 %> Reservas
                </span>
            </div>
            <a href="Reserva.jsp" 
               class="w-full sm:w-auto inline-flex items-center justify-center px-6 py-2.5 bg-yellow-500 text-black rounded-lg hover:bg-yellow-600 transition-all duration-300 font-medium shadow-sm">
                <i class="fas fa-plus mr-2"></i>
                Nueva Reserva
            </a>
        </div>

        <!-- Reservations List -->
        <div class="mt-6 space-y-4">
            <% if (reservas != null && !reservas.isEmpty()) {
                for (Reserva reserva : reservas) { %>
                <div class="group bg-gray-50 rounded-xl p-4 sm:p-6 border-l-4 border-yellow-500 hover:shadow-md transition-all duration-300 reserva-item"
                     data-id="<%= reserva.getIdReserva() %>"
                     data-mesa="<%= reserva.getIdMesa() %>"
                     data-fecha="<%= reserva.getFecha() %>"
                     data-hora="<%= reserva.getHora() %>"
                     data-personas="<%= reserva.getNumeroPersonas() %>"
                     data-estado="<%= reserva.getEstado() %>">
                    
                    <div class="flex flex-col lg:flex-row justify-between gap-4">
                        <!-- Reservation Info -->
                        <div class="space-y-3 flex-1">
                            <div class="flex flex-wrap items-center gap-3">
                                <span class="text-lg font-semibold text-gray-800">
                                    Mesa <%= reserva.getIdMesa() %>
                                </span>
                                <span class="px-3 py-1 rounded-full text-sm font-medium 
                                    <%= reserva.getEstado().equals("Confirmada") ? 
                                        "bg-green-100 text-green-800" : 
                                        "bg-yellow-100 text-yellow-800" %>">
                                    <%= reserva.getEstado() %>
                                </span>
                            </div>
                            
                            <div class="grid grid-cols-1 sm:grid-cols-3 gap-2 text-gray-600">
                                <span class="flex items-center text-sm">
                                    <i class="far fa-calendar-alt mr-2 text-gray-500"></i>
                                    <%= reserva.getFecha() %>
                                </span>
                                <span class="flex items-center text-sm">
                                    <i class="far fa-clock mr-2 text-gray-500"></i>
                                    <%= reserva.getHora() %>
                                </span>
                                <span class="flex items-center text-sm">
                                    <i class="fas fa-users mr-2 text-gray-500"></i>
                                    <%= reserva.getNumeroPersonas() %> personas
                                </span>
                            </div>
                        </div>

                        <!-- Action Buttons -->
                        <div class="flex justify-end items-center space-x-2 border-t lg:border-t-0 pt-3 lg:pt-0">
                            <button class="p-2.5 hover:bg-gray-200 rounded-full transition-colors duration-200 group tooltip-trigger"
                                    onclick="generarPDF(this)"
                                    title="Imprimir reserva">
                                <i class="fas fa-print text-gray-600 group-hover:text-yellow-500"></i>
                            </button>
                            <button class="p-2.5 hover:bg-red-100 rounded-full transition-colors duration-200 group tooltip-trigger"
                                    onclick="eliminarReserva('<%= reserva.getIdReserva() %>')"
                                    title="Eliminar reserva">
                                <i class="fas fa-trash text-red-500 group-hover:text-red-600"></i>
                            </button>
                        </div>
                    </div>
                </div>
            <% }
            } else { %>
                <div class="text-center py-12">
                    <i class="fas fa-calendar-times text-4xl text-gray-400 mb-4"></i>
                    <p class="text-gray-600 font-medium">No tienes reservas registradas.</p>
                    <p class="text-sm text-gray-500 mt-2">¡Haz tu primera reserva ahora!</p>
                </div>
            <% } %>
        </div>
    </div>
</div>

            <!-- Card de Perfil -->
            <div class="bg-white rounded-xl shadow-lg p-6">
                <div class="flex items-center justify-between mb-6">
                    <h2 class="text-xl font-bold text-gray-800">Mi Perfil</h2>
                    <div class="bg-yellow-100 p-2 rounded-full">
                        <i class="fas fa-user text-yellow-600"></i>
                    </div>
                </div>
                
                <form id="profileForm" class="space-y-4" action="CambiarInfoServlet" method="POST">
                    <!-- Nombre Completo -->
                    <div>
                        <label class="block text-sm font-medium text-gray-700 mb-1">Nombre Completo</label>
                        <div class="relative">
                            <i class="fas fa-user absolute left-3 top-1/2 -translate-y-1/2 text-gray-400"></i>
                            <input type="text" name="nombre" value="<%= usuarioActual.getNombre() %>" 
                                class="pl-10 w-full p-3 bg-gray-50 border border-gray-200 rounded-lg focus:ring-2 focus:ring-yellow-500" readonly>
                        </div>
                    </div>

                    <!-- Apellidos -->
                    <div class="grid grid-cols-2 gap-4">
                        <div>
                            <label class="block text-sm font-medium text-gray-700 mb-1">Apellido Paterno</label>
                            <div class="relative">
                                <i class="fas fa-user absolute left-3 top-1/2 -translate-y-1/2 text-gray-400"></i>
                                <input type="text" name="apellidoPaterno" value="<%= usuarioActual.getApellidoPaterno() %>" 
                                    class="pl-10 w-full p-3 bg-gray-50 border border-gray-200 rounded-lg focus:ring-2 focus:ring-yellow-500" readonly>
                            </div>
                        </div>
                        <div>
                            <label class="block text-sm font-medium text-gray-700 mb-1">Apellido Materno</label>
                            <div class="relative">
                                <i class="fas fa-user absolute left-3 top-1/2 -translate-y-1/2 text-gray-400"></i>
                                <input type="text" name="apellidoMaterno" value="<%= usuarioActual.getApellidoMaterno() %>" 
                                    class="pl-10 w-full p-3 bg-gray-50 border border-gray-200 rounded-lg focus:ring-2 focus:ring-yellow-500" readonly>
                            </div>
                        </div>
                    </div>

                    <!-- Email y Teléfono -->
                    <div class="space-y-4">
                        <div>
                            <label class="block text-sm font-medium text-gray-700 mb-1">Email</label>
                            <div class="relative">
                                <i class="fas fa-envelope absolute left-3 top-1/2 -translate-y-1/2 text-gray-400"></i>
                                <input type="email" name="email" value="<%= usuarioActual.getEmail() %>"
                                    class="pl-10 w-full p-3 border border-gray-200 rounded-lg focus:ring-2 focus:ring-yellow-500">
                            </div>
                        </div>
                        <div>
                            <label class="block text-sm font-medium text-gray-700 mb-1">Teléfono</label>
                            <div class="relative">
                                <i class="fas fa-phone absolute left-3 top-1/2 -translate-y-1/2 text-gray-400"></i>
                                <input type="tel" name="telefono" value="<%= usuarioActual.getTelefono() %>"
                                    class="pl-10 w-full p-3 border border-gray-200 rounded-lg focus:ring-2 focus:ring-yellow-500">
                            </div>
                        </div>
                    </div>

                    <button type="submit" class="w-full bg-yellow-500 text-black p-3 rounded-lg hover:bg-yellow-600 transition-all flex items-center justify-center space-x-2">
                        <i class="fas fa-save"></i>
                        <span>Actualizar Datos</span>
                    </button>
                </form>
            </div>

            <!-- Card de Seguridad -->
            <div class="bg-white rounded-xl shadow-lg p-6">
                <div class="flex items-center justify-between mb-6">
                    <h2 class="text-xl font-bold text-gray-800">Seguridad</h2>
                    <div class="bg-yellow-100 p-2 rounded-full">
                        <i class="fas fa-shield-alt text-yellow-600"></i>
                    </div>
                </div>

                <form id="securityForm" class="space-y-4" action="CambiarContrasenhaServlet" method="POST">
                    <div>
                        <label class="block text-sm font-medium text-gray-700 mb-1">Contraseña Actual</label>
                        <div class="relative">
                            <i class="fas fa-lock absolute left-3 top-1/2 -translate-y-1/2 text-gray-400"></i>
                            <input type="password" name="passwordActual"
                                class="pl-10 w-full p-3 border border-gray-200 rounded-lg focus:ring-2 focus:ring-yellow-500" required>
                        </div>
                    </div>

                    <div>
                        <label class="block text-sm font-medium text-gray-700 mb-1">Nueva Contraseña</label>
                        <div class="relative">
                            <i class="fas fa-key absolute left-3 top-1/2 -translate-y-1/2 text-gray-400"></i>
                            <input type="password" id="newPassword" name="newPassword"
                                class="pl-10 w-full p-3 border border-gray-200 rounded-lg focus:ring-2 focus:ring-yellow-500" required>
                            <button type="button" onclick="togglePassword('newPassword')"
                                class="absolute right-3 top-1/2 -translate-y-1/2 text-gray-400 hover:text-gray-600">
                                <i class="fas fa-eye"></i>
                            </button>
                        </div>
                    </div>

                    <div>
                        <label class="block text-sm font-medium text-gray-700 mb-1">Confirmar Nueva Contraseña</label>
                        <div class="relative">
                            <i class="fas fa-key absolute left-3 top-1/2 -translate-y-1/2 text-gray-400"></i>
                            <input type="password" name="confirmPassword"
                                class="pl-10 w-full p-3 border border-gray-200 rounded-lg focus:ring-2 focus:ring-yellow-500" required>
                        </div>
                    </div>

                    <button type="submit" class="w-full bg-yellow-500 text-black p-3 rounded-lg hover:bg-yellow-600 transition-all flex items-center justify-center space-x-2">
                        <i class="fas fa-key"></i>
                        <span>Actualizar Contraseña</span>
                    </button>
                </form>
            </div>
        </div>

        <!-- Botones de Acción -->
        <div class="mt-8 flex flex-col sm:flex-row items-center justify-center space-y-4 sm:space-y-0 sm:space-x-4">
            <form action="logout" method="get" class="w-full sm:w-auto">
                <button type="submit" class="w-full sm:w-auto px-8 py-3 bg-red-500 text-black font-semibold rounded-full hover:bg-red-600 transition-all transform hover:scale-105 flex items-center justify-center space-x-2">
                    <i class="fas fa-sign-out-alt"></i>
                    <span>Cerrar Sesión</span>
                </button>
            </form>
            
            <a href="index.jsp" class="w-full sm:w-auto px-8 py-3 bg-yellow-500 text-black font-semibold rounded-full hover:bg-yellow-600 transition-all transform hover:scale-105 flex items-center justify-center space-x-2">
                <i class="fas fa-home"></i>
                <span>Volver al Inicio</span>
            </a>
        </div>
    </div>
</div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js"></script>

<script>
//Función existente para eliminar reservas
function eliminarReserva(idReserva) {
    if (confirm('¿Estás seguro de que deseas eliminar esta reserva?')) {
        window.location.href = 'EliminarReservaServlet?idReserva=' + idReserva;
    }
}

// Nueva función para generar PDF
function generarPDF(button) {
    const reserva = button.closest('.reserva-item').dataset;
    
    const doc = new jspdf.jsPDF({
        orientation: "portrait",
        unit: "mm",
        format: "a4"
    });

    // Estilos
    const titleColor = '#3f3f46';
    const textColor = '#4b5563';
    const accentColor = '#eab308';

    // Logo
    const img = new Image();
    img.src = 'https://cdn-icons-png.flaticon.com/512/7763/7763272.png';
    doc.addImage(img, 'PNG', 85, 15, 40, 40);

    // Título
    doc.setFontSize(22)
       .setFont('helvetica', 'bold')
       .setTextColor(titleColor)
       .text('Náutica Plus', 105, 70, { align: 'center' });

    // Subtítulo
    doc.setFontSize(16)
       .setTextColor(accentColor)
       .text('Comprobante de Reserva', 105, 80, { align: 'center' });

    // Línea decorativa
    doc.setDrawColor(accentColor)
       .setLineWidth(0.5)
       .line(30, 85, 180, 85);

    // Detalles de la reserva
    doc.setFontSize(12)
       .setTextColor(textColor);

    let yPosition = 95;
    const detalles = [
        { label: 'Número de Reserva:', value: reserva.id },
        { label: 'Fecha:', value: reserva.fecha },
        { label: 'Hora:', value: reserva.hora },
        { label: 'Mesa:', value: reserva.mesa },
        { label: 'Personas:', value: reserva.personas },
        { label: 'Estado:', value: reserva.estado }
    ];

    detalles.forEach((d, i) => {
        doc.setFont('helvetica', 'bold')
           .text(d.label, 35, yPosition + (i * 7))
           .setFont('helvetica', 'normal')
           .text(d.value, 80, yPosition + (i * 7));
    });

    // Pie de página
    doc.setFontSize(10)
       .setTextColor(150)
       .text('Gracias por elegirnos • www.nauticaplus.com • Tel: 555-1234', 
             105, 280, { align: 'center' });

    doc.save(`Reserva_${reserva.id}.pdf`);
}

        function togglePassword(inputId) {
            const input = document.getElementById(inputId);
            input.type = input.type === 'password' ? 'text' : 'password';
        }

        function cancelarReserva(idReserva) {
            if (confirm('¿Estás seguro de que deseas cancelar esta reserva?')) {
            	window.location.href = 'EliminarReservaServlet?idReserva=' + idReserva;

            }
        }
        
        function eliminarReserva(idReserva) {
            if (confirm('¿Estás seguro de que deseas eliminar esta reserva? Esta acción no se puede deshacer.')) {
            	window.location.href = 'EliminarReservaServlet?idReserva=' + idReserva;
            }
        }
    </script>
</body>
</html>