<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <%@ page import="entidades.Usuario, java.util.List, entidades.Reserva"%>
    <html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Panel de Administración - Naútica Plus</title>
        <script src="https://unpkg.com/@tailwindcss/browser@4"></script>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.0/chart.min.js"></script>
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

    <body class="font-[Cinzel_Variable] bg-gray-100">

        <% HttpSession sesion=request.getSession(false); if (sesion==null || sesion.getAttribute("UsuarioActual")==null)
            { response.sendRedirect("Login.jsp"); return; } %>

            <!-- Contenedor Principal -->
            <div class="flex flex-col md:flex-row min-h-screen">

                <div id="sidebar-overlay" class="fixed inset-0 bg-black opacity-50 z-20 hidden md:hidden"></div>

                <aside id="sidebar"
                    class="transform -translate-x-full md:translate-x-0 fixed md:relative bg-gray-800 text-white w-64 min-h-screen p-6 transition-transform duration-200 ease-in-out z-30">
                    <div class="flex justify-between items-center mb-8">
                        <h1 class="text-2xl font-bold text-yellow-500 flex items-center">
                            <i class="fas fa-anchor mr-2"></i>
                            Naútica Plus
                        </h1>
                        <button id="close-sidebar" class="md:hidden text-white">
                            <i class="fas fa-times"></i>
                        </button>
                    </div>

                    <nav>
                        <ul class="space-y-4">
                            <li>
                                <a href="#"
                                    class="flex items-center p-3 hover:bg-gray-700 rounded transition duration-300 group">
                                    <i class="fas fa-tachometer-alt mr-3 text-yellow-500 group-hover:text-white"></i>
                                    <span>Panel</span>
                                </a>
                            </li>
                           
                        </ul>
                    </nav>
                </aside>

                <!-- Contenido Principal -->
                <main class="flex-1 p-4 md:p-8 md:ml-0 overflow-y-auto">
                    <!-- Barra Superior -->
                    <header class="bg-white p-4 md:p-6 rounded-lg shadow mb-6">
                        <div class="flex flex-col md:flex-row justify-between items-center space-y-4 md:space-y-0">
                            <div class="flex items-center">
                                <button id="toggle-sidebar" class="md:hidden mr-4 text-gray-600">
                                    <i class="fas fa-bars text-xl"></i>
                                </button>
                                <h2 class="text-xl font-semibold">Panel de Administración</h2>
                            </div>
                            <div
                                class="flex flex-col md:flex-row items-center space-y-4 md:space-y-0 md:space-x-4 w-full md:w-auto">
                                <div class="relative w-full md:w-64">
                                    <input type="text" placeholder="Buscar..."
                                        class="w-full p-2 pl-10 border rounded-lg focus:outline-none focus:ring-2 focus:ring-yellow-500">
                                    <i class="fas fa-search absolute left-3 top-3 text-gray-400"></i>
                                </div>
        <!-- Botones de Acción -->
      
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
                    </header>

                    <!-- Estadísticas Rápidas -->
                    <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4 mb-6">
                        <div class="bg-white p-6 rounded-lg shadow hover:shadow-lg transition duration-300">
                            <div class="flex items-center">
                                <div class="bg-yellow-100 p-3 rounded-full">
                                    <i class="fas fa-calendar-day text-2xl text-yellow-500"></i>
                                </div>
                                <div class="ml-4">
                                    <h3 class="text-sm font-semibold text-gray-600">Reservas Hoy</h3>
                                    <p class="text-2xl font-bold text-gray-800">25</p>
                                    <p class="text-sm text-green-500">+15% vs ayer</p>
                                </div>
                            </div>
                        </div>
                        <div class="bg-white p-6 rounded-lg shadow hover:shadow-lg transition duration-300">
                            <div class="flex items-center">
                                <div class="bg-blue-100 p-3 rounded-full">
                                    <i class="fas fa-user-plus text-2xl text-blue-500"></i>
                                </div>
                                <div class="ml-4">
                                    <h3 class="text-sm font-semibold text-gray-600">Clientes Nuevos</h3>
                                    <p class="text-2xl font-bold text-gray-800">12</p>
                                    <p class="text-sm text-green-500">+5% vs ayer</p>
                                </div>
                            </div>
                        </div>
                    </div>


                    <!-- Tabla de Reservas -->
