<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <!DOCTYPE html>
    <html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Registro - Naútica Plus</title>
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
        class="min-h-screen font-[Cinzel_Variable] bg-gradient-to-br from-gray-800 via-gray-900 to-gray-800 flex items-center justify-center p-4 md:p-8">
        <!-- Background Pattern -->
        <div class="absolute inset-0 bg-yellow-500 opacity-[0.02] pointer-events-none"></div>

        <div
            class="w-full max-w-4xl mx-auto bg-gray-800/80 backdrop-blur-xl rounded-3xl shadow-2xl border border-yellow-500/20 overflow-hidden relative">
            <!-- Decorative waves -->
            <div
                class="absolute top-0 left-0 right-0 h-2 bg-gradient-to-r from-yellow-500/20 via-yellow-500/40 to-yellow-500/20">
            </div>

            <!-- Header with improved styling -->
            <div class="bg-gray-900/50 py-10 px-6 text-center border-b border-yellow-500/20 relative overflow-hidden">
                <!-- Nautical Icon Background -->
                <div
                    class="absolute top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2 text-yellow-500/5 text-[150px]">
                    <i class="fas fa-anchor"></i>
                </div>

                <div class="relative z-10">
                    <h1 class="text-4xl font-bold text-yellow-500 tracking-wider mb-3">NAÚTICA PLUS</h1>
                    <p class="text-gray-400 text-lg">Únete a nuestra experiencia gastronómica exclusiva</p>
                </div>
            </div>

            <!-- Registration Form with improved spacing and organization -->
            <form action="RegistrarServlet" method="post" class="p-8 space-y-10">
                <!-- Personal Information Section -->
                <div class="space-y-6">
                    <h3
                        class="text-2xl text-yellow-500 font-semibold flex items-center gap-3 mb-6 pb-2 border-b border-yellow-500/20">
                        <i class="fas fa-user-circle"></i>
                        Información Personal
                    </h3>

                    <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                        <!-- First Name -->
                        <div class="relative group">
                            <div class="absolute inset-y-0 left-0 pl-4 flex items-center pointer-events-none">
                                <i
                                    class="fas fa-user text-yellow-500/70 group-focus-within:text-yellow-500 transition-colors"></i>
                            </div>
                            <input type="text" name="txtNombre" required class="w-full py-4 pl-12 pr-4 text-white bg-gray-700/50 border-2 border-yellow-500/20 
                                      rounded-2xl focus:outline-none focus:border-yellow-500 
                                      focus:ring-2 focus:ring-yellow-500/30 
                                      transition duration-300 
                                      placeholder-gray-500" placeholder="Nombre">
                        </div>

                        <!-- Paternal Surname -->
                        <div class="relative group">
                            <div class="absolute inset-y-0 left-0 pl-4 flex items-center pointer-events-none">
                                <i
                                    class="fas fa-signature text-yellow-500/70 group-focus-within:text-yellow-500 transition-colors"></i>
                            </div>
                            <input type="text" name="txtApellidoPaterno" required class="w-full py-4 pl-12 pr-4 text-white bg-gray-700/50 border-2 border-yellow-500/20 
                                      rounded-2xl focus:outline-none focus:border-yellow-500 
                                      focus:ring-2 focus:ring-yellow-500/30 
                                      transition duration-300 
                                      placeholder-gray-500" placeholder="Apellido Paterno">
                        </div>

                        <!-- Maternal Surname -->
                        <div class="relative group">
                            <div class="absolute inset-y-0 left-0 pl-4 flex items-center pointer-events-none">
                                <i
                                    class="fas fa-signature text-yellow-500/70 group-focus-within:text-yellow-500 transition-colors"></i>
                            </div>
                            <input type="text" name="txtApellidoMaterno" required class="w-full py-4 pl-12 pr-4 text-white bg-gray-700/50 border-2 border-yellow-500/20 
                                      rounded-2xl focus:outline-none focus:border-yellow-500 
                                      focus:ring-2 focus:ring-yellow-500/30 
                                      transition duration-300 
                                      placeholder-gray-500" placeholder="Apellido Materno">
                        </div>

                        <!-- Phone -->
                        <div class="relative group">
                            <div class="absolute inset-y-0 left-0 pl-4 flex items-center pointer-events-none">
                                <i
                                    class="fas fa-phone text-yellow-500/70 group-focus-within:text-yellow-500 transition-colors"></i>
                            </div>
                            <input type="tel" name="txtTelefono" required class="w-full py-4 pl-12 pr-4 text-white bg-gray-700/50 border-2 border-yellow-500/20 
                                      rounded-2xl focus:outline-none focus:border-yellow-500 
                                      focus:ring-2 focus:ring-yellow-500/30 
                                      transition duration-300 
                                      placeholder-gray-500" placeholder="Teléfono">
                        </div>
                    </div>
                </div>

                <!-- Account Information Section -->
                <div class="space-y-6">
                    <h3
                        class="text-2xl text-yellow-500 font-semibold flex items-center gap-3 mb-6 pb-2 border-b border-yellow-500/20">
                        <i class="fas fa-lock"></i>
                        Información de Cuenta
                    </h3>

                    <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                        <!-- Email -->
                        <div class="relative group">
                            <div class="absolute inset-y-0 left-0 pl-4 flex items-center pointer-events-none">
                                <i
                                    class="fas fa-envelope text-yellow-500/70 group-focus-within:text-yellow-500 transition-colors"></i>
                            </div>
                            <input type="email" name="txtEmail" required class="w-full py-4 pl-12 pr-4 text-white bg-gray-700/50 border-2 border-yellow-500/20 
                                      rounded-2xl focus:outline-none focus:border-yellow-500 
                                      focus:ring-2 focus:ring-yellow-500/30 
                                      transition duration-300 
                                      placeholder-gray-500" placeholder="Correo electrónico">
                        </div>

                        <!-- Password with toggle -->
                        <div class="relative group">
                            <div class="absolute inset-y-0 left-0 pl-4 flex items-center pointer-events-none">
                                <i
                                    class="fas fa-lock text-yellow-500/70 group-focus-within:text-yellow-500 transition-colors"></i>
                            </div>
                            <input type="password" id="password" name="txtPassword" required class="w-full py-4 pl-12 pr-12 text-white bg-gray-700/50 border-2 border-yellow-500/20 
                                      rounded-2xl focus:outline-none focus:border-yellow-500 
                                      focus:ring-2 focus:ring-yellow-500/30 
                                      transition duration-300 
                                      placeholder-gray-500" placeholder="Contraseña">
                            <button type="button" onclick="togglePassword()"
                                class="absolute inset-y-0 right-0 pr-4 flex items-center">
                                <i id="passwordToggle"
                                    class="fas fa-eye text-yellow-500/50 hover:text-yellow-500 transition"></i>
                            </button>
                        </div>
                    </div>
                </div>

                <!-- Submit Button with improved styling -->
                <div class="text-center pt-4">
                    <button type="submit" class="bg-yellow-500 text-gray-900 font-semibold 
                               rounded-2xl py-4 px-12
                               hover:bg-yellow-600
                               focus:outline-none focus:ring-2 focus:ring-yellow-500/50 
                               transition-all duration-300 
                               transform hover:-translate-y-1 
                               active:scale-95 
                               shadow-lg hover:shadow-xl 
                               uppercase tracking-wider
                               flex items-center mx-auto space-x-2">
                        <i class="fas fa-user-plus"></i>
                        <span>Registrar Membresía</span>
                    </button>

                    <!-- Login Link -->
                    <p class="mt-6 text-gray-400">
                        ¿Ya tienes una cuenta?
                        <a href="Login.jsp" class="text-yellow-500 hover:text-yellow-400 transition-colors">
                            Iniciar Sesión
                        </a>
                    </p>
                </div>
            </form>
        </div>

        <script>
            function togglePassword() {
                const password = document.getElementById('password');
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