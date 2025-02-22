<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Politicas - Naútica Plus</title>
        <script src="https://unpkg.com/@tailwindcss/browser@4"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <link rel="stylesheet" href="css/styles.css">
    </head>

    <body class="font-[Cinzel_Variable] bg-gradient-to-br from-gray-800 via-gray-900 to-gray-800">

        <jsp:include page="header.jsp" />
<!-- Container principal con gradiente de fondo -->
<div class="pt-32 pb-16 min-h-screen">
    <div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
        <!-- Card principal con mejor contraste y efectos -->
        <div class="bg-gray-800/95 backdrop-blur-lg rounded-2xl shadow-2xl p-6 sm:p-8 lg:p-10 border border-yellow-500/30 hover:border-yellow-500/50 transition-all duration-300">
            <!-- Encabezado con mejor jerarquía visual -->
            <div class="text-center mb-10">
                <h1 class="text-3xl sm:text-4xl font-bold text-yellow-500 mb-4">
                    Política de Privacidad
                </h1>
                <p class="text-gray-400 text-sm sm:text-base">
                    Su privacidad es nuestra prioridad en Naútica Plus
                </p>
            </div>

            <div class="space-y-8">
                <!-- Sección 1: Información -->
                <section class="transition-all duration-300 hover:bg-gray-700/30 p-4 rounded-xl">
                    <h2 class="text-xl sm:text-2xl font-bold text-yellow-500 mb-4">
                        1. Información que Recopilamos
                    </h2>
                    <p class="text-gray-300 mb-4 leading-relaxed">
                        En Naútica Plus, recopilamos la siguiente información cuando realiza una reserva o utiliza nuestros servicios:
                    </p>
                    <ul class="space-y-2 text-gray-300 ml-6">
                        <li class="flex items-center gap-2">
                            <span class="text-yellow-500">•</span>
                            Nombre completo y datos de contacto
                        </li>
                        <li class="flex items-center gap-2">
                            <span class="text-yellow-500">•</span>
                            Información de reservas y preferencias gastronómicas
                        </li>
                        <li class="flex items-center gap-2">
                            <span class="text-yellow-500">•</span>
                            Detalles de pago (procesados de forma segura)
                        </li>
                        <li class="flex items-center gap-2">
                            <span class="text-yellow-500">•</span>
                            Comentarios y reseñas sobre nuestro servicio
                        </li>
                    </ul>
                </section>

                <!-- Sección 2: Uso -->
                <section class="transition-all duration-300 hover:bg-gray-700/30 p-4 rounded-xl">
                    <h2 class="text-xl sm:text-2xl font-bold text-yellow-500 mb-4">
                        2. Uso de la Información
                    </h2>
                    <p class="text-gray-300 mb-4 leading-relaxed">
                        Utilizamos su información personal para:
                    </p>
                    <ul class="space-y-2 text-gray-300 ml-6">
                        <li class="flex items-center gap-2">
                            <span class="text-yellow-500">•</span>
                            Gestionar sus reservas y mejorar su experiencia gastronómica
                        </li>
                        <li class="flex items-center gap-2">
                            <span class="text-yellow-500">•</span>
                            Enviar confirmaciones y recordatorios de reserva
                        </li>
                        <li class="flex items-center gap-2">
                            <span class="text-yellow-500">•</span>
                            Personalizar nuestros servicios según sus preferencias
                        </li>
                        <li class="flex items-center gap-2">
                            <span class="text-yellow-500">•</span>
                            Comunicar promociones y eventos especiales
                        </li>
                    </ul>
                </section>

                <!-- Sección 3: Protección -->
                <section class="transition-all duration-300 hover:bg-gray-700/30 p-4 rounded-xl">
                    <h2 class="text-xl sm:text-2xl font-bold text-yellow-500 mb-4">
                        3. Protección de Datos
                    </h2>
                    <p class="text-gray-300 leading-relaxed">
                        Implementamos medidas de seguridad técnicas y organizativas para proteger su información personal. 
                        Todos los datos se almacenan de forma segura y se procesan de acuerdo con las leyes de protección 
                        de datos aplicables.
                    </p>
                </section>

                <!-- Sección 4: Derechos -->
                <section class="transition-all duration-300 hover:bg-gray-700/30 p-4 rounded-xl">
                    <h2 class="text-xl sm:text-2xl font-bold text-yellow-500 mb-4">
                        4. Sus Derechos
                    </h2>
                    <p class="text-gray-300 mb-4 leading-relaxed">
                        Usted tiene derecho a:
                    </p>
                    <ul class="space-y-2 text-gray-300 ml-6">
                        <li class="flex items-center gap-2">
                            <span class="text-yellow-500">•</span>
                            Acceder a sus datos personales
                        </li>
                        <li class="flex items-center gap-2">
                            <span class="text-yellow-500">•</span>
                            Rectificar información inexacta
                        </li>
                        <li class="flex items-center gap-2">
                            <span class="text-yellow-500">•</span>
                            Solicitar la eliminación de sus datos
                        </li>
                        <li class="flex items-center gap-2">
                            <span class="text-yellow-500">•</span>
                            Oponerse al procesamiento de sus datos
                        </li>
                    </ul>
                </section>

                <!-- Sección 5: Contacto -->
                <section class="transition-all duration-300 hover:bg-gray-700/30 p-4 rounded-xl">
                    <h2 class="text-xl sm:text-2xl font-bold text-yellow-500 mb-4">
                        5. Contacto
                    </h2>
                    <p class="text-gray-300 mb-4 leading-relaxed">
                        Para cualquier consulta sobre nuestra política de privacidad, puede contactarnos en:
                    </p>
                    <div class="bg-yellow-500/10 rounded-xl p-6 border border-yellow-500/30">
                        <div class="space-y-4">
                            <a href="mailto:alexrodrigoherbas07@gmail.com" 
                               class="flex items-center gap-3 text-yellow-500 hover:text-yellow-400 transition-colors">
                                <span class="text-lg">📧</span>
                                alexrodrigoherbas07@gmail.com
                            </a>
                            <a href="tel:983589679" 
                               class="flex items-center gap-3 text-yellow-500 hover:text-yellow-400 transition-colors">
                                <span class="text-lg">📞</span>
                                983589679
                            </a>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>
</div>

        <jsp:include page="footer.jsp" />

        <script src="js/script.js"></script>

    </body>

    </html>