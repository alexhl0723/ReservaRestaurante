<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error - Naútica Plus</title>
    <script src="https://unpkg.com/@tailwindcss/browser@4"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/js/all.min.js"></script>
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


<body class="font-[Cinzel_Variable] bg-gradient-to-br from-gray-800 via-gray-900 to-gray-800 min-h-screen flex items-center justify-center p-4">
    <div class="max-w-md w-full bg-white rounded-2xl shadow-xl p-8 transform transition-all duration-300 hover:scale-105">
        <!-- Icono de Error -->
        <div class="mb-6">
            <div class="w-24 h-24 mx-auto bg-red-100 rounded-full flex items-center justify-center">
                <i class="fas fa-exclamation-triangle text-4xl text-red-500"></i>
            </div>
        </div>

        <!-- Contenido -->
        <div class="text-center space-y-4">
            <h1 class="text-3xl font-bold text-red-600">¡Ha ocurrido un error!</h1>
            
            <!-- Línea decorativa -->
            <div class="h-1 w-20 bg-red-500 mx-auto rounded-full"></div>
            
            <p class="text-gray-600 mt-4">
                Lo sentimos, algo salió mal durante el proceso. 
                Por favor, intenta nuevamente o contacta con nuestro equipo de soporte.
            </p>

            <!-- Información de contacto -->
            <div class="flex justify-center space-x-6 mt-6">
                <div class="text-gray-600">
                    <i class="fas fa-envelope mb-2"></i>
                    <p class="text-sm">soporte@nauticaplus.com</p>
                </div>
                <div class="text-gray-600">
                    <i class="fas fa-phone mb-2"></i>
                    <p class="text-sm">+51 999 456 789</p>
                </div>
            </div>

            <!-- Botones -->
            <div class="mt-8 space-y-4">
                <a href="index.jsp" 
                   class="block w-full bg-red-600 text-white px-6 py-3 rounded-lg hover:bg-red-700 transition duration-300 font-semibold">
                    Volver al inicio
                </a>
                <button onclick="window.history.back()" 
                        class="block w-full text-gray-600 hover:text-gray-800 transition duration-300">
                    Volver atrás
                </button>
            </div>

            <!-- Código de error -->
            <div class="mt-6 text-sm text-gray-500">
                Código de error: #ERR<%=System.currentTimeMillis() % 10000%>
            </div>
        </div>
    </div>
</body>
</html>