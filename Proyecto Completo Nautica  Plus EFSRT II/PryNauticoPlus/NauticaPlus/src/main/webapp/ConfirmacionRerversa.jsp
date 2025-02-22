<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="entidades.Reserva" %>
<%@ page import="entidades.Usuario, java.util.List, entidades.Reserva"%>
<%@ page import="dao.DAOFactory" %> 
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Confirmación de Reserva - Naútica Plus</title>
    <script src="https://unpkg.com/@tailwindcss/browser@4"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
</head>

<style>
/* Scrollbar personalizado para navegadores de escritorio */
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

/* Hacer que el scrollbar sea visible en dispositivos móviles */
@media (max-width: 768px) {
    * {
        scrollbar-width: thin; /* Soporte para Firefox */
        scrollbar-color: #fbbf24 rgba(255, 255, 255, 0.1); /* Color thumb y track */
    }

    /* Safari y Chrome en móvil */
    ::-webkit-scrollbar {
        width: 6px;
        height: 6px;
    }

    ::-webkit-scrollbar-thumb {
        background: #fbbf24;
        border-radius: 4px;
    }

    ::-webkit-scrollbar-track {
        background: rgba(255, 255, 255, 0.1);
    }
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

<body class="font-[Cinzel_Variable] bg-gradient-to-br from-gray-800 via-gray-900 to-gray-800 min-h-screen py-8 px-4 sm:px-6 lg:px-8">
    <%
    Reserva nuevaReserva = (Reserva) session.getAttribute("nuevaReserva");
    if(nuevaReserva != null){
    %>
    <div class="max-w-3xl mx-auto">
        <!-- Card Container -->
        <div class="bg-white rounded-2xl shadow-xl overflow-hidden transform transition-all duration-300 hover:shadow-2xl">
            <!-- Header -->
            <div class="bg-gradient-to-r from-gray-800 to-gray-700 px-6 py-8 relative overflow-hidden">
                <div class="absolute top-0 left-0 w-full h-full opacity-10 bg-pattern"></div>
                <div class="relative z-10">
                    <i class="fas fa-check-circle text-4xl text-green-400 mb-4"></i>
                    <h1 class="text-3xl font-bold text-white mb-2">¡Reserva Confirmada!</h1>
                    <p class="text-gray-300">Tu mesa está lista para recibirte</p>
                </div>
            </div>

            <!-- Reservation Details -->
            <div class="p-6 lg:p-8 space-y-6">
                <!-- Status and ID Section -->
                <div class="flex flex-col sm:flex-row justify-between items-start sm:items-center gap-4 pb-4 border-b border-gray-100">
                    <div class="flex items-center gap-3">
                        <span class="text-lg font-semibold text-gray-800">Reserva #<%= nuevaReserva.getIdReserva() %></span>
                    </div>
                    <span class="px-4 py-2 rounded-full text-sm font-medium
                        <%= nuevaReserva.getEstado().equals("Confirmada") ? 
                            "bg-green-100 text-green-800 border border-green-200" : 
                            "bg-yellow-100 text-yellow-800 border border-yellow-200" %>">
                        <i class="<%= nuevaReserva.getEstado().equals("Confirmada") ? "fas fa-check" : "fas fa-clock" %> mr-2"></i>
                        <%= nuevaReserva.getEstado() %>
                    </span>
                </div>

                <!-- Details Grid -->
                <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                    <div class="bg-gray-50 rounded-xl p-4 space-y-2">
                        <div class="flex items-center text-gray-600">
                            <i class="far fa-calendar-alt mr-3 text-yellow-500"></i>
                            <p>Fecha de Reserva</p>
                        </div>
                        <p class="text-gray-800 font-semibold text-lg"><%= nuevaReserva.getFecha() %></p>
                    </div>

                    <div class="bg-gray-50 rounded-xl p-4 space-y-2">
                        <div class="flex items-center text-gray-600">
                            <i class="far fa-clock mr-3 text-yellow-500"></i>
                            <p>Hora</p>
                        </div>
                        <p class="text-gray-800 font-semibold text-lg"><%= nuevaReserva.getHora() %></p>
                    </div>

                    <div class="bg-gray-50 rounded-xl p-4 space-y-2">
                        <div class="flex items-center text-gray-600">
                            <i class="fas fa-users mr-3 text-yellow-500"></i>
                            <p>Número de Personas</p>
                        </div>
                        <p class="text-gray-800 font-semibold text-lg"><%= nuevaReserva.getNumeroPersonas() %></p>
                    </div>

                    <div class="bg-gray-50 rounded-xl p-4 space-y-2">
                        <div class="flex items-center text-gray-600">
                            <i class="fas fa-chair mr-3 text-yellow-500"></i>
                            <p>Mesa Asignada</p>
                        </div>
                        <p class="text-gray-800 font-semibold text-lg">#<%= nuevaReserva.getIdMesa() %></p>
                    </div>
                </div>

                <!-- Observations -->
                <div class="bg-gray-50 rounded-xl p-4 space-y-2">
                    <div class="flex items-center text-gray-600 mb-2">
                        <i class="fas fa-comment-alt mr-3 text-yellow-500"></i>
                        <p>Observaciones</p>
                    </div>
                    <p class="text-gray-800 bg-white p-4 rounded-lg border border-gray-100">
                        <%= nuevaReserva.getObservaciones().isEmpty() ? "Sin observaciones" : nuevaReserva.getObservaciones() %>
                    </p>
                </div>
            </div>

            <!-- Action Buttons -->
            <div class="p-6 bg-gray-50 flex flex-col sm:flex-row justify-center items-center gap-4">
                <a href="UsuarioCuenta" class="w-full sm:w-auto inline-flex items-center justify-center px-6 py-3 bg-gray-800 hover:bg-gray-700 text-white font-medium rounded-lg transition-all duration-200">
                    <i class="fas fa-user mr-2"></i>
                    Ver Mis Reservas
                </a>
                <a href="index.jsp" class="w-full sm:w-auto inline-flex items-center justify-center px-6 py-3 bg-yellow-500 hover:bg-yellow-600 text-white font-medium rounded-lg transition-all duration-200">
                    <i class="fas fa-home mr-2"></i>
                    Volver al Inicio
                </a>
            </div>
        </div>
    </div>
    <%
    } else {
    %>
    <div class="max-w-2xl mx-auto">
        <div class="bg-white rounded-2xl shadow-xl p-8 text-center">
            <i class="fas fa-exclamation-circle text-4xl text-yellow-500 mb-4"></i>
            <h2 class="text-2xl font-bold text-gray-800 mb-4">No se encontró la reserva</h2>
            <p class="text-gray-600 mb-6">La información de la reserva no está disponible en este momento.</p>
            <a href="index.jsp" class="inline-flex items-center px-6 py-3 bg-yellow-500 hover:bg-yellow-600 text-white font-medium rounded-lg transition-all duration-200">
                <i class="fas fa-home mr-2"></i>
                Volver al Inicio
            </a>
        </div>
    </div>
    <%
    }
    %>
</body>
</html>