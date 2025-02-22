<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="entidades.Usuario" %>
    <!DOCTYPE html>
    <html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Header</title>
        <script src="https://unpkg.com/@tailwindcss/browser@4"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">


    </head>

    <style>
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


        /* Estilos adicionales para el menú desktop y efectos modernos */
        .desktop-link .nav-text {
            position: relative;
            padding-bottom: 4px;
        }

        .desktop-link .nav-text::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            height: 2px;
            background-color: #d4af37;
            transform: scaleX(0);
            transition: transform 0.3s ease;
            transform-origin: right;
        }

        .desktop-link:hover .nav-text::after {
            transform: scaleX(1);
            transform-origin: left;
        }
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


        @keyframes slow-zoom {
            from {
                transform: scale(1);
            }

            to {
                transform: scale(1.1);
            }
        }

        .animate-slow-zoom {
            animation: slow-zoom 20s linear infinite alternate;
        }

        @keyframes fade-in {
            from {
                opacity: 0;
                transform: translateY(20px);
            }

            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .animate-fade-in {
            animation: fade-in 0.8s ease forwards;
        }

        .animate-fade-in-delay-1 {
            animation: fade-in 0.8s ease forwards 0.3s;
        }

        .animate-fade-in-delay-2 {
            animation: fade-in 0.8s ease forwards 0.6s;
        }


        /* Estilos elegantes adicionales */
        .mobile-link {
            position: relative;
            overflow: hidden;
        }

        .mobile-link::after {
            content: '';
            position: absolute;
            bottom: -2px;
            left: 0;
            width: 100%;
            height: 1px;
            background-color: #8b7355;
            transform: translateX(-100%);
            transition: transform 0.3s ease;
        }

        .mobile-link:hover::after {
            transform: translateX(0);
        }

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(20px);
            }

            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .animate-fadeInUp {
            animation: fadeInUp 0.6s ease forwards;
        }
    </style>

    <body class="font-[Cinzel_Variable]">

        <% HttpSession sesion=request.getSession(false); boolean usuarioLogueado=(sesion !=null &&
            sesion.getAttribute("UsuarioActual") !=null); %>

            <!-- Header Elegante -->
            <header class="fixed w-full z-50 transition-all duration-300" id="header">
                <nav class="container mx-auto px-4 py-4">
                    <div class="flex justify-between items-center">
                        <!-- Logo -->
                        <a href="index.jsp" class="flex items-center space-x-2 group">
                            <i
                                class="fas fa-utensils text-yellow-500 text-2xl transform group-hover:rotate-12 transition-transform duration-300"></i>
                            <span class="text-xl font-semibold text-yellow-500 tracking-wider">Naútica Plus</span>
                        </a>

                        <!-- Desktop Menu -->
                        <div class="hidden md:flex items-center space-x-8">

                            <a href="Nosotros.jsp"
                                class="desktop-link text-yellow-500 hover:text-[#8b7355] transition-colors duration-300">
                                <span class="relative py-2">
                                    <span class="nav-text">Nosotros</span>
                                </span>
                            </a>

                            <a href="Locales.jsp"
                                class="desktop-link text-yellow-500 hover:text-[#8b7355] transition-colors duration-300">
                                <span class="relative py-2">
                                    <span class="nav-text">Locales</span>
                                </span>
                            </a>

                            <a href="Menu.jsp"
                                class="desktop-link text-yellow-500 hover:text-[#8b7355] transition-colors duration-300">
                                <span class="relative py-2">
                                    <span class="nav-text">Menú</span>
                                </span>
                            </a>
                            <a href="Reserva.jsp"
                                class="desktop-link text-yellow-500 hover:text-[#8b7355] transition-colors duration-300">
                                <span class="relative py-2">
                                    <span class="nav-text">Reservas</span>
                                </span>
                            </a>

                            <a href="Eventos.jsp"
                                class="desktop-link text-yellow-500 hover:text-[#8b7355] transition-colors duration-300">
                                <span class="relative py-2">
                                    <span class="nav-text">Eventos</span>
                                </span>
                            </a>

                            <a href="Galeria.jsp"
                                class="desktop-link text-yellow-500 hover:text-[#8b7355] transition-colors duration-300">
                                <span class="relative py-2">
                                    <span class="nav-text">Galería</span>
                                </span>
                            </a>

                            <a href="Contacto.jsp"
                                class="desktop-link text-yellow-500 hover:text-[#8b7355] transition-colors duration-300">
                                <span class="relative py-2">
                                    <span class="nav-text">Contacto</span>
                                </span>
                            </a>
<% if (usuarioLogueado) { %>
    <a href="UsuarioCuenta" 
       class="inline-block px-6 py-2 bg-yellow-500 text-[#1a1a1a] font-semibold rounded-full hover:bg-yellow-500 transition-all duration-300 transform hover:scale-105">
        Mis reservas
    </a>
    
    <%-- Verificar si el usuario es admin --%>
    <% 
    Usuario usuarioActual = (Usuario) session.getAttribute("UsuarioActual");
    if (usuarioActual != null && usuarioActual.getRol().equalsIgnoreCase("admin")) { 
    %>
        <a href="AdminCuenta" 
           class="inline-block px-6 py-2 bg-yellow-500 text-[#1a1a1a] font-semibold rounded-full hover:bg-yellow-500 transition-all duration-300 transform hover:scale-105">
            Panel
        </a>
    <% } %>
<% } %>

