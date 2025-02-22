<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Locales - Naútica Plus</title>
        <script src="https://unpkg.com/@tailwindcss/browser@4"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <link rel="stylesheet" href="css/styles.css">
    </head>

    <body class="font-[Cinzel_Variable] bg-gradient-to-br from-gray-800 via-gray-900 to-gray-800">

        <jsp:include page="header.jsp" />

        <div class="">
            <!-- Main Content -->
            <main class="relative z-10 pb-16">
                <!-- Hero Section -->
                <section class="text-white py-40">
                    <div class="container mx-auto px-4">
                        <h1 class="text-4xl md:text-5xl lg:text-6xl font-bold text-center mb-8">
                            Nuestros <span class="text-yellow-500">Locales</span>
                        </h1>
                        <p class="text-center text-lg md:text-xl max-w-3xl mx-auto text-gray-300">
                            Descubre espacios únicos donde la gastronomía marina se encuentra con la elegancia
                        </p>
                    </div>
                </section>

                <!-- Flagship Location -->
                <section class="py-16 px-4">
                    <div class="container mx-auto max-w-7xl">
                        <div class="grid lg:grid-cols-2 gap-12 items-center">
                            <div class="relative group h-[400px] lg:h-[600px] overflow-hidden rounded-2xl shadow-xl">
                                <img src="./public/local4.webp" alt="Local Gaviotas"
                                    class="w-full h-full object-cover transition-transform duration-700 group-hover:scale-105">
                                <div class="absolute inset-0 bg-gradient-to-t from-gray-900/70 to-transparent"></div>
                                <div class="absolute bottom-0 left-0 p-8">
                                    <span class="text-yellow-500 text-sm font-medium">Nuestro buque insignia</span>
                                    <h2 class="text-4xl font-bold text-white mt-2">Av. Las Gaviotas</h2>
                                </div>
                            </div>

                            <div class="space-y-8">
                                <div class="flex items-center gap-4">
                                    <div class="w-16 h-px bg-yellow-500"></div>
                                    <span class="text-gray-200">Desde 1998</span>
                                </div>

                                <p class="text-2xl text-white leading-relaxed">
                                    Donde el mar se encuentra con la innovación culinaria en un espacio diseñado por
                                    <span class="text-yellow-500 font-semibold">Premiados Arquitectos</span>
                                </p>

                                <div class="grid sm:grid-cols-2 gap-8 p-6 rounded-xl">
                                    <div>
                                        <h3 class="text-yellow-500 font-semibold mb-4">Especialidades</h3>
                                        <ul class="space-y-2 text-gray-200">
                                            <li>• Mariscos de Mercado</li>
                                            <li>• Cocina de Autor</li>
                                            <li>• Menú Degustación</li>
                                        </ul>
                                    </div>
                                    <div>
                                        <h3 class="text-yellow-500 font-semibold mb-4">Horarios</h3>
                                        <ul class="space-y-2 text-gray-200">
                                            <li>Lun-Vie: 12:30 - 00:00</li>
                                            <li>Sáb-Dom: 12:00 - 01:00</li>
                                        </ul>
                                    </div>
                                </div>

                                <button
                                    class="w-full sm:w-auto px-8 py-4 bg-yellow-500 text-white font-medium rounded-full 
                                         hover:bg-yellow-400 transition-colors flex items-center justify-center gap-2 shadow-lg">
                                    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" viewBox="0 0 20 20"
                                        fill="currentColor">
                                        <path fill-rule="evenodd"
                                            d="M6 2a1 1 0 011-1h6a1 1 0 011 1v1h3a2 2 0 012 2v10a2 2 0 01-2 2H3a2 2 0 01-2-2V5a2 2 0 012-2h3V2zm6 2H8v1h4V4zm-4 5a1 1 0 011-1h2a1 1 0 110 2H9a1 1 0 01-1-1z"
                                            clip-rule="evenodd" />
                                    </svg>
                                    Reservar Mesa
                                </button>
                            </div>
                        </div>
                    </div>
                </section>

                <!-- Locations Grid -->
                <section class="py-16 px-4">
                    <div class="container mx-auto max-w-7xl">
                        <h2 class="text-3xl md:text-4xl font-bold text-yellow-500 mb-12 text-center">
                            Nuestras Experiencias
                        </h2>

                        <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-8">
                            <!-- Location Cards -->
                            <div
                                class="group relative overflow-hidden rounded-xl shadow-lg bg-gradient-to-b from-gray-800/90 to-gray-800/70">
                                <div class="h-[400px] overflow-hidden">
                                    <img src="./public/local2.webp" alt="Local Centro"
                                        class="w-full h-full object-cover transition-transform duration-700 group-hover:scale-105">
                                </div>
                                <div class="p-6">
                                    <h3 class="text-2xl font-semibold text-white mb-2">Centro Histórico</h3>
                                    <p class="text-gray-200 mb-4">Sabores tradicionales en arquitectura patrimonial</p>
                                    <button class="px-6 py-3 bg-yellow-500 text-white text-sm font-medium rounded-full 
                                             opacity-0 group-hover:opacity-100 transition-all duration-300 transform translate-y-2 
                                             group-hover:translate-y-0">
                                        Explorar Menú
                                    </button>
                                </div>
                            </div>

                            <div
                                class="group relative overflow-hidden rounded-xl shadow-lg bg-gradient-to-b from-gray-800/90 to-gray-800/70">
                                <div class="h-[400px] overflow-hidden">
                                    <img src="./public/local3.webp" alt="Local Norte"
                                        class="w-full h-full object-cover transition-transform duration-700 group-hover:scale-105">
                                </div>
                                <div class="p-6">
                                    <h3 class="text-2xl font-semibold text-white mb-2">Zona Norte</h3>
                                    <p class="text-gray-200 mb-4">Cocina fusión en entorno vanguardista</p>
                                    <button class="px-6 py-3 bg-yellow-500 text-white text-sm font-medium rounded-full 
                                             opacity-0 group-hover:opacity-100 transition-all duration-300 transform translate-y-2 
                                             group-hover:translate-y-0">
                                        Eventos Corporativos
                                    </button>
                                </div>
                            </div>

                            <div
                                class="group relative overflow-hidden rounded-xl shadow-lg bg-gradient-to-b from-gray-800/90 to-gray-800/70">
                                <div class="h-[400px] overflow-hidden">
                                    <img src="./public/local1.webp" alt="Local Jardines"
                                        class="w-full h-full object-cover transition-transform duration-700 group-hover:scale-105">
                                </div>
                                <div class="p-6">
                                    <h3 class="text-2xl font-semibold text-white mb-2">Jardines del Sur</h3>
                                    <p class="text-gray-200 mb-4">Gastronomía familiar en entorno natural</p>
                                    <button class="px-6 py-3 bg-yellow-500 text-white text-sm font-medium rounded-full 
                                             opacity-0 group-hover:opacity-100 transition-all duration-300 transform translate-y-2 
                                             group-hover:translate-y-0">
                                        Menú Infantil
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </main>
        </div>

        <jsp:include page="footer.jsp" />
        <script src="js/script.js"></script>
    </body>

    </html>