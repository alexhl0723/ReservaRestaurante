<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Galería - Naútica Plus</title>
        <script src="https://unpkg.com/@tailwindcss/browser@4"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <link rel="stylesheet" href="css/styles.css">
    </head>

    <body class="font-[Cinzel_Variable] bg-gradient-to-br from-gray-800 via-gray-900 to-gray-800">
        <jsp:include page="header.jsp" />

        <!-- Hero Section -->
        <div class="min-h-[100px] relative overflow-hidden">
            <div class="absolute inset-0 "></div>

            <div class="container mx-auto px-4 lg:px-8 relative z-10 pt-32">
                <div class="max-w-4xl mx-auto text-center">
                    <span class="inline-flex items-center text-yellow-500 text-lg tracking-wider mb-4">
                        <hr class="w-12 mr-4 border-yellow-500">
                        Experiencias Náuticas Inolvidables
                        <hr class="w-12 ml-4 border-yellow-500">
                    </span>

                    <h1 class="text-4xl md:text-6xl font-bold text-white mb-6">
                        Descubre la Aventura
                        <span class="block text-yellow-500 mt-2">en Náutica Plus</span>
                    </h1>

                    <p class="text-gray-100 text-lg md:text-xl leading-relaxed max-w-2xl mx-auto">
                        Navegando hacia experiencias únicas que transforman momentos ordinarios en memorias
                        extraordinarias.
                    </p>
                </div>
            </div>
        </div>

        <!-- Galería Principal -->
        <section class="py-16 md:py-24">
            <div class="container mx-auto px-4">
                <h2 class="text-3xl md:text-4xl font-bold text-gray-200 text-center mb-16">
                    Explora Nuestras Categorías
                </h2>

                <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6 md:gap-8">
                    <!-- Eventos Card -->
                    <div
                        class="group relative overflow-hidden rounded-xl shadow-lg transition-all duration-300 hover:shadow-2xl">
                        <a href="VistaGalery-Eventos.jsp" class="block">
                            <div class="aspect-[3/4] relative">
                                <img src="./public/evento-img1.webp" alt="Eventos"
                                    class="w-full h-full object-cover transition-transform duration-500 group-hover:scale-110">
                                <div class="absolute inset-0 bg-gradient-to-t from-gray-800 via-transparent opacity-70">
                                </div>
                                <div class="absolute bottom-0 left-0 right-0 p-6 transform transition-all duration-300">
                                    <div class="bg-yellow-500/10 backdrop-blur-sm rounded-lg p-4">
                                        <h3 class="text-2xl font-bold text-white mb-2">Eventos</h3>
                                        <p
                                            class="text-gray-100 opacity-0 group-hover:opacity-100 transition-opacity duration-300">
                                            Nuestros eventos
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>

                    <!-- Experiencias Card -->
                    <div
                        class="group relative overflow-hidden rounded-xl shadow-lg transition-all duration-300 hover:shadow-2xl">
                        <a href="VistaGalery-Experiencias.jsp" class="Experiencias">
                            <div class="aspect-[3/4] relative">
                                <img src="./public/experiencias-img1.webp" alt="Experiencias únicas"
                                    class="w-full h-full object-cover transition-transform duration-500 group-hover:scale-110">
                                <div class="absolute inset-0 bg-gradient-to-t from-gray-800 via-transparent opacity-70">
                                </div>
                                <div class="absolute bottom-0 left-0 right-0 p-6 transform transition-all duration-300">
                                    <div class="bg-yellow-500/10 backdrop-blur-sm rounded-lg p-4">
                                        <h3 class="text-2xl font-bold text-white mb-2">Experiencias</h3>
                                        <p
                                            class="text-gray-100 opacity-0 group-hover:opacity-100 transition-opacity duration-300">
                                            Vive momentos únicos
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>

                    <!-- Equipo Card -->
                    <div
                        class="group relative overflow-hidden rounded-xl shadow-lg transition-all duration-300 hover:shadow-2xl">
                        <a href="VistaGalery-Equipo.jsp" class="block">
                            <div class="aspect-[3/4] relative">
                                <img src="./public/categoriasGalery/equipo/equipo1.webp" alt="equipo unico"
                                    class="w-full h-full object-cover transition-transform duration-500 group-hover:scale-110">
                                <div class="absolute inset-0 bg-gradient-to-t from-gray-800 via-transparent opacity-70">
                                </div>
                                <div class="absolute bottom-0 left-0 right-0 p-6 transform transition-all duration-300">
                                    <div class="bg-yellow-500/10 backdrop-blur-sm rounded-lg p-4">
                                        <h3 class="text-2xl font-bold text-white mb-2">Equipo</h3>
                                        <p
                                            class="text-gray-100 opacity-0 group-hover:opacity-100 transition-opacity duration-300">
                                            Vive momentos únicos
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>

                    <!-- Sabores Card -->
                    <div
                        class="group relative overflow-hidden rounded-xl shadow-lg transition-all duration-300 hover:shadow-2xl">
                        <a href="VistaGalery-Sabores.jsp" class="block">
                            <div class="aspect-[3/4] relative">
                                <img src="./public/categoriasGalery/sabores/sabores (1).webp" alt="Sabores unicos"
                                    class="w-full h-full object-cover transition-transform duration-500 group-hover:scale-110">
                                <div class="absolute inset-0 bg-gradient-to-t from-gray-800 via-transparent opacity-70">
                                </div>
                                <div class="absolute bottom-0 left-0 right-0 p-6 transform transition-all duration-300">
                                    <div class="bg-yellow-500/10 backdrop-blur-sm rounded-lg p-4">
                                        <h3 class="text-2xl font-bold text-white mb-2">Sabores</h3>
                                        <p
                                            class="text-gray-100 opacity-0 group-hover:opacity-100 transition-opacity duration-300">
                                            Sabores únicos en el mar
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>


                </div>
            </div>
        </section>

        <!-- Call to Action -->
        <section class="py-16">
            <div class="container mx-auto px-4 text-center">
                <blockquote class="max-w-3xl mx-auto mb-8">
                    <p class="text-2xl md:text-3xl text-white italic">
                        "Cada viaje es una historia, cada ola un recuerdo"
                    </p>
                </blockquote>

                <a href="Reserva.jsp" class="inline-flex items-center px-8 py-4 bg-yellow-500 text-gray-800 rounded-full 
                      hover:bg-yellow-400 transition-colors duration-300 font-semibold text-lg">
                    <span class="mr-2">Reserva tu Aventura</span>
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" viewBox="0 0 20 20" fill="currentColor">
                        <path fill-rule="evenodd"
                            d="M10.293 5.293a1 1 0 011.414 0l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414-1.414L12.586 11H5a1 1 0 110-2h7.586l-2.293-2.293a1 1 0 010-1.414z"
                            clip-rule="evenodd" />
                    </svg>
                </a>
            </div>
        </section>

        <jsp:include page="footer.jsp" />

        <script src="js/script.js"></script>
    </body>

    </html>