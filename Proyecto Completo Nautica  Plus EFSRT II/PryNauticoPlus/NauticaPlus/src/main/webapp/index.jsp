<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Inicio - Naútica Plus</title>
        <script src="https://unpkg.com/@tailwindcss/browser@4"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <link rel="stylesheet" href="css/styles.css">
        <link rel="icon" type="image/png" href="../webapp/public/favicun.png">
        <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/public/favicun.png">

    </head>

    <body class="font-[Cinzel_Variable] bg-gradient-to-br from-gray-800 via-gray-900 to-gray-800">

        <jsp:include page="header.jsp" />

        <!-- Hero Section -->
        <section id="inicio" class="min-h-[100px] relative overflow-hidden">
            <!-- Background Overlay -->
            <div class="absolute inset-0 z-10"></div>

            <!-- Background Image with Parallax Effect -->
            <div class="absolute inset-0 bg-cover bg-center bg-fixed scale-105 animate-slow-zoom">
            </div>

            <!-- Content Container -->
            <div class="relative z-30 container mx-auto px-4 flex flex-col justify-center items-center">
                <div class="max-w-4xl mx-auto text-center space-y-8 item-center mb-65">

                    <!-- Main Heading -->
                    <h1
                        class="text-5xl md:text-7xl font-bold text-white mt-50 opacity-0 animate-fade-in tracking-tight">
                        <span class="block text-yellow-500">Naútica Plus</span>
                        <span class="block text-3xl md:text-4xl mt-4 font-light">Gastronomía de Altura</span>
                    </h1>

                    <!-- Description -->
                    <p class="text-xl md:text-2xl text-gray-200 opacity-0 animate-fade-in-delay-1 leading-relaxed">
                        Disfrute de una experiencia culinaria excepcional con vistas al mar Mediterráneo
                    </p>

                    <!-- CTA Buttons -->
                    <div
                        class="flex flex-col sm:flex-row gap-4 justify-center items-center opacity-0 animate-fade-in-delay-2">
                        <a href="#reservas" class="px-8 py-4 bg-yellow-500 text-gray-800 font-semibold rounded-full 
                    hover:bg-yellow-600 transition-all duration-300 transform hover:scale-105
                    min-w-[200px]">
                            Reservar Mesa
                        </a>
                        <a href="#menu" class="px-8 py-4 bg-transparent text-yellow-500 font-semibold rounded-full 
                    border-2 border-yellow-500 hover:bg-yellow-500 hover:text-gray-800
                    transition-all duration-300 transform hover:scale-105
                    min-w-[200px]">
                            Ver Menú
                        </a>
                    </div>

                    <!-- Additional Info -->
                    <div class="mt-16 mb-15">
                        <div class="grid grid-cols-1 md:grid-cols-2 gap-8 max-w-2xl mx-auto">
                            <div class="text-center">
                                <p class="text-yellow-500 font-semibold">HORARIO</p>
                                <p class="text-gray-300">13:00 - 23:30</p>
                            </div>
                            <div class="text-center">
                                <p class="text-yellow-500 font-semibold">UBICACIÓN</p>
                                <p class="text-gray-300">Puerto Marina Deportiva</p>
                            </div>
                        </div>
                    </div>

                    <!-- Scroll Indicator -->
                    <div
                        class="absolute bottom-8 left-1/2 transform -translate-x-1/2 opacity-0 animate-fade-in-delay-4">
                        <div class="animate-bounce">
                            <svg class="w-6 h-6 text-yellow-500" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M19 14l-7 7m0 0l-7-7m7 7V3"></path>
                            </svg>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <style>
            @keyframes slow-zoom {
                0% {
                    transform: scale(1);
                }

                100% {
                    transform: scale(1.1);
                }
            }

            @keyframes fade-in {
                0% {
                    opacity: 0;
                    transform: translateY(20px);
                }

                100% {
                    opacity: 1;
                    transform: translateY(0);
                }
            }

            .animate-slow-zoom {
                animation: slow-zoom 20s ease-out forwards;
            }

            .animate-fade-in {
                animation: fade-in 1s ease-out forwards;
            }

            .animate-fade-in-delay-1 {
                animation: fade-in 1s ease-out 0.3s forwards;
            }

            .animate-fade-in-delay-2 {
                animation: fade-in 1s ease-out 0.6s forwards;
            }

            .animate-fade-in-delay-3 {
                animation: fade-in 1s ease-out 0.9s forwards;
            }

            .animate-fade-in-delay-4 {
                animation: fade-in 1s ease-out 1.2s forwards;
            }
        </style>


        <!-- Menú Section -->
        <section id="menu" class="py-24 bg-gradient-to-br from-gray-900 via-gray-800 to-gray-800 relative z-10">
            <div class="container mx-auto px-4">
                <!-- Section Header -->
                <div class="text-center mb-16">
                    <h2 class="text-4xl md:text-5xl font-bold mb-4 text-yellow-500">Nuestra Carta</h2>

                    <div class="flex items-center justify-center mb-8">
                        <div class="h-px w-12 bg-yellow-500/20"></div>
                        <div class="w-3 h-3 rounded-full bg-yellow-500 mx-4"></div>
                        <div class="h-px w-12 bg-yellow-500/20"></div>
                    </div>
                </div>


                <!-- Menu Grid -->
                <div class="grid grid-cols-1 md:grid-cols-3 gap-10">
                    <!-- Plato 1 -->
                    <div
                        class="group relative overflow-hidden bg-gradient-to-br from-gray-800 to-gray-700 rounded-[2rem] border border-yellow-500/20 hover:border-yellow-500/40 transition-all duration-500 shadow-xl hover:shadow-yellow-500/10">
                        <div
                            class="absolute top-0 left-0 w-20 h-20 border-t-2 border-l-2 border-yellow-500/20 rounded-tl-[2rem]">
                        </div>
                        <div
                            class="absolute bottom-0 right-0 w-20 h-20 border-b-2 border-r-2 border-yellow-500/20 rounded-br-[2rem]">
                        </div>

                        <div class="relative h-80 overflow-hidden">
                            <img src="./public/ceviche.jpg" alt="Cebiche Premium El Choper"
                                class="w-full h-full object-cover transform group-hover:scale-110 transition-all duration-700 ease-out" />

                            <div
                                class="absolute inset-0 bg-gradient-to-t from-gray-800 via-transparent to-transparent opacity-70">
                            </div>

                            <div class="absolute top-6 right-6 flex items-center gap-2">
                                <div class="px-6 py-2 bg-yellow-500 backdrop-blur-sm text-gray-800 text-sm font-bold rounded-full 
                    shadow-lg transform hover:scale-105 transition-all duration-300">
                                    Signature
                                </div>
                            </div>

                            <div class="absolute top-6 left-6">
                                <div
                                    class="flex items-center gap-2 px-4 py-1 bg-gray-800/50 backdrop-blur-sm rounded-full border border-yellow-500/30">
                                    <span class="text-yellow-500">👨‍🍳</span>
                                    <span class="text-yellow-500 text-sm font-medium">Chef's Selection</span>
                                </div>
                            </div>
                        </div>

                        <div class="p-10 space-y-8">
                            <div class="space-y-6">
                                <div class="flex justify-between items-start">
                                    <div class="space-y-2">
                                        <h3 class="text-3xl font-bold text-yellow-500 font-serif tracking-wide">
                                            Cebiche Premium
                                        </h3>
                                        <p class="text-sm text-yellow-500/70 uppercase tracking-widest">
                                            El Choper Signature
                                        </p>
                                    </div>
                                    <div class="text-right">
                                        <span class="text-2xl font-bold text-yellow-500">
                                            S/. 85.00
                                        </span>
                                        <p class="text-sm text-yellow-500/70 mt-1">
                                            Precio incluye IGV
                                        </p>
                                    </div>
                                </div>

                                <p class="text-gray-100 leading-relaxed text-lg">
                                    Exquisitos cortes de pescado del día marinados en una exclusiva preparación
                                    de limón, ají limo y rocoto, ......................
                                </p>
                            </div>


                            <div class="flex items-center justify-between pt-8 border-t border-yellow-500/10">
                                <a href="Menu.jsp"
                                    class="group flex items-center space-x-3 text-yellow-500 hover:text-yellow-400 transition-colors duration-300">
                                    <span class="text-base uppercase tracking-wider font-medium">Explorar
                                        Detalles</span>
                                    <svg xmlns="http://www.w3.org/2000/svg"
                                        class="h-5 w-5 transform group-hover:translate-x-2 transition-transform duration-300"
                                        fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                            d="M9 5l7 7-7 7" />
                                    </svg>
                                </a>
                            </div>

                        </div>

                        <div
                            class="absolute bottom-0 left-1/2 transform -translate-x-1/2 w-1/3 h-1 bg-gradient-to-r from-transparent via-yellow-500/20 to-transparent">
                        </div>
                    </div>


                    <%-- Plato 2 --%>

                        <!-- Plato 2 -->
                        <div
                            class="group relative overflow-hidden bg-gradient-to-br from-gray-800 to-gray-700 rounded-[2rem] border border-yellow-500/20 hover:border-yellow-500/40 transition-all duration-500 shadow-xl hover:shadow-yellow-500/10">
                            <div
                                class="absolute top-0 left-0 w-20 h-20 border-t-2 border-l-2 border-yellow-500/20 rounded-tl-[2rem]">
                            </div>
                            <div
                                class="absolute bottom-0 right-0 w-20 h-20 border-b-2 border-r-2 border-yellow-500/20 rounded-br-[2rem]">
                            </div>

                            <div class="relative h-80 overflow-hidden">
                                <img src="./public/tiradito-pescado.jpg" alt="Tiradito Premium El Choper"
                                    class="w-full h-full object-cover transform group-hover:scale-110 transition-all duration-700 ease-out" />

                                <div
                                    class="absolute inset-0 bg-gradient-to-t from-gray-800 via-transparent to-transparent opacity-70">
                                </div>

                                <div class="absolute top-6 right-6 flex items-center gap-2">
                                    <div class="px-6 py-2 bg-yellow-500 backdrop-blur-sm text-gray-800 text-sm font-bold rounded-full 
                shadow-lg transform hover:scale-105 transition-all duration-300">
                                        Signature
                                    </div>
                                </div>

                                <div class="absolute top-6 left-6">
                                    <div
                                        class="flex items-center gap-2 px-4 py-1 bg-gray-800/50 backdrop-blur-sm rounded-full border border-yellow-500/30">
                                        <span class="text-yellow-500">👨‍🍳</span>
                                        <span class="text-yellow-500 text-sm font-medium">Chef's Selection</span>
                                    </div>
                                </div>
                            </div>

                            <div class="p-10 space-y-8">
                                <div class="space-y-6">
                                    <div class="flex justify-between items-start">
                                        <div class="space-y-2">
                                            <h3 class="text-3xl font-bold text-yellow-500 font-serif tracking-wide">
                                                Tiradito Premium
                                            </h3>
                                            <p class="text-sm text-yellow-500/70 uppercase tracking-widest">
                                                El Choper Signature
                                            </p>
                                        </div>
                                        <div class="text-right">
                                            <span class="text-2xl font-bold text-yellow-500">
                                                S/. 75.00
                                            </span>
                                            <p class="text-sm text-yellow-500/70 mt-1">
                                                Precio incluye IGV
                                            </p>
                                        </div>
                                    </div>

                                    <p class="text-gray-100 leading-relaxed text-lg">
                                        Finas láminas de pescado blanco bañadas en una cremosa salsa de ají amarillo,
                                        aceite de oliva y limón sutil. Decora ......................
                                    </p>
                                </div>

                                <div class="flex items-center justify-between pt-8 border-t border-yellow-500/10">
                                    <a href="Menu.jsp"
                                        class="group flex items-center space-x-3 text-yellow-500 hover:text-yellow-400 transition-colors duration-300">
                                        <span class="text-base uppercase tracking-wider font-medium">Explorar Detalles</span>
                                        <svg xmlns="http://www.w3.org/2000/svg"
                                            class="h-5 w-5 transform group-hover:translate-x-2 transition-transform duration-300"
                                            fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
                                        </svg>
                                    </a>
                                </div>
                                
                            </div>

                            <div
                                class="absolute bottom-0 left-1/2 transform -translate-x-1/2 w-1/3 h-1 bg-gradient-to-r from-transparent via-yellow-500/20 to-transparent">
                            </div>
                        </div>


                        <%-- Plato 3 --%>
                            <div
                                class="group relative overflow-hidden bg-gradient-to-br from-gray-800 to-gray-700 rounded-[2rem] border border-yellow-500/20 hover:border-yellow-500/40 transition-all duration-500 shadow-xl hover:shadow-yellow-500/10">

                                <div
                                    class="absolute top-0 left-0 w-20 h-20 border-t-2 border-l-2 border-yellow-500/20 rounded-tl-[2rem]">
                                </div>
                                <div
                                    class="absolute bottom-0 right-0 w-20 h-20 border-b-2 border-r-2 border-yellow-500/20 rounded-br-[2rem]">
                                </div>


                                <div class="relative h-80 overflow-hidden">
                                    <img src="./public/arroz-mariscos.jpg" alt="Arroz con Mariscos Premium"
                                        class="w-full h-full object-cover transform group-hover:scale-110 transition-all duration-700 ease-out" />


                                    <div
                                        class="absolute inset-0 bg-gradient-to-t from-[#0a0a0a] via-transparent to-transparent opacity-70">
                                    </div>


                                    <div class="absolute top-6 right-6 flex items-center gap-2">
                                        <div class="px-6 py-2 bg-yellow-500 backdrop-blur-sm text-black text-sm font-bold rounded-full 
                        shadow-lg transform hover:scale-105 transition-all duration-300">
                                            Signature
                                        </div>
                                    </div>


                                    <div class="absolute top-6 left-6">
                                        <div
                                            class="flex items-center gap-2 px-4 py-1 bg-black/50 backdrop-blur-sm rounded-full border border-yellow-500/30">
                                            <span class="text-yellow-500">👨‍🍳</span>
                                            <span class="text-yellow-500 text-sm font-medium">Chef's
                                                Selection</span>
                                        </div>
                                    </div>
                                </div>


                                <div class="p-10 space-y-8">

                                    <div class="space-y-6">
                                        <div class="flex justify-between items-start">
                                            <div class="space-y-2">
                                                <h3 class="text-3xl font-bold text-yellow-500 font-serif tracking-wide">
                                                    Arroz con Mariscos
                                                </h3>
                                                <p class="text-sm text-yellow-500/70 uppercase tracking-widest">
                                                    El Choper Signature
                                                </p>
                                            </div>
                                            <div class="text-right">
                                                <span class="text-2xl font-bold text-yellow-500">
                                                    S/. 95.00
                                                </span>
                                                <p class="text-sm text-yellow-500/70 mt-1">
                                                    Precio incluye IGV
                                                </p>
                                            </div>
                                        </div>


                                        <p class="text-gray-300 leading-relaxed text-lg">
                                            Arroz meloso cocido en fondo de mariscos y vino
                                            blanco, acompañado de langostinos jumbo,
                                            calamares, mejillones y ..........
                                        </p>
                                    </div>


                                    <div class="flex items-center justify-between pt-8 border-t border-yellow-500/10">
                                        <a href="Menu.jsp"
                                            class="group flex items-center space-x-3 text-yellow-500 hover:text-yellow-400 transition-colors duration-300">
                                            <span class="text-base uppercase tracking-wider font-medium">Explorar Detalles</span>
                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                class="h-5 w-5 transform group-hover:translate-x-2 transition-transform duration-300"
                                                fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
                                            </svg>
                                        </a>
                                    </div>
                                    
                                </div>

                                <div
                                    class="absolute bottom-0 left-1/2 transform -translate-x-1/2 w-1/3 h-1 bg-gradient-to-r from-transparent via-yellow-500/20 to-transparent">
                                </div>
                            </div>


                </div>
            </div>
        </section>


        <!-- Reservas Section -->
        <section id="reservas" class="py-32 bg-gradient-to-br from-gray-800 via-gray-00 to-gray-900 relative z-10">
            <div class="container mx-auto px-4">
                <!-- Enhanced Section Header -->
                <div class="text-center mb-20">
                    <span class="text-sm uppercase tracking-[0.3em] text-yellow-500/70 mb-6 block">Experiencia
                        Gastronómica</span>
                    <h2 class="text-5xl md:text-6xl font-bold mb-6 text-yellow-500 font-serif">Reserve su Mesa</h2>
                    <div class="flex items-center justify-center mb-8">
                        <div class="h-px w-12 bg-yellow-500/20"></div>
                        <div class="w-3 h-3 rounded-full bg-yellow-500 mx-4"></div>
                        <div class="h-px w-12 bg-yellow-500/20"></div>
                    </div>
                    <p class="text-gray-300 text-lg max-w-2xl mx-auto font-light leading-relaxed">
                        Disfrute de una velada inolvidable en un ambiente exclusivo y elegante.
                        Permítanos crear una experiencia gastronómica memorable para usted.
                    </p>
                </div>

                <!-- Luxury Card with Reservation Button -->
                <div class="max-w-2xl mx-auto">
                    <div
                        class="bg-gradient-to-br from-gray-800 to-gray-700 p-12 rounded-2xl border border-yellow-500/20 hover:border-yellow-500/40 transition-all duration-500 shadow-lg hover:shadow-yellow-500/10">
                        <div class="space-y-8 text-center">
                            <!-- Icon -->
                            <div class="flex justify-center">
                                <div class="p-4 bg-yellow-500/5 rounded-full border border-yellow-500/10">
                                    <svg xmlns="http://www.w3.org/2000/svg" class="h-10 w-10 text-yellow-500"
                                        fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5"
                                            d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z" />
                                    </svg>
                                </div>
                            </div>

                            <!-- Content -->
                            <div class="space-y-4">
                                <h3 class="text-2xl text-yellow-500 font-serif">Horario de Reservas</h3>
                                <div class="space-y-2 text-gray-300">
                                    <p>Almuerzo: 13:00 - 16:00</p>
                                    <p>Cena: 20:00 - 23:30</p>
                                </div>
                            </div>

                            <!-- Button -->
                            <a href="Reserva.jsp" class="inline-block w-full bg-gradient-to-r from-yellow-500 to-[#e5c158] text-black font-bold py-5 px-8 rounded-xl
                              transform hover:scale-[1.02] hover:shadow-lg
                              transition-all duration-300">
                                Realizar Reserva
                            </a>

                            <!-- Additional Info -->
                            <p class="text-gray-400 text-sm mt-6">
                                Para grupos de más de 6 personas o eventos especiales,<br>
                                contáctenos en <span class="text-yellow-500">+51 987 879 387</span>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <jsp:include page="footer.jsp" />





        <script src="js/script.js"></script>


        <div id="cookieBanner"
            class="fixed bottom-0 left-0 w-full bg-gray-900/95 backdrop-blur-lg text-white transform transition-all duration-500 ease-in-out z-50 translate-y-full">
            <div class="max-w-7xl mx-auto p-6">
                <div class="flex flex-col md:flex-row items-center justify-between gap-6">
                    <div class="flex-1 space-y-4">
                        <h3 class="text-lg font-semibold text-white">🍪 Tu privacidad es importante</h3>
                        <p class="text-gray-300 text-sm md:text-base leading-relaxed">
                            Utilizamos cookies para mejorar tu experiencia y analizar el uso del sitio. Puedes elegir
                            aceptar todas las cookies o ajustar tus preferencias. Para más información, consulta nuestra
                            <a href="Politica.jsp"
                                class="text-yellow-500 hover:text-amber-200 underline transition-colors">
                                Política de Privacidad
                            </a>.
                        </p>
                    </div>
                    <div class="flex flex-col sm:flex-row gap-4 min-w-[200px]">
                        <button onclick="acceptCookies()"
                            class="w-full sm:w-auto bg-yellow-500 text-black px-6 py-3 rounded-lg font-medium hover:bg-amber-200 transition-colors duration-300 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:ring-offset-2 focus:ring-offset-gray-900">
                            Aceptar todo
                        </button>
                        <button onclick="rejectCookies()"
                            class="w-full sm:w-auto bg-transparent border border-gray-400 text-gray-300 px-6 py-3 rounded-lg font-medium hover:bg-gray-800 transition-colors duration-300 focus:outline-none focus:ring-2 focus:ring-gray-400 focus:ring-offset-2 focus:ring-offset-gray-900">
                            Solo esenciales
                        </button>
                    </div>
                </div>
            </div>
        </div>

        <script>
            // Configuración de cookies
            const COOKIE_CONSENT_KEY = 'cookieConsent';
            const COOKIE_EXPIRY_DAYS = 365;

            // Función para establecer cookies
            function setCookie(name, value, days) {
                const date = new Date();
                date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
                const expires = `expires=${date.toUTCString()}`;
                document.cookie = `${name}=${value};${expires};path=/;SameSite=Lax`;
            }

            // Función para obtener el valor de una cookie
            function getCookie(name) {
                const value = `; ${document.cookie}`;
                const parts = value.split(`; ${name}=`);
                if (parts.length === 2) return parts.pop().split(';').shift();
                return null;
            }

            // Función para aceptar todas las cookies
            function acceptCookies() {
                setCookie(COOKIE_CONSENT_KEY, 'accepted', COOKIE_EXPIRY_DAYS);
                localStorage.setItem(COOKIE_CONSENT_KEY, 'accepted');
                hideCookieBanner();
                // Aquí puedes añadir el código para activar servicios de análisis, etc.
            }

            // Función para rechazar cookies no esenciales
            function rejectCookies() {
                setCookie(COOKIE_CONSENT_KEY, 'rejected', COOKIE_EXPIRY_DAYS);
                localStorage.setItem(COOKIE_CONSENT_KEY, 'rejected');
                hideCookieBanner();
                // Aquí puedes añadir el código para desactivar servicios no esenciales
            }

            // Función para mostrar el banner
            function showCookieBanner() {
                const banner = document.getElementById('cookieBanner');
                banner.classList.remove('translate-y-full');
                banner.classList.add('translate-y-0');
            }

            // Función para ocultar el banner
            function hideCookieBanner() {
                const banner = document.getElementById('cookieBanner');
                banner.classList.remove('translate-y-0');
                banner.classList.add('translate-y-full');
            }

            // Verificar el consentimiento al cargar la página
            window.addEventListener('load', () => {
                const cookieConsent = getCookie(COOKIE_CONSENT_KEY) || localStorage.getItem(COOKIE_CONSENT_KEY);
                if (!cookieConsent) {
                    // Pequeño retraso para mostrar el banner después de que la página cargue
                    setTimeout(showCookieBanner, 500);
                }
            });
        </script>




    </body>

    </html>