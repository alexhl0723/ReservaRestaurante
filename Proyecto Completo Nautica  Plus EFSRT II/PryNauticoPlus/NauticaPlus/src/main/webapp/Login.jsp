<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Iniciar Sesión - Naútica Plus</title>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/js/all.min.js"></script>
        <script src="https://unpkg.com/@tailwindcss/browser@4"></script>
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
    
  
    

    <body
        class="min-h-screen font-[Cinzel_Variable] bg-gradient-to-br from-gray-800 via-gray-900 to-gray-800 flex items-center justify-center p-4 md:p-6 lg:p-8">
        <!-- Elegant Background Overlay -->
        <div class="absolute inset-0 bg-yellow-500 opacity-[0.02] pointer-events-none"></div>

        <!-- Main Container -->
        <div class="w-full max-w-md z-10 relative">
            <!-- Logo Section -->
            <div class="text-center mb-12">
                <h1 class="text-4xl font-bold text-yellow-500 tracking-wider mb-2">NAÚTICA PLUS</h1>
                <p class="text-gray-400 text-lg">Restaurante Náutico</p>
            </div>

            <!-- Login Card -->
            <div class="bg-gray-800/80 backdrop-blur-xl rounded-3xl shadow-2xl border border-yellow-500/20 p-10">
                <h2 class="text-3xl font-bold text-center text-yellow-500 mb-10">
                    Iniciar Sesión
                </h2>

                <form action="LoginServlet" method="post" class="space-y-7">
                    <input type="hidden" name="type" value="login" />

                    <!-- Email Input -->
                    <div class="relative group">
                        <div class="absolute inset-y-0 left-0 pl-4 flex items-center pointer-events-none">
                            <i
                                class="fas fa-envelope text-yellow-500/70 group-focus-within:text-yellow-500 transition-colors duration-300"></i>
                        </div>
                        <input type="email" name="txtEmail" autocomplete="off" class="w-full py-4 pl-12 pr-4 text-white bg-gray-700/50 border-2 border-yellow-500/20 
                                  rounded-2xl focus:outline-none focus:border-yellow-500 
                                  focus:ring-2 focus:ring-yellow-500/30 
                                  transition duration-300 
                                  placeholder-gray-500" placeholder="Correo electrónico" required />
                    </div>

                    <!-- Password Input -->
                    <div class="relative group">
                        <div class="absolute inset-y-0 left-0 pl-4 flex items-center pointer-events-none">
                            <i
                                class="fas fa-lock text-yellow-500/70 group-focus-within:text-yellow-500 transition-colors duration-300"></i>
                        </div>
                        <input type="password" name="txtPassword" autocomplete="off" class="w-full py-4 pl-12 pr-12 text-white bg-gray-700/50 border-2 border-yellow-500/20 
                                  rounded-2xl focus:outline-none focus:border-yellow-500 
                                  focus:ring-2 focus:ring-yellow-500/30 
                                  transition duration-300 
                                  placeholder-gray-500" placeholder="Contraseña" required />
                        <button type="button" onclick="togglePassword()"
                            class="absolute inset-y-0 right-0 pr-4 flex items-center">
                            <i id="passwordToggle"
                                class="fas fa-eye text-yellow-500/50 hover:text-yellow-500 transition"></i>
                        </button>
                    </div>

                    <!-- Login Button -->
                    <button type="submit" class="w-full bg-yellow-500 text-gray-900 font-semibold 
                               rounded-2xl py-4 text-center 
                               hover:bg-yellow-600
                               focus:outline-none focus:ring-2 focus:ring-yellow-500/50 
                               transition-all duration-300 
                               transform hover:-translate-y-1 
                               active:scale-95 
                               shadow-lg hover:shadow-xl">
                        <i class="fas fa-sign-in-alt mr-2"></i>
                        Iniciar Sesión
                    </button>
                </form>

                <!-- Error Message -->
                <% String mensaje=(String) request.getAttribute("mensaje"); if (mensaje !=null) { %>
                    <div class="mt-6 p-4 bg-red-900/60 border-l-4 border-red-500 rounded-r-lg 
                        animate-pulse text-center">
                        <div class="flex items-center justify-center">
                            <i class="fas fa-exclamation-circle text-red-400 mr-2"></i>
                            <span class="text-red-200">
                                <%= mensaje %>
                            </span>
                        </div>
                    </div>
                    <% } %>
            </div>

            <!-- Footer -->
            <div class="text-center mt-6 text-gray-500 text-sm tracking-wide">
                © 2025 Naútica Plus Restaurante. Todos los derechos reservados.
            </div>
        </div>

        <script>
            function togglePassword() {
                const password = document.querySelector('input[name="txtPassword"]');
                const icon = document.getElementById('passwordToggle');

                if (password.type === "password") {
                    password.type = "text";
                    icon.classList.replace('fa-eye', 'fa-eye-slash');
                } else {
                    password.type = "password";
                    icon.classList.replace('fa-eye-slash', 'fa-eye');
                }
            }
        </script>
    </body>

    </html>