<% if (!usuarioLogueado) { %>
    <a href="Login.jsp" 
       class="inline-block px-6 py-2 bg-yellow-500 text-[#1a1a1a] font-semibold rounded-full hover:bg-yellow-500 transition-all duration-300 transform hover:scale-105">
        Iniciar Sesión
    </a>

    <a href="Register.jsp" 
       class="inline-block px-6 py-2 bg-yellow-500 text-[#1a1a1a] font-semibold rounded-full hover:bg-yellow-500 transition-all duration-300 transform hover:scale-105">
        Registrarse
    </a>
<% } %>

<% if (usuarioLogueado) { %>
    <form action="logout" method="get" class="inline">
        <button type="submit"
                class="inline-block px-6 py-2 bg-yellow-500 text-[#1a1a1a] font-semibold rounded-full hover:bg-yellow-500 transition-all duration-300 transform hover:scale-105">
            Cerrar Sesión
        </button>
    </form>
<% } %>


                        </div>

                        <!-- Botón hamburguesa elegante -->
                        <button id="menu-toggle"
                            class="relative w-10 h-10 text-yellow-500 focus:outline-none md:hidden">
                            <div class="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 w-6 h-5">
                                <span
                                    class="absolute top-0 left-0 w-full h-0.5 bg-yellow-500 rounded-full transition-transform duration-300 transform origin-left hamburger-line-1"></span>
                                <span
                                    class="absolute top-1/2 left-0 w-full h-0.5 bg-yellow-500 rounded-full -translate-y-1/2 transition-opacity duration-300 hamburger-line-2"></span>
                                <span
                                    class="absolute bottom-0 left-0 w-full h-0.5 bg-yellow-500 rounded-full transition-transform duration-300 transform origin-left hamburger-line-3"></span>
                            </div>
                        </button>
                    </div>
                </nav>

                <!-- Menú móvil elegante -->
                <div id="mobile-menu"
                    class="fixed inset-0 bg-gray-900/98 transform translate-x-full transition-transform duration-500 ease-in-out md:hidden">
                    <div class="h-full flex flex-col">
                        <!-- Header del menú móvil -->
                        <div class="flex justify-between items-center p-6 border-b border-yellow-500/20">
                            <span class="text-yellow-500 text-xl font-semibold">Menú</span>
                            <button id="close-menu"
                                class="p-2 text-yellow-500 hover:text-[#8b7355] transition-colors duration-300">
                                <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                        d="M6 18L18 6M6 6l12 12"></path>
                                </svg>
                            </button>
                        </div>

                        <!-- Enlaces del menú móvil -->
                        <nav class="flex-1 flex flex-col justify-center bg-gradient-to-b from-gray-900 to-gray-800">
                            <div class="space-y-8 p-8">
                                <a href="Nosotros.jsp">
                                    <span class="flex items-center space-x-4 group">
                                        <i class="fas fa-home w-8 text-yellow-500 group-hover:text-[#8b7355]"></i>
                                        <span
                                            class="text-yellow-500 text-2xl group-hover:text-[#8b7355] transition-all duration-300">Nosotros</span>
                                    </span>
                                </a>

                                <a href="Locales.jsp">
                                    <span class="flex items-center space-x-4 group">
                                        <i
                                            class="fas fa-location-dot w-8 text-yellow-500 group-hover:text-[#8b7355]"></i>
                                        <span
                                            class="text-yellow-500 text-2xl group-hover:text-[#8b7355] transition-all duration-300">Locales</span>
                                    </span>
                                </a>

                                <a href="Menu.jsp">
                                    <span class="flex items-center space-x-4 group">
                                        <i class="fas fa-utensils w-8 text-yellow-500 group-hover:text-[#8b7355]"></i>
                                        <span
                                            class="text-yellow-500 text-2xl group-hover:text-[#8b7355] transition-all duration-300">Menú</span>
                                    </span>
                                </a>
                                <a href="Reserva.jsp">
                                    <span class="flex items-center space-x-4 group">
                                        <i
                                            class="fas fa-calendar-alt w-8 text-yellow-500 group-hover:text-[#8b7355]"></i>
                                        <span
                                            class="text-yellow-500 text-2xl group-hover:text-[#8b7355] transition-all duration-300">Reservas</span>
                                    </span>
                                </a>

                                <a href="Eventos.jsp">
                                    <span class="flex items-center space-x-4 group">
                                        <i class="fas fa-gift w-8 text-yellow-500 group-hover:text-[#8b7355]"></i>
                                        <span
                                            class="text-yellow-500 text-2xl group-hover:text-[#8b7355] transition-all duration-300">Eventos</span>
                                    </span>
                                </a>

                                <a href="Galeria.jsp">
                                    <span class="flex items-center space-x-4 group">
                                        <i class="fas fa-images w-8 text-yellow-500 group-hover:text-[#8b7355]"></i>
                                        <span
                                            class="text-yellow-500 text-2xl group-hover:text-[#8b7355] transition-all duration-300">Galería</span>
                                    </span>
                                </a>

                                <a href="Contacto.jsp">
                                    <span class="flex items-center space-x-4 group">
                                        <i class="fas fa-envelope w-8 text-yellow-500 group-hover:text-[#8b7355]"></i>
                                        <span
                                            class="text-yellow-500 text-2xl group-hover:text-[#8b7355] transition-all duration-300">Contacto</span>
                                    </span>
                                </a>
                            </div>
                        </nav>

                        <!-- Footer del menú móvil -->
                        <div class="p-6 border-t border-yellow-500/20 bg-gray-800/98 text-center">

                           <% if (usuarioLogueado) { %>
    <a href="UsuarioCuenta" 
       class="inline-block px-6 py-2 bg-yellow-500 text-[#1a1a1a] font-semibold rounded-full hover:bg-yellow-500 transition-all duration-300 transform hover:scale-105">
        Mis reservas
    </a>
    
    <%-- Verificar si el usuario es admin --%>
    <% 
    Usuario usuarioActual = (Usuario) session.getAttribute("UsuarioActual");
    if (usuarioActual != null && usuarioActual.getRol().equalsIgnoreCase("admin")) { 
    %>
        <a href="AdminCuenta" 
           class="inline-block px-6 py-2 bg-yellow-500 text-[#1a1a1a] font-semibold rounded-full hover:bg-yellow-500 transition-all duration-300 transform hover:scale-105">
            Panel
        </a>
    <% } %>
<% } %>

