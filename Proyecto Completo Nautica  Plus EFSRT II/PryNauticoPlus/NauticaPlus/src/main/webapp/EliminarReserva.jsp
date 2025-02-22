<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reserva Eliminada</title>
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

<body class="font-[Cinzel_Variable] bg-gradient-to-br from-gray-800 via-gray-900 to-gray-800 flex items-center justify-center min-h-screen p-4">
    <div class="bg-white shadow-xl rounded-3xl p-8 text-center max-w-md w-full transform transition-all duration-500 hover:scale-105">
        <div class="mb-6">
            <div class="w-20 h-20 bg-green-100 rounded-full mx-auto flex items-center justify-center mb-4">
                <i class="fas fa-check text-4xl text-green-500"></i>
            </div>
            <h2 class="text-3xl font-bold text-gray-800 mb-2">¡Reserva Eliminada!</h2>
            <div class="h-1 w-20 bg-green-500 mx-auto rounded-full"></div>
        </div>

        <div class="space-y-4">
            <p class="text-gray-600">
                Tu reserva ha sido eliminada exitosamente. Gracias por confiar en nosotros.
            </p>
            <p class="text-gray-600">
                Recuerda que para cualquier consulta o nueva reserva, puedes contactarnos:
            </p>
            
            <div class="flex justify-center space-x-4 mt-4">
                <div class="text-gray-600">
                    <i class="fas fa-phone mb-2"></i>
                    <p class="text-sm">+51 999 567 565</p>
                </div>
                <div class="text-gray-600">
                    <i class="fas fa-envelope mb-2"></i>
                    <p class="text-sm">info@nauticaplus.com</p>
                </div>
            </div>
        </div>

        <div class="mt-8 space-y-4">
            <a href="PanelUsuario.jsp" class="block w-full bg-yellow-500 text-black px-6 py-3 rounded-lg hover:bg-yellow-600 transition duration-300 font-semibold">
                Volver a mi cuenta
            </a>
            <a href="index.jsp" class="block w-full text-gray-600 hover:text-gray-800 transition duration-300">
                Ir al inicio
            </a>
        </div>
    </div>
</body>
</html>