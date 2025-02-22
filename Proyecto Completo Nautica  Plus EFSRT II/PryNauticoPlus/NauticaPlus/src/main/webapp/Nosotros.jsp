<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Nosotros - Naútica Plus</title>
        <script src="https://unpkg.com/@tailwindcss/browser@4"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <link rel="stylesheet" href="css/styles.css">
    </head>

    <body class="font-[Cinzel_Variable] bg-gradient-to-br from-gray-800 via-gray-900 to-gray-800">

        <jsp:include page="header.jsp" />

        <div class="relative min-h-screen bg-cover">

            <!-- Presentación -->

            <section class="py-24 md:py-32 relative overflow-hidden">
                <!-- Decorative Background Elements -->
                <div class="absolute inset-0 z-0"></div>

                <div class="container mx-auto px-4 relative z-10">
                    <div class="flex flex-col md:flex-row items-center justify-between gap-16 max-w-7xl mx-auto">
                        <!-- Content Column -->
                        <div class="w-full md:w-1/2 space-y-8">
                            <!-- Header -->
                            <div class="space-y-4">
                                <span class="text-sm uppercase tracking-[0.3em] text-yellow-500/70">Gastronomía &
                                    Tradición</span>
                                <h1 class="text-5xl md:text-6xl lg:text-7xl font-serif font-bold text-yellow-500">
                                    Bienvenido
                                </h1>
                                <div class="flex items-center gap-4 pt-4">
                                    <div class="h-px w-12 bg-yellow-500/20"></div>
                                    <div class="w-3 h-3 rounded-full bg-yellow-500"></div>
                                </div>
                            </div>

                            <!-- Description -->
                            <div class="space-y-6">
                                <p class="text-gray-300 text-lg md:text-xl font-light leading-relaxed">
                                    En <span class="text-yellow-500 font-medium">Naútica Plus </span>, creemos que la
                                    buena comida es más que solo un plato en la mesa: es una experiencia que une a las
                                    personas.
                                </p>
                                <p class="text-gray-400 leading-relaxed">
                                    Desde nuestros inicios, nos hemos dedicado a ofrecer sabores auténticos,
                                    ingredientes frescos y un ambiente acogedor donde cada visita se convierte en un
                                    momento especial.
                                </p>
                            </div>

                            <!-- Features -->
                            <div class="grid grid-cols-2 gap-6 pt-4">
                                <div class="space-y-2">
                                    <div class="text-yellow-500">
                                        <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none"
                                            viewBox="0 0 24 24" stroke="currentColor">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                d="M5 13l4 4L19 7" />
                                        </svg>
                                    </div>
                                    <p class="text-gray-300 font-medium">Ingredientes Selectos</p>
                                    <p class="text-gray-400 text-sm">De la más alta calidad</p>
                                </div>
                                <div class="space-y-2">
                                    <div class="text-yellow-500">
                                        <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none"
                                            viewBox="0 0 24 24" stroke="currentColor">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                d="M5 13l4 4L19 7" />
                                        </svg>
                                    </div>
                                    <p class="text-gray-300 font-medium">Ambiente Exclusivo</p>
                                    <p class="text-gray-400 text-sm">Diseño contemporáneo</p>
                                </div>
                            </div>
                        </div>

                        <!-- Image Column -->
                        <div class="w-full md:w-1/2">
                            <div class="relative group">
                                <!-- Main Image -->
                                <div class="relative rounded-2xl overflow-hidden">
                                    <img src="./public/local4.webp" alt="Nuestro Local"
                                        class="w-full h-[500px] md:h-[600px] object-cover transform transition-transform duration-700 group-hover:scale-110">
                                    <!-- Overlay -->
                                    <div
                                        class="absolute inset-0 bg-gradient-to-t from-black/60 via-black/20 to-transparent">
                                    </div>
                                </div>

                                <!-- Decorative Elements -->
                                <div
                                    class="absolute -top-4 -right-4 w-24 h-24 border-t-2 border-r-2 border-yellow-500/20 rounded-tr-2xl">
                                </div>
                                <div
                                    class="absolute -bottom-4 -left-4 w-24 h-24 border-b-2 border-l-2 border-yellow-500/20 rounded-bl-2xl">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Proveedor -->
            <section class="py-20 relative overflow-hidden">
                <!-- Decorative Background Elements -->
                <div class="absolute inset-0 z-0"></div>
                <div class="absolute inset-0 bg-[url('./public/pattern.png')] opacity-5 z-1"></div>


                <div class="container mx-auto px-4 relative z-10">
                    <div class="flex flex-col md:flex-row items-center justify-between gap-16 max-w-5xl mx-auto">
                        <!-- Content Column -->
                        <div class="w-full md:w-1/2 space-y-8">
                            <!-- Header -->
                            <div class="space-y-4">
                                <span class="text-sm uppercase tracking-[0.3em] text-[#dacd86]/70">Excelencia
                                    Culinaria</span>
                                <h1 class="text-4xl md:text-5xl font-dancing font-bold text-yellow-500">
                                    Nuestra Calidad - Proveedores
                                </h1>
                                <div class="flex items-center gap-4 pt-4">
                                    <div class="h-px w-12 bg-yellow-500/20"></div>
                                    <div class="w-3 h-3 rounded-full bg-yellow-500"></div>
                                </div>
                            </div>

                            <!-- Description -->
                            <div class="space-y-6">
                                <p class="text-gray-300 text-lg md:text-xl font-light leading-relaxed italic">
                                    Lourdes Cuba, nuestra sub cheff, es la encargada de mantener los más altos
                                    estándares de calidad en la selección de insumos y contactar a los mejores
                                    proveedores.
                                </p>

                                <!-- Added Features -->
                                <div class="grid grid-cols-2 gap-6 pt-4">
                                    <div class="space-y-2">
                                        <div class="text-yellow-500">
                                            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none"
                                                viewBox="0 0 24 24" stroke="currentColor">
                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                    d="M5 13l4 4L19 7" />
                                            </svg>
                                        </div>
                                        <p class="text-[#dacd86] font-medium">Calidad Premium</p>
                                        <p class="text-[#dacd86]/70 text-sm">Insumos seleccionados</p>
                                    </div>
                                    <div class="space-y-2">
                                        <div class="text-yellow-500">
                                            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none"
                                                viewBox="0 0 24 24" stroke="currentColor">
                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                    d="M5 13l4 4L19 7" />
                                            </svg>
                                        </div>
                                        <p class="text-[#dacd86] font-medium">Control Riguroso</p>
                                        <p class="text-[#dacd86]/70 text-sm">Estándares elevados</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Image Column -->
                        <div class="w-full md:w-1/2">
                            <div class="relative group">
                                <!-- Main Image -->
                                <div class="relative rounded-2xl overflow-hidden">
                                    <img src="./public/proveedores_1.webp" alt="Proveedores"
                                        class="w-full h-[400px] md:h-[500px] object-cover transform transition-transform duration-700 group-hover:scale-110">
                                    <!-- Overlay -->
                                    <div
                                        class="absolute inset-0 bg-gradient-to-t from-black/40 via-black/20 to-transparent">
                                    </div>
                                </div>

                                <!-- Decorative Elements -->
                                <div
                                    class="absolute -top-4 -right-4 w-24 h-24 border-t-2 border-r-2 border-[#dacd86]/20 rounded-tr-2xl">
                                </div>
                                <div
                                    class="absolute -bottom-4 -left-4 w-24 h-24 border-b-2 border-l-2 border-[#dacd86]/20 rounded-bl-2xl">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Galeria -->
            <section class="py-12 md:py-16 container mx-auto px-4">
                <div
                    class="max-w-5xl mx-auto bg-gradient-to-br from-gray-800 to-gray-700 shadow-xl rounded-3xl overflow-hidden">
                    <a href="Galeria.jsp" class="block">
                        <div class="relative group rounded-3xl overflow-hidden">
                            <!-- Imagen Principal -->
                            <img src="./public/local2.webp" alt="Galería"
                                class="w-full h-[300px] sm:h-[400px] md:h-[500px] object-cover transform transition-all duration-500 ease-out group-hover:scale-105">

                            <!-- Overlay con Gradiente -->
                            <div class="absolute inset-0 bg-gradient-to-t from-gray-800/60 via-gray-800/90 to-transparent 
                            transition-all duration-500 group-hover:from-gray-800/80">

                                <!-- Contenido Central -->
                                <div
                                    class="absolute inset-0 flex flex-col items-center justify-center gap-3 md:gap-4 p-4 md:p-8">
                                    <!-- Elemento Decorativo Superior -->
                                    <div
                                        class="w-12 md:w-16 h-0.5 bg-yellow-500 transform -translate-y-4 transition-transform duration-500 group-hover:translate-y-0">
                                    </div>

                                    <!-- Título -->
                                    <h2 class="text-2xl sm:text-3xl md:text-4xl text-yellow-500 font-bold text-center 
                                   transform transition-all duration-500 group-hover:scale-105">
                                        Nuestra Galería
                                    </h2>

                                    <!-- Subtítulo -->
                                    <p class="text-gray-100 text-base sm:text-lg md:text-xl opacity-0 transform translate-y-4 
                                  transition-all duration-500 group-hover:opacity-100 group-hover:translate-y-0 
                                  text-center max-w-md md:max-w-xl px-4">
                                        Descubre la experiencia visual a través de nuestros mejores momentos
                                    </p>

                                    <!-- Elemento Decorativo Inferior -->
                                    <div
                                        class="w-12 md:w-16 h-0.5 bg-yellow-500 transform translate-y-4 transition-transform duration-500 group-hover:translate-y-0">
                                    </div>
                                </div>

                                <!-- Esquinas Decorativas -->
                                <div class="absolute top-4 right-4 md:top-8 md:right-8 w-12 h-12 md:w-16 md:h-16 border-t-2 border-r-2 border-yellow-500/20 rounded-tr-2xl 
                                opacity-0 transform translate-x-4 transition-all duration-500 
                                group-hover:opacity-100 group-hover:translate-x-0"></div>
                                <div class="absolute bottom-4 left-4 md:bottom-8 md:left-8 w-12 h-12 md:w-16 md:h-16 border-b-2 border-l-2 border-yellow-500/20 rounded-bl-2xl 
                                opacity-0 transform -translate-x-4 transition-all duration-500 
                                group-hover:opacity-100 group-hover:translate-x-0"></div>
                            </div>
                        </div>
                    </a>
                </div>
            </section>


            <!-- Ubicación -->
            <section class="py-12 md:py-16 container mx-auto px-4">
                <div class="max-w-3xl mx-auto">
                    <!-- Card Container with Glass Effect -->
                    <div class="relative bg-gradient-to-b from-gray-800/90 to-gray-800/70 
                    backdrop-blur-md rounded-xl md:rounded-2xl overflow-hidden p-6 md:p-10
                    border border-yellow-500/20 shadow-lg hover:shadow-xl transition-shadow duration-300">

                        <!-- Decorative Elements -->
                        <div class="absolute top-0 right-0 w-24 h-24 bg-yellow-100/10 rounded-full blur-2xl"></div>
                        <div class="absolute bottom-0 left-0 w-24 h-24 bg-yellow-100/10 rounded-full blur-2xl"></div>

                        <!-- Content Container -->
                        <div class="relative space-y-6 md:space-y-8">
                            <!-- Header -->
                            <div class="space-y-3 md:space-y-4 text-center">
                                <span class="text-xs md:text-sm uppercase tracking-[0.2em] text-yellow-500/80 block">
                                    Descubre
                                </span>
                                <h2 class="text-2xl md:text-3xl text-yellow-500 font-bold">
                                    Encuentra nuestros locales
                                </h2>
                                <div class="flex items-center justify-center gap-3 md:gap-4">
                                    <div class="h-px w-8 md:w-12 bg-yellow-500/30"></div>
                                    <div class="w-2 h-2 rounded-full bg-yellow-500"></div>
                                    <div class="h-px w-8 md:w-12 bg-yellow-500/30"></div>
                                </div>
                            </div>

                            <!-- Description -->
                            <div class="space-y-4 max-w-2xl mx-auto text-center">
                                <p class="text-gray-100 text-base md:text-lg leading-relaxed">
                                    Visítanos en cualquiera de nuestras ubicaciones estratégicas.<br>
                                    Cada local tiene su propio encanto y personalidad única.
                                </p>
                            </div>

                            <!-- Button Container -->
                            <div class="flex justify-center pt-3 md:pt-4">
                                <a href="Locales.jsp" class="group inline-block">
                                    <button class="relative px-6 py-2.5 md:px-8 md:py-3 rounded-lg md:rounded-xl overflow-hidden
                                   transition-all duration-300 hover:-translate-y-0.5">
                                        <!-- Button Background -->
                                        <div class="absolute inset-0 bg-gradient-to-r from-yellow-500 to-yellow-400 
                                        opacity-90 transition-opacity duration-300 group-hover:opacity-100"></div>

                                        <!-- Button Content -->
                                        <div class="relative flex items-center gap-2 md:gap-3">
                                            <span class="text-gray-800 text-sm md:text-base font-semibold">
                                                Ver ubicaciones
                                            </span>
                                            <!-- Arrow Icon -->
                                            <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 md:h-5 md:w-5 transform transition-transform duration-300 
                                           group-hover:translate-x-1" fill="none" viewBox="0 0 24 24"
                                                stroke="currentColor">
                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                    d="M13 7l5 5m0 0l-5 5m5-5H6" />
                                            </svg>
                                        </div>
                                    </button>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Historia -->
            <section class="py-20 container mx-auto px-4">


                <div class="max-w-6xl mx-auto">


                    <!-- Header -->
                    <div class="text-center space-y-4 mb-12">
                        <span class="text-sm uppercase tracking-[0.3em] text-yellow-500/70 block">Tradición &
                            Pasión</span>
                        <h2 class="text-4xl md:text-5xl text-yellow-500 font-dancing">
                            Nuestra Historia
                        </h2>
                        <div class="flex items-center justify-center gap-4">
                            <div class="h-px w-12 bg-yellow-500/20"></div>
                            <div class="w-2 h-2 rounded-full bg-yellow-500"></div>
                            <div class="h-px w-12 bg-yellow-500/20"></div>
                        </div>
                    </div>

                    <!-- Cards Grid -->
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
                        <!-- Card 1 - Nuestros Inicios -->
                        <div class="group relative">
                            <!-- Card Background with Glass Effect -->
                            <div class="relative bg-gradient-to-b from-gray-800/90 to-gray-800/70 
                            backdrop-blur-sm rounded-2xl overflow-hidden p-8
                            border border-yellow-500/10 shadow-2xl
                            transition-all duration-300 hover:border-yellow-500/30">

                                <!-- Decorative Elements -->
                                <div class="absolute top-0 right-0 w-32 h-32 bg-[#FFCC00]/5 rounded-full blur-3xl
                                transition-all duration-300 group-hover:bg-[#FFCC00]/10"></div>

                                <!-- Content -->
                                <div class="relative space-y-6">
                                    <div class="flex items-center gap-4">
                                        <div class="text-yellow-500">
                                            <svg xmlns="http://www.w3.org/2000/svg" class="h-8 w-8" fill="none"
                                                viewBox="0 0 24 24" stroke="currentColor">
                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5"
                                                    d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z" />
                                            </svg>
                                        </div>
                                        <h3 class="text-2xl text-yellow-500 font-dancing">Nuestros Inicios</h3>
                                    </div>

                                    <p class="text-gray-300 text-lg leading-relaxed">
                                        Todo comenzó en 1985, cuando nuestra familia decidió compartir su pasión por la
                                        gastronomía tradicional.
                                    </p>

                                    <!-- Bottom Decorative Line -->
                                    <div
                                        class="h-px w-full bg-gradient-to-r from-transparent via-yellow-500/20 to-transparent">
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Card 2 - Nuestra Filosofía -->
                        <div class="group relative">
                            <div class="relative bg-gradient-to-b from-gray-800/90 to-gray-800/70
                            backdrop-blur-sm rounded-2xl overflow-hidden p-8
                            border border-yellow-500/10 shadow-2xl
                            transition-all duration-300 hover:border-yellow-500/30">

                                <!-- Decorative Elements -->
                                <div class="absolute top-0 right-0 w-32 h-32 bg-[#FFCC00]/5 rounded-full blur-3xl
                                transition-all duration-300 group-hover:bg-[#FFCC00]/10"></div>

                                <!-- Content -->
                                <div class="relative space-y-6">
                                    <div class="flex items-center gap-4">
                                        <div class="text-yellow-500">
                                            <svg xmlns="http://www.w3.org/2000/svg" class="h-8 w-8" fill="none"
                                                viewBox="0 0 24 24" stroke="currentColor">
                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5"
                                                    d="M9 20l-5.447-2.724A1 1 0 013 16.382V5.618a1 1 0 011.447-.894L9 7m0 13l6-3m-6 3V7m6 10l4.553 2.276A1 1 0 0021 18.382V7.618a1 1 0 00-.553-.894L15 4m0 13V4m0 0L9 7" />
                                            </svg>
                                        </div>
                                        <h3 class="text-2xl text-yellow-500 font-dancing">Nuestra Filosofía</h3>
                                    </div>

                                    <p class="text-gray-300 text-lg leading-relaxed">
                                        Creemos en la importancia de seleccionar los mejores ingredientes locales y de
                                        temporada.
                                    </p>

                                    <!-- Bottom Decorative Line -->
                                    <div
                                        class="h-px w-full bg-gradient-to-r from-transparent via-yellow-500/20 to-transparent">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Valores, Visión y Misión -->
            <section class="py-20 container mx-auto px-4">
                <div class="max-w-7xl mx-auto">
                    <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                        <!-- Valores Card -->
                        <div class="group">
                            <div class="relative bg-gradient-to-b from-gray-800/90 to-gray-800/70
                            backdrop-blur-sm rounded-2xl overflow-hidden p-8
                            border border-yellow-500/10 shadow-2xl
                            transition-all duration-300 hover:border-yellow-500/30 h-full">
                                <!-- Decorative Background -->
                                <div class="absolute top-0 right-0 w-32 h-32 bg-[#FFCC00]/5 rounded-full blur-3xl
                                transition-all duration-300 group-hover:bg-[#FFCC00]/10"></div>

                                <!-- Content -->
                                <div class="relative space-y-6">
                                    <!-- Header -->
                                    <div class="text-center space-y-4">
                                        <div class="text-yellow-500 mx-auto w-12 h-12">
                                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                                stroke="currentColor">
                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5"
                                                    d="M5 3v4M3 5h4M6 17v4m-2-2h4m5-16l2.286 6.857L21 12l-5.714 2.143L13 21l-2.286-6.857L5 12l5.714-2.143L13 3z" />
                                            </svg>
                                        </div>
                                        <h2 class="text-3xl text-yellow-500 font-dancing">Valores</h2>
                                    </div>

                                    <!-- Values List -->
                                    <div class="space-y-4">
                                        <div class="flex items-center gap-3 group/item">
                                            <div
                                                class="w-2 h-2 rounded-full bg-yellow-500 transition-all duration-300 group-hover/item:scale-150">
                                            </div>
                                            <span class="text-gray-300 text-lg">Confianza</span>

                                        </div>

                                        <div class="flex items-center gap-3 group/item">
                                            <div
                                                class="w-2 h-2 rounded-full bg-yellow-500 transition-all duration-300 group-hover/item:scale-150">
                                            </div>
                                            <span class="text-gray-300 text-lg">Responsabilidad</span>

                                        </div>
                                        <div class="flex items-center gap-3 group/item">
                                            <div
                                                class="w-2 h-2 rounded-full bg-yellow-500 transition-all duration-300 group-hover/item:scale-150">
                                            </div>
                                            <span class="text-gray-300 text-lg">Pasión</span>

                                        </div>
                                        <div class="flex items-center gap-3 group/item">
                                            <div
                                                class="w-2 h-2 rounded-full bg-yellow-500 transition-all duration-300 group-hover/item:scale-150">
                                            </div>
                                            <span class="text-gray-300 text-lg">Integración</span>

                                        </div>
                                        <div class="flex items-center gap-3 group/item">
                                            <div
                                                class="w-2 h-2 rounded-full bg-yellow-500 transition-all duration-300 group-hover/item:scale-150">
                                            </div>
                                            <span class="text-gray-300 text-lg">Disponibilidad de cambio</span>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Visión Card -->
                        <div class="group">
                            <div class="relative bg-gradient-to-b from-gray-800/90 to-gray-800/70
                            backdrop-blur-sm rounded-2xl overflow-hidden p-8
                            border border-yellow-500/10 shadow-2xl
                            transition-all duration-300 hover:border-yellow-500/30 h-full">
                                <!-- Decorative Background -->
                                <div class="absolute top-0 right-0 w-32 h-32 bg-[#FFCC00]/5 rounded-full blur-3xl
                                transition-all duration-300 group-hover:bg-[#FFCC00]/10"></div>

                                <!-- Content -->
                                <div class="relative space-y-6">
                                    <div class="text-center space-y-4">
                                        <div class="text-yellow-500 mx-auto w-12 h-12">
                                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                                stroke="currentColor">
                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5"
                                                    d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5"
                                                    d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z" />
                                            </svg>
                                        </div>
                                        <h2 class="text-3xl text-yellow-500 font-dancing">Visión</h2>
                                    </div>

                                    <p class="text-gray-300 text-lg text-center leading-relaxed">
                                        Ser un exponente de la gastronomía a nivel mundial, reconocidos por nuestra
                                        excelencia culinaria y servicio excepcional.
                                    </p>
                                </div>
                            </div>
                        </div>

                        <!-- Misión Card -->
                        <div class="group">
                            <div class="relative bg-gradient-to-b from-gray-800/90 to-gray-800/70
                            backdrop-blur-sm rounded-2xl overflow-hidden p-8
                            border border-yellow-500/10 shadow-2xl
                            transition-all duration-300 hover:border-yellow-500/30 h-full">
                                <!-- Decorative Background -->
                                <div class="absolute top-0 right-0 w-32 h-32 bg-[#FFCC00]/5 rounded-full blur-3xl
                                transition-all duration-300 group-hover:bg-[#FFCC00]/10"></div>

                                <!-- Content -->
                                <div class="relative space-y-6">
                                    <div class="text-center space-y-4">
                                        <div class="text-yellow-500 mx-auto w-12 h-12">
                                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                                stroke="currentColor">
                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5"
                                                    d="M13 10V3L4 14h7v7l9-11h-7z" />
                                            </svg>
                                        </div>
                                        <h2 class="text-3xl text-yellow-500 font-dancing">Misión</h2>
                                    </div>

                                    <p class="text-gray-300 text-lg text-center leading-relaxed">
                                        Satisfacer las necesidades gastronómicas de nuestros clientes, ofreciendo
                                        alimentos y servicios con la más alta calidad.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Colaboradores -->
            <section class="py-20 container mx-auto px-4">
                <div class="max-w-7xl mx-auto">
                    <!-- Header -->
                    <div class="text-center space-y-4 mb-16">
                        <span class="text-sm uppercase tracking-[0.3em] text-yellow-500/70 block">Nuestro Equipo</span>
                        <h2 class="text-4xl md:text-5xl text-yellow-500 font-dancing">
                            Conoce a nuestros colaboradores
                        </h2>
                        <div class="flex items-center justify-center gap-4">
                            <div class="h-px w-12 bg-[#dacd86]/20"></div>
                            <div class="w-2 h-2 rounded-full bg-[#dacd86]"></div>
                            <div class="h-px w-12 bg-[#dacd86]/20"></div>
                        </div>
                    </div>

                    <!-- Team Grid -->
                    <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                        <!-- Colaborador 1 -->
                        <div class="group">
                            <div class="relative bg-gradient-to-b from-gray-800/90 to-gray-800/70
                            backdrop-blur-sm rounded-2xl overflow-hidden p-8
                            border border-[#dacd86]/10 shadow-2xl
                            transition-all duration-300 hover:border-[#dacd86]/30">
                                <div class="relative space-y-6">
                                    <div class="relative mx-auto w-32 h-32 md:w-40 md:h-40">
                                        <div class="absolute inset-0 rounded-full bg-gradient-to-r from-[#dacd86] to-[#FFCC00] blur-lg opacity-20 
                                      group-hover:opacity-30 transition-opacity duration-300"></div>
                                        <img src="./public/suchef.webp" alt="Lourdes Cuba" class="w-full h-full rounded-full border-4 border-[#dacd86] object-cover
                                        transition-transform duration-500 group-hover:scale-105">
                                    </div>
                                    <div class="text-center space-y-2">
                                        <h3 class="text-2xl md:text-3xl font-dancing text-[#dacd86]">Lourdes Cuba</h3>
                                        <p class="text-[#dacd86]/80 italic">Sub Cheff</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Colaborador 2 -->
                        <div class="group">
                            <div class="relative bg-gradient-to-b from-gray-800/90 to-gray-800/70
                            backdrop-blur-sm rounded-2xl overflow-hidden p-8
                            border border-[#dacd86]/10 shadow-2xl
                            transition-all duration-300 hover:border-[#dacd86]/30">
                                <div class="relative space-y-6">
                                    <div class="relative mx-auto w-32 h-32 md:w-40 md:h-40">
                                        <div class="absolute inset-0 rounded-full bg-gradient-to-r from-[#dacd86] to-[#FFCC00] blur-lg opacity-20 
                                      group-hover:opacity-30 transition-opacity duration-300"></div>
                                        <img src="./public/chef.webp" alt="Juan Pérez" class="w-full h-full rounded-full border-4 border-[#dacd86] object-cover
                                        transition-transform duration-500 group-hover:scale-105">
                                    </div>
                                    <div class="text-center space-y-2">
                                        <h3 class="text-2xl md:text-3xl font-dancing text-[#dacd86]">Juan Pérez</h3>
                                        <p class="text-[#dacd86]/80 italic">Chef Principal</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Colaborador 3 -->
                        <div class="group">
                            <div class="relative bg-gradient-to-b from-gray-800/90 to-gray-800/70
                            backdrop-blur-sm rounded-2xl overflow-hidden p-8
                            border border-[#dacd86]/10 shadow-2xl
                            transition-all duration-300 hover:border-[#dacd86]/30">
                                <div class="relative space-y-6">
                                    <div class="relative mx-auto w-32 h-32 md:w-40 md:h-40">
                                        <div class="absolute inset-0 rounded-full bg-gradient-to-r from-[#dacd86] to-[#FFCC00] blur-lg opacity-20 
                                      group-hover:opacity-30 transition-opacity duration-300"></div>
                                        <img src="./public/equipo-img7.webp" alt="María López" class="w-full h-full rounded-full border-4 border-[#dacd86] object-cover
                                        transition-transform duration-500 group-hover:scale-105">
                                    </div>
                                    <div class="text-center space-y-2">
                                        <h3 class="text-2xl md:text-3xl font-dancing text-[#dacd86]">María López</h3>
                                        <p class="text-[#dacd86]/80 italic">Gerente de Servicio</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Servicios -->
            <section class="py-20 container mx-auto px-4">
                <div class="max-w-7xl mx-auto">
                    <!-- Header -->
                    <div class="text-center space-y-4 mb-16">
                        <span class="text-sm uppercase tracking-[0.3em] text-yellow-500/70 block">Experiencia
                            Única</span>
                        <h2 class="text-4xl md:text-5xl text-yellow-500 font-dancing">
                            Nuestros Servicios
                        </h2>
                        <div class="flex items-center justify-center gap-4">
                            <div class="h-px w-12 bg-[#FFCC00]/20"></div>
                            <div class="w-2 h-2 rounded-full bg-[#FFCC00]"></div>
                            <div class="h-px w-12 bg-[#FFCC00]/20"></div>
                        </div>
                    </div>

                    <!-- Services Grid -->
                    <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                        <!-- Servicio 1 -->
                        <a href="Reserva.jsp" class="group">
                            <div class="relative overflow-hidden rounded-2xl shadow-2xl">
                                <div class="relative h-64">
                                    <img src="./public/reservas_1.webp" alt="Reservas Privadas"
                                        class="w-full h-full object-cover transition-transform duration-700 group-hover:scale-110">
                                    <div
                                        class="absolute inset-0 bg-gradient-to-t from-black/90 via-black/50 to-transparent">
                                    </div>
                                </div>
                                <div
                                    class="absolute bottom-0 left-0 right-0 p-6 transform translate-y-6 transition-transform duration-500 group-hover:translate-y-0">
                                    <h3 class="text-2xl font-dancing text-yellow-500 mb-2">Reservas Privadas</h3>
                                    <p
                                        class="text-[#dacd86] text-sm opacity-0 transform translate-y-4 transition-all duration-500 group-hover:opacity-100 group-hover:translate-y-0">
                                        Espacios exclusivos para tus eventos especiales
                                    </p>
                                </div>
                            </div>
                        </a>

                        <!-- Servicio 2 -->
                        <a href="Menu.jsp" class="group">
                            <div class="relative overflow-hidden rounded-2xl shadow-2xl">
                                <div class="relative h-64">
                                    <img src="./public/buffet.webp" alt="Buffets Gourmet"
                                        class="w-full h-full object-cover transition-transform duration-700 group-hover:scale-110">
                                    <div
                                        class="absolute inset-0 bg-gradient-to-t from-black/90 via-black/50 to-transparent">
                                    </div>
                                </div>
                                <div
                                    class="absolute bottom-0 left-0 right-0 p-6 transform translate-y-6 transition-transform duration-500 group-hover:translate-y-0">
                                    <h3 class="text-2xl font-dancing text-yellow-500 mb-2">Buffets Gourmet</h3>
                                    <p
                                        class="text-[#dacd86] text-sm opacity-0 transform translate-y-4 transition-all duration-500 group-hover:opacity-100 group-hover:translate-y-0">
                                        Platos exclusivos preparados por nuestros chefs
                                    </p>
                                </div>
                            </div>
                        </a>

                        <!-- Servicio 3 -->
                        <a href="Eventos.jsp" class="group">
                            <div class="relative overflow-hidden rounded-2xl shadow-2xl">
                                <div class="relative h-64">
                                    <img src="./public/evento.webp" alt="Eventos"
                                        class="w-full h-full object-cover transition-transform duration-700 group-hover:scale-110">
                                    <div
                                        class="absolute inset-0 bg-gradient-to-t from-black/90 via-black/50 to-transparent">
                                    </div>
                                </div>
                                <div
                                    class="absolute bottom-0 left-0 right-0 p-6 transform translate-y-6 transition-transform duration-500 group-hover:translate-y-0">
                                    <h3 class="text-2xl font-dancing text-yellow-500 mb-2">Eventos</h3>
                                    <p
                                        class="text-[#dacd86] text-sm opacity-0 transform translate-y-4 transition-all duration-500 group-hover:opacity-100 group-hover:translate-y-0">
                                        Celebraciones y encuentros memorables
                                    </p>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </section>
        </div>

        <jsp:include page="footer.jsp" />

        <script src="js/script.js"></script>

    </body>

    </html>