<% if (!usuarioLogueado) { %>
    <a href="Login.jsp" 
       class="inline-block px-6 py-2 bg-yellow-500 text-[#1a1a1a] font-semibold rounded-full hover:bg-yellow-500 transition-all duration-300 transform hover:scale-105">
        Iniciar Sesión
    </a>

    <a href="Register.jsp" 
       class="inline-block px-6 py-2 bg-yellow-500 text-[#1a1a1a] font-semibold rounded-full hover:bg-yellow-500 transition-all duration-300 transform hover:scale-105">
        Registrarse
    </a>
<% } %>

<br>
<br>

<% if (usuarioLogueado) { %>
    <form action="logout" method="get" class="inline">
        <button type="submit"
                class="inline-block px-6 py-2 bg-yellow-500 text-[#1a1a1a] font-semibold rounded-full hover:bg-yellow-500 transition-all duration-300 transform hover:scale-105">
            Cerrar Sesión
        </button>
    </form>
<% } %>
                            
                            <br>
<br>
                            <div class="flex justify-center space-x-8">
                                <a href="#" class="text-yellow-500 hover:text-[#8b7355] transition-colors duration-300">
                                    <i class="fab fa-facebook text-xl"></i>
                                </a>
                                <a href="#" class="text-yellow-500 hover:text-[#8b7355] transition-colors duration-300">
                                    <i class="fab fa-instagram text-xl"></i>
                                </a>
                                <a href="#" class="text-yellow-500 hover:text-[#8b7355] transition-colors duration-300">
                                    <i class="fab fa-twitter text-xl"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </header>

            <script>

                /**
                 * 
                 */

                document.addEventListener('DOMContentLoaded', function () {
                    const menuToggle = document.getElementById('menu-toggle');
                    const closeMenu = document.getElementById('close-menu');
                    const mobileMenu = document.getElementById('mobile-menu');
                    const mobileLinks = document.querySelectorAll('.mobile-link');
                    let isMenuOpen = false;

                    function toggleMenu() {
                        isMenuOpen = !isMenuOpen;

                        if (isMenuOpen) {
                            mobileMenu.classList.remove('translate-x-full');
                            document.body.style.overflow = 'hidden';

                            // Animar enlaces
                            mobileLinks.forEach((link, index) => {
                                link.style.animation = `fadeInUp 0.6s ease forwards ${index * 0.1}s`;
                            });
                        } else {
                            mobileMenu.classList.add('translate-x-full');
                            document.body.style.overflow = '';

                            // Resetear animaciones
                            mobileLinks.forEach(link => {
                                link.style.animation = 'none';
                            });
                        }
                    }

                    menuToggle.addEventListener('click', toggleMenu);
                    closeMenu.addEventListener('click', toggleMenu);

                    // Cerrar menú al hacer click en enlaces
                    mobileLinks.forEach(link => {
                        link.addEventListener('click', toggleMenu);
                    });

                    // Cerrar con ESC
                    document.addEventListener('keydown', (e) => {
                        if (e.key === 'Escape' && isMenuOpen) {
                            toggleMenu();
                        }
                    });


                    // Nuevo código para el header transparente
                    const header = document.getElementById('header');

                    window.addEventListener('scroll', () => {
                        if (window.scrollY > 20) {
                            header.classList.add('bg-gray-900/25', 'backdrop-blur-sm');
                        } else {
                            header.classList.remove('bg-gray-900/25', 'backdrop-blur-sm');
                        }
                    });
                });




            </script>

    </body>

    </html>