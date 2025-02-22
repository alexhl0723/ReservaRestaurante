<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Terminos - Naútica Plus</title>
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
                    Términos y Condiciones
                </h1>
                <p class="text-gray-400 text-sm sm:text-base">
                    Lea detenidamente nuestros términos de servicio
                </p>
            </div>

            <div class="space-y-8">
                <!-- Sección 1: Reservaciones -->
                <section class="transition-all duration-300 hover:bg-gray-700/30 p-4 rounded-xl">
                    <h2 class="text-xl sm:text-2xl font-bold text-yellow-500 mb-4">
                        1. Reservaciones
                    </h2>
                    <div class="text-gray-300 space-y-4">
                        <p class="leading-relaxed">
                            Las reservaciones están sujetas a disponibilidad y se confirmarán mediante correo
                            electrónico o llamada telefónica.
                        </p>
                        <ul class="space-y-2 ml-6">
                            <li class="flex items-center gap-2">
                                <span class="text-yellow-500">•</span>
                                Se requiere un número de contacto válido para todas las reservaciones
                            </li>
                            <li class="flex items-center gap-2">
                                <span class="text-yellow-500">•</span>
                                Para grupos de más de 8 personas, se requiere un depósito del 30%
                            </li>
                            <li class="flex items-center gap-2">
                                <span class="text-yellow-500">•</span>
                                Las cancelaciones deben realizarse con al menos 24 horas de anticipación
                            </li>
                        </ul>
                    </div>
                </section>

                <!-- Sección 2: Política de Cancelación -->
                <section class="transition-all duration-300 hover:bg-gray-700/30 p-4 rounded-xl">
                    <h2 class="text-xl sm:text-2xl font-bold text-yellow-500 mb-4">
                        2. Política de Cancelación
                    </h2>
                    <p class="text-gray-300 leading-relaxed">
                        Las cancelaciones realizadas con menos de 24 horas de anticipación o la no presentación
                        pueden resultar en cargos. El depósito para grupos grandes no es reembolsable si se
                        cancela con menos de 48 horas de anticipación.
                    </p>
                </section>

                <!-- Sección 3: Servicio y Precios -->
                <section class="transition-all duration-300 hover:bg-gray-700/30 p-4 rounded-xl">
                    <h2 class="text-xl sm:text-2xl font-bold text-yellow-500 mb-4">
                        3. Servicio y Precios
                    </h2>
                    <div class="text-gray-300 space-y-4">
                        <p class="leading-relaxed">
                            Nos reservamos el derecho de:
                        </p>
                        <ul class="space-y-2 ml-6">
                            <li class="flex items-center gap-2">
                                <span class="text-yellow-500">•</span>
                                Modificar los precios y el menú sin previo aviso
                            </li>
                            <li class="flex items-center gap-2">
                                <span class="text-yellow-500">•</span>
                                Rechazar el servicio a cualquier cliente que incumpla nuestras políticas
                            </li>
                            <li class="flex items-center gap-2">
                                <span class="text-yellow-500">•</span>
                                Aplicar un cargo por servicio del 10% para grupos de 6 o más personas
                            </li>
                        </ul>
                    </div>
                </section>

                <!-- Sección 4: Comportamiento y Vestimenta -->
                <section class="transition-all duration-300 hover:bg-gray-700/30 p-4 rounded-xl">
                    <h2 class="text-xl sm:text-2xl font-bold text-yellow-500 mb-4">
                        4. Comportamiento y Vestimenta
                    </h2>
                    <p class="text-gray-300 leading-relaxed">
                        Naútica Plus se reserva el derecho de admisión. Se requiere vestimenta formal-casual. No
                        se permite el ingreso con ropa deportiva o playera. El comportamiento inadecuado o que
                        moleste a otros comensales puede resultar en la solicitud de abandono del
                        establecimiento.
                    </p>
                </section>

                <!-- Sección 5: Alergias e Intolerancias -->
                <section class="transition-all duration-300 hover:bg-gray-700/30 p-4 rounded-xl">
                    <h2 class="text-xl sm:text-2xl font-bold text-yellow-500 mb-4">
                        5. Alergias e Intolerancias
                    </h2>
                    <p class="text-gray-300 leading-relaxed">
                        Es responsabilidad del cliente informar sobre cualquier alergia o intolerancia
                        alimentaria al realizar la reserva. Aunque tomamos precauciones, no podemos garantizar
                        la ausencia total de alérgenos en nuestros platos.
                    </p>
                </section>

                <!-- Sección 6: Propiedad Intelectual -->
                <section class="transition-all duration-300 hover:bg-gray-700/30 p-4 rounded-xl">
                    <h2 class="text-xl sm:text-2xl font-bold text-yellow-500 mb-4">
                        6. Propiedad Intelectual
                    </h2>
                    <p class="text-gray-300 leading-relaxed">
                        Todas las imágenes, logotipos y contenido del restaurante son propiedad de Naútica Plus.
                        No se permite su uso sin autorización expresa.
                    </p>
                </section>

                <!-- Sección 7: Contacto -->
                <section class="transition-all duration-300 hover:bg-gray-700/30 p-4 rounded-xl">
                    <h2 class="text-xl sm:text-2xl font-bold text-yellow-500 mb-4">
                        7. Contacto
                    </h2>
                    <p class="text-gray-300 mb-4 leading-relaxed">
                        Para consultas sobre estos términos y condiciones:
                    </p>
                    <div class="bg-yellow-500/10 rounded-xl p-6 border border-yellow-500/30">
                        <div class="space-y-4">
                            <a href="mailto:info@nauticaplus.com" 
                               class="flex items-center gap-3 text-yellow-500 hover:text-yellow-400 transition-colors">
                                <span class="text-lg">📧</span>
                                info@nauticaplus.com
                            </a>
                            <a href="tel:+123456789" 
                               class="flex items-center gap-3 text-yellow-500 hover:text-yellow-400 transition-colors">
                                <span class="text-lg">📞</span>
                                (123) 456-7890
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