<div class="bg-white p-6 rounded-lg shadow overflow-hidden">
    <div class="flex justify-between items-center mb-4">
        <h3 class="text-lg font-semibold">Reservas</h3>
    </div>
    <div class="overflow-x-auto">
        <table class="w-full text-left border-collapse">
        <thead>
            <tr class="bg-gray-50 border-b">
                <th class="p-4 font-semibold">Cliente</th>
                <th class="p-4 font-semibold">IdReserva</th>
                <th class="p-4 font-semibold">Fecha</th>
                <th class="p-4 font-semibold">Hora</th>
                <th class="p-4 font-semibold">Persona</th>
                <th class="p-4 font-semibold">Estado</th>
                <th class="p-4 font-semibold">Acciones</the>
            </tr>
        </thead>
        <tbody>
            <%
                List<Reserva> reservas = (List<Reserva>) request.getAttribute("reservas");
                if (reservas != null && !reservas.isEmpty()) {
                    for (Reserva reserva : reservas) {
                        String nombreUsuario = reserva.getObservaciones();
                        String iniciales = (nombreUsuario != null && nombreUsuario.length() >= 2) 
                                         ? nombreUsuario.substring(0,2).toUpperCase() 
                                         : "??";
            %>
            <tr class="border-b hover:bg-gray-50 transition duration-300">
                <td class="p-4">
                    <div class="flex items-center">
                        <div class="w-8 h-8 bg-yellow-500 rounded-full flex items-center justify-center text-white font-bold">
                            <%= iniciales %>
                        </div>
                        
                        <span class="ml-3"><%= nombreUsuario %></span>
                    </div>
                </td>
                <td class="p-4"><%= reserva.getIdReserva() %></td>
                <td class="p-4"><%= reserva.getFecha() %></td>
                <td class="p-4"><%= reserva.getHora() %></td>
                <td class="p-4"><%= reserva.getNumeroPersonas() %></td>
                <td class="p-4">
                    <span class="px-3 py-1 rounded-full text-sm <%= reserva.getEstado().equals("CONFIRMADA") ? "bg-green-100 text-green-800" : "bg-yellow-100 text-yellow-800" %>">
                        <%= reserva.getEstado() %>
                    </span>
                </td>
                <td class="p-4">
                    <form action="/NauticaPlus/ActualizarEstadoServlet" method="POST">
                        <input type="hidden" name="idReserva" value="<%= reserva.getIdReserva() %>">
                        <select name="estado" class="border p-1 rounded">
                            <option value="PENDIENTE" <%= reserva.getEstado().equals("PENDIENTE") ? "selected" : "" %>>Pendiente</option>
                            <option value="CONFIRMADA" <%= reserva.getEstado().equals("CONFIRMADA") ? "selected" : "" %>>Confirmada</option>
                            <option value="CANCELADA" <%= reserva.getEstado().equals("CANCELADA") ? "selected" : "" %>>Cancelada</option>
                        </select>
                        <button type="submit" class="ml-2 text-yellow-500 hover:text-yellow-600">
                            <i class="fas fa-save"></i> Guardar
                        </button>
                    </form>
                </td>
            </tr>
            <%
                    }
                } else {
            %>
            <tr>
                <td colspan="6" class="p-4 text-center text-gray-500">
                    No hay reservas registradas
                </td>
            </tr>
            <% } %>
        </tbody>
    </table>
                        </div>
                    </div>
                </main>
            </div>

            <script>
                // Sidebar Toggle
                const sidebar = document.getElementById('sidebar');
                const sidebarOverlay = document.getElementById('sidebar-overlay');
                const toggleSidebarBtn = document.getElementById('toggle-sidebar');
                const closeSidebarBtn = document.getElementById('close-sidebar');

                function toggleSidebar() {
                    sidebar.classList.toggle('-translate-x-full');
                    sidebarOverlay.classList.toggle('hidden');
                }

                toggleSidebarBtn.addEventListener('click', toggleSidebar);
                closeSidebarBtn.addEventListener('click', toggleSidebar);
                sidebarOverlay.addEventListener('click', toggleSidebar);


                // Sistema de búsqueda en tiempo real
                const searchInput = document.querySelector('input[placeholder="Buscar..."]');
                searchInput.addEventListener('input', function (e) {
                    const searchTerm = e.target.value.toLowerCase();
                    const tableRows = document.querySelectorAll('tbody tr');

                    tableRows.forEach(row => {
                        const text = row.textContent.toLowerCase();
                        row.style.display = text.includes(searchTerm) ? '' : 'none';
                    });
                });


                // Responsive Table
                function checkTableResponsiveness() {
                    const table = document.querySelector('table');
                    const tableContainer = table.parentElement;

                    if (tableContainer.scrollWidth > tableContainer.clientWidth) {
                        tableContainer.classList.add('shadow-left', 'shadow-right');
                    } else {
                        tableContainer.classList.remove('shadow-left', 'shadow-right');
                    }
                }

                // Verificar responsividad de la tabla al cargar y al cambiar el tamaño de la ventana
                window.addEventListener('load', checkTableResponsiveness);
                window.addEventListener('resize', checkTableResponsiveness);
            </script>

            <style>
                .shadow-left {
                    background: linear-gradient(to right, rgba(0, 0, 0, 0.1), transparent 10px) no-repeat left;
                }

                .shadow-right {
                    background: linear-gradient(to left, rgba(0, 0, 0, 0.1), transparent 10px) no-repeat right;
                }

                @media (max-width: 768px) {
                    .table-responsive {
                        display: block;
                        width: 100%;
                        overflow-x: auto;
                        -webkit-overflow-scrolling: touch;
                    }
                }


                .hover\:scale-105:hover {
                    transform: scale(1.05);
                    transition: transform 0.2s ease-in-out;
                }


                .transition-all {
                    transition: all 0.3s ease-in-out;
                }
            </style>
    </body>

    </html>