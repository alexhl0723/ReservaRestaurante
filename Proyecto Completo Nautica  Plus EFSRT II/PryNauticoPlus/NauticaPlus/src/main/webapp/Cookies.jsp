<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Cookies - Naútica Plus</title>
        <script src="https://unpkg.com/@tailwindcss/browser@4"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <link rel="stylesheet" href="css/styles.css">
    </head>

    <body class="font-[Cinzel_Variable] bg-gradient-to-br from-gray-800 via-gray-900 to-gray-800">

        <jsp:include page="header.jsp" />


<!-- COOKIES INICIO -->
<main class="pt-32 pb-16 min-h-screen">
    <div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="bg-gray-800 rounded-3xl p-6 sm:p-8 lg:p-12 border border-yellow-500/20 shadow-2xl">
            <h1 class="text-3xl sm:text-4xl lg:text-5xl font-bold text-yellow-500 mb-8 text-center">
                Política de Cookies
            </h1>

            <div class="space-y-10">
                <!-- Sección: ¿Qué son las cookies? -->
                <section class="transform hover:scale-[1.01] transition-transform duration-300">
                    <h2 class="text-2xl sm:text-3xl font-semibold text-yellow-500 mb-4">¿Qué son las cookies?</h2>
                    <div class="bg-gray-800/80 rounded-xl p-6 border border-yellow-500/10 hover:border-yellow-500/30 transition-colors duration-300">
                        <p class="text-gray-100 leading-relaxed">
                            Las cookies son pequeños archivos de texto que los sitios web almacenan en su
                            dispositivo cuando los visita. Son ampliamente utilizadas para hacer que los sitios
                            web funcionen, o funcionen de manera más eficiente, así como para proporcionar
                            información a los propietarios del sitio.
                        </p>
                    </div>
                </section>

                <!-- Sección: Tipos de cookies -->
                <section class="transform hover:scale-[1.01] transition-transform duration-300">
                    <h2 class="text-2xl sm:text-3xl font-semibold text-yellow-500 mb-6">Tipos de cookies</h2>
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                        <!-- Cookies Esenciales -->
                        <div class="bg-gray-800/80 rounded-xl p-6 border border-yellow-500/10 hover:border-yellow-500/30 transition-all duration-300 hover:shadow-lg hover:shadow-yellow-500/5">
                            <h3 class="text-xl text-yellow-500 mb-4 flex items-center">
                                <svg class="w-6 h-6 mr-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 15v2m-6 4h12a2 2 0 002-2v-6a2 2 0 00-2-2H6a2 2 0 00-2 2v6a2 2 0 002 2zm10-10V7a4 4 0 00-8 0v4h8z"></path>
                                </svg>
                                Cookies Esenciales
                            </h3>
                            <ul class="space-y-3 text-gray-100">
                                <li class="flex items-center bg-gray-700/50 p-2 rounded-lg">
                                    <svg class="w-5 h-5 text-yellow-500 mr-2" fill="currentColor" viewBox="0 0 20 20">
                                        <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"></path>
                                    </svg>
                                    Mantener sesión iniciada
                                </li>
                                
                                <li class="flex items-center bg-gray-700/50 p-2 rounded-lg">
                                    <svg class="w-5 h-5 text-yellow-500 mr-2" fill="currentColor" viewBox="0 0 20 20">
                                        <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"></path>
                                    </svg>
                                    Permitir reservas de mesas
                                </li>

                            </ul>
                        </div>
                        
                                                <div class="bg-gray-800/80 rounded-xl p-6 border border-yellow-500/10 hover:border-yellow-500/30 transition-all duration-300 hover:shadow-lg hover:shadow-yellow-500/5">
                            <h3 class="text-xl text-yellow-500 mb-4 flex items-center">
                                <svg class="w-6 h-6 mr-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 15v2m-6 4h12a2 2 0 002-2v-6a2 2 0 00-2-2H6a2 2 0 00-2 2v6a2 2 0 002 2zm10-10V7a4 4 0 00-8 0v4h8z"></path>
                                </svg>
                                Cookies de Preferencias
                            </h3>
                            <ul class="space-y-3 text-gray-100">
                                <li class="flex items-center bg-gray-700/50 p-2 rounded-lg">
                                    <svg class="w-5 h-5 text-yellow-500 mr-2" fill="currentColor" viewBox="0 0 20 20">
                                        <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"></path>
                                    </svg>
                                    Idioma preferido
                                </li>
                                
                                <li class="flex items-center bg-gray-700/50 p-2 rounded-lg">
                                    <svg class="w-5 h-5 text-yellow-500 mr-2" fill="currentColor" viewBox="0 0 20 20">
                                        <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd"></path>
                                    </svg>
                                    Idioma preferido
                                </li>

                            </ul>
                        </div>
                        
                       
                        
                        
                    </div>
                </section>

                <!-- Sección: Control de cookies -->
                <section class="transform hover:scale-[1.01] transition-transform duration-300">
                    <h2 class="text-2xl sm:text-3xl font-semibold text-yellow-500 mb-4">Gestiona tus preferencias</h2>
                    <div class="bg-gray-800/80 rounded-xl p-6 border border-yellow-500/10">
                        <div class="mb-6">
                            <div class="flex justify-between items-center p-4 bg-gray-700/50 rounded-lg mb-4">
                                <div>
                                    <h4 class="text-yellow-500 font-medium">Cookies Esenciales</h4>
                                    <p class="text-gray-100 text-sm">Siempre activas - Necesarias para el funcionamiento del sitio</p>
                                </div>
                                <div class="bg-yellow-500/20 p-2 rounded-full">
                                    <svg class="w-6 h-6 text-yellow-500" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
                                    </svg>
                                </div>
                            </div>
                            <!-- Repetir para otros tipos de cookies con switches... -->
                        </div>
                        
                    </div>
                </section>

                <!-- Sección: Contacto mejorada -->
                <section class="transform hover:scale-[1.01] transition-transform duration-300">
                    <h2 class="text-2xl sm:text-3xl font-semibold text-yellow-500 mb-4">¿Necesitas ayuda?</h2>
                    <div class="bg-gray-800/80 rounded-xl p-6 border border-yellow-500/10">
                        <p class="text-gray-100 mb-6">Nuestro equipo está disponible para resolver tus dudas sobre la política de cookies:</p>
                        <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
                            <a href="mailto:cookies@nauticaplus.com" class="group bg-gray-700/50 hover:bg-gray-700 p-4 rounded-lg transition-all duration-300 flex items-center">
                                <div class="bg-yellow-500/10 p-3 rounded-full mr-4 group-hover:bg-yellow-500/20 transition-colors duration-300">
                                    <svg class="w-6 h-6 text-yellow-500" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"></path>
                                    </svg>
                                </div>
                                <span class="text-gray-100">cookies@nauticaplus.com</span>
                            </a>
                            <!-- Repetir para teléfono -->
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>
</main>
<!-- COOKIES FINAL -->

        <jsp:include page="footer.jsp" />



        <script src="js/script.js"></script>

    </body>

    </html>