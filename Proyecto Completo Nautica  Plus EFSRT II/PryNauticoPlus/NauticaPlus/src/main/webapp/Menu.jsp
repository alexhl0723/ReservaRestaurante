<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Menú Náutico - Naútica Plus</title>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>
        <script src="https://unpkg.com/@tailwindcss/browser@4"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css" />
    </head>

    <body class="font-[Cinzel_Variable] bg-gradient-to-br from-gray-800 via-gray-900 to-gray-800">
        <jsp:include page="header.jsp" />
        <!-- Hero Section -->
        <div class="relative overflow-hidden to-transparent h-96">
            <div class="absolute inset-0">
                <div class="absolute inset-0 "></div>
            </div>
            <div class="relative container mx-auto px-4 h-full flex items-center">
                <div class="text-center w-full" data-aos="fade-up">
                    <h1 class="text-5xl md:text-6xl font-bold text-yellow-500 mb-4">Naútica Plus - Menús</h1>
                    <div class="flex items-center justify-center mb-8">
                        <div class="h-px w-12 bg-yellow-500/20"></div>
                        <div class="w-3 h-3 rounded-full bg-yellow-500 mx-4"></div>
                        <div class="h-px w-12 bg-yellow-500/20"></div>
                    </div>
                    <p class="text-xl text-gray-100">Descubre nuestros exquisitos platos del mar</p>
                </div>
            </div>
        </div>

        <!-- Menú Section -->
        <section class="py-20 container mx-auto px-4">
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
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
                                de limón, ají limo y rocoto, coronado con finos aros de cebolla morada.
                                Servido con cremoso camote glaseado, choclo serrano y crujientes granos de chulpe.
                            </p>
                        </div>

                        <div class="flex flex-wrap gap-3">
                            <span
                                class="px-4 py-2 bg-gray-800/50 text-yellow-500 text-sm rounded-full border border-yellow-500/30 flex items-center gap-2">
                                <span>🌶️</span> Picante Personalizado
                            </span>
                            <span
                                class="px-4 py-2 bg-gray-800/50 text-yellow-500 text-sm rounded-full border border-yellow-500/30 flex items-center gap-2">
                                <span>⭐</span> Plato Premiado
                            </span>
                            <span
                                class="px-4 py-2 bg-gray-800/50 text-yellow-500 text-sm rounded-full border border-yellow-500/30 flex items-center gap-2">
                                <span>🐟</span> Pesca Selecta del Día
                            </span>
                        </div>

                    </div>

                    <div
                        class="absolute bottom-0 left-1/2 transform -translate-x-1/2 w-1/3 h-1 bg-gradient-to-r from-transparent via-yellow-500/20 to-transparent">
                    </div>
                </div>

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
                                aceite de oliva y limón sutil. Decorado con hilos de camote, chalaquita de
                                aguaymanto
                                y gotas de leche de tigre al rocoto.
                            </p>
                        </div>

                        <div class="flex flex-wrap gap-3">
                            <span
                                class="px-4 py-2 bg-gray-800/50 text-yellow-500 text-sm rounded-full border border-yellow-500/30 flex items-center gap-2">
                                <span>🌶️</span> Picante Suave
                            </span>
                            <span
                                class="px-4 py-2 bg-gray-800/50 text-yellow-500 text-sm rounded-full border border-yellow-500/30 flex items-center gap-2">
                                <span>⭐</span> Especialidad de la Casa
                            </span>
                            <span
                                class="px-4 py-2 bg-gray-800/50 text-yellow-500 text-sm rounded-full border border-yellow-500/30 flex items-center gap-2">
                                <span>🐟</span> Pesca del Día
                            </span>
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
                                    calamares, mejillones y conchas de abanico salteadas
                                    en mantequilla de hierbas.
                                    Terminado con parmesano y perejil fresco.
                                </p>
                            </div>


                            <div class="flex flex-wrap gap-3">
                                <span
                                    class="px-4 py-2 bg-gray-800/50 text-yellow-500 text-sm rounded-full border border-yellow-500/30 flex items-center gap-2">
                                    <span>🦐</span> Mariscos Premium
                                </span>
                                <span
                                    class="px-4 py-2 bg-gray-800/50 text-yellow-500 text-sm rounded-full border border-yellow-500/30 flex items-center gap-2">
                                    <span>⭐</span> El Más Pedido
                                </span>
                                <span
                                    class="px-4 py-2 bg-gray-800/50 text-yellow-500 text-sm rounded-full border border-yellow-500/30 flex items-center gap-2">
                                    <span>🍷</span> Con Vino Blanco
                                </span>
                            </div>

                        </div>
                    </div>




        </section>


        <div class="flex items-center justify-center mb-8">
            <div class="h-px w-12 bg-yellow-500/20"></div>
            <div class="w-3 h-3 rounded-full bg-yellow-500 mx-4"></div>
            <div class="h-px w-12 bg-yellow-500/20"></div>
        </div>

        <section class="py-20 container mx-auto px-4">
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">

                <%-- Parihuela Premium --%>
                    <div
                        class="group relative overflow-hidden bg-gradient-to-br from-gray-800 to-gray-700 rounded-[2rem] border border-yellow-500/20 hover:border-yellow-500/40 transition-all duration-500 shadow-xl hover:shadow-yellow-500/10">
                        <div
                            class="absolute top-0 left-0 w-20 h-20 border-t-2 border-l-2 border-yellow-500/20 rounded-tl-[2rem]">
                        </div>
                        <div
                            class="absolute bottom-0 right-0 w-20 h-20 border-b-2 border-r-2 border-yellow-500/20 rounded-br-[2rem]">
                        </div>

                        <div class="relative h-80 overflow-hidden">
                            <img src="./public/parihuela.webp" alt="Parihuela Premium"
                                class="w-full h-full object-cover transform group-hover:scale-110 transition-all duration-700 ease-out" />

                            <div
                                class="absolute inset-0 bg-gradient-to-t from-[#0a0a0a] via-transparent to-transparent opacity-70">
                            </div>

                            <div class="absolute top-6 right-6 flex items-center gap-2">
                                <div
                                    class="px-6 py-2 bg-yellow-500 backdrop-blur-sm text-black text-sm font-bold rounded-full shadow-lg transform hover:scale-105 transition-all duration-300">
                                    Premium
                                </div>
                            </div>

                            <div class="absolute top-6 left-6">
                                <div
                                    class="flex items-center gap-2 px-4 py-1 bg-black/50 backdrop-blur-sm rounded-full border border-yellow-500/30">
                                    <span class="text-yellow-500">🔥</span>
                                    <span class="text-yellow-500 text-sm font-medium">Plato Caliente</span>
                                </div>
                            </div>
                        </div>

                        <div class="p-10 space-y-8">
                            <div class="space-y-6">
                                <div class="flex justify-between items-start">
                                    <div class="space-y-2">
                                        <h3 class="text-3xl font-bold text-yellow-500 font-serif tracking-wide">
                                            Parihuela Premium
                                        </h3>
                                        <p class="text-sm text-yellow-500/70 uppercase tracking-widest">
                                            Nautica Plus Signature
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

                                <p class="text-gray-300 leading-relaxed text-lg">
                                    Sopa marina tradicional preparada con fondo de pescado y mariscos,
                                    enriquecida con trozos de pescado fresco, langostinos jumbo,
                                    calamares, conchas de abanico y mejillones. Sazonada con ají panca,
                                    chicha de jora y hierbas aromáticas peruanas.
                                </p>
                            </div>

                            <div class="flex flex-wrap gap-3">
                                <span
                                    class="px-4 py-2 bg-gray-800/50 text-yellow-500 text-sm rounded-full border border-yellow-500/30 flex items-center gap-2">
                                    <span>🦐</span> Mariscos Frescos
                                </span>
                                <span
                                    class="px-4 py-2 bg-gray-800/50 text-yellow-500 text-sm rounded-full border border-yellow-500/30 flex items-center gap-2">
                                    <span>🌶️</span> Picante Moderado
                                </span>
                                <span
                                    class="px-4 py-2 bg-gray-800/50 text-yellow-500 text-sm rounded-full border border-yellow-500/30 flex items-center gap-2">
                                    <span>👨‍🍳</span> Receta Casera
                                </span>
                            </div>
                        </div>
                    </div>


                    <%-- Chupe de Camarones Premium --%>
                        <div
                            class="group relative overflow-hidden bg-gradient-to-br from-gray-800 to-gray-700 rounded-[2rem] border border-yellow-500/20 hover:border-yellow-500/40 transition-all duration-500 shadow-xl hover:shadow-yellow-500/10">
                            <div
                                class="absolute top-0 left-0 w-20 h-20 border-t-2 border-l-2 border-yellow-500/20 rounded-tl-[2rem]">
                            </div>
                            <div
                                class="absolute bottom-0 right-0 w-20 h-20 border-b-2 border-r-2 border-yellow-500/20 rounded-br-[2rem]">
                            </div>

                            <div class="relative h-80 overflow-hidden">
                                <img src="./public/chupe-de-camaron.webp" alt="Chupe de Camarones Premium"
                                    class="w-full h-full object-cover transform group-hover:scale-110 transition-all duration-700 ease-out" />

                                <div
                                    class="absolute inset-0 bg-gradient-to-t from-[#0a0a0a] via-transparent to-transparent opacity-70">
                                </div>

                                <div class="absolute top-6 right-6 flex items-center gap-2">
                                    <div
                                        class="px-6 py-2 bg-yellow-500 backdrop-blur-sm text-black text-sm font-bold rounded-full shadow-lg transform hover:scale-105 transition-all duration-300">
                                        Exclusivo
                                    </div>
                                </div>

                                <div class="absolute top-6 left-6">
                                    <div
                                        class="flex items-center gap-2 px-4 py-1 bg-black/50 backdrop-blur-sm rounded-full border border-yellow-500/30">
                                        <span class="text-yellow-500">🌟</span>
                                        <span class="text-yellow-500 text-sm font-medium">Plato Especial</span>
                                    </div>
                                </div>
                            </div>

                            <div class="p-10 space-y-8">
                                <div class="space-y-6">
                                    <div class="flex justify-between items-start">
                                        <div class="space-y-2">
                                            <h3 class="text-3xl font-bold text-yellow-500 font-serif tracking-wide">
                                                Chupe de Camarones
                                            </h3>
                                            <p class="text-sm text-yellow-500/70 uppercase tracking-widest">
                                                Nautica Plus Deluxe
                                            </p>
                                        </div>
                                        <div class="text-right">
                                            <span class="text-2xl font-bold text-yellow-500">
                                                S/. 78.00
                                            </span>
                                            <p class="text-sm text-yellow-500/70 mt-1">
                                                Precio incluye IGV
                                            </p>
                                        </div>
                                    </div>

                                    <p class="text-gray-300 leading-relaxed text-lg">
                                        Cremosa sopa tradicional elaborada con camarones de río seleccionados,
                                        preparada con un fondo de mariscos, leche, huevos pochados y arroz.
                                        Enriquecida con choclo tierno, habas verdes y queso fresco.
                                        Aromatizada con huacatay y hierbas finas.
                                    </p>
                                </div>

                                <div class="flex flex-wrap gap-3">
                                    <span
                                        class="px-4 py-2 bg-gray-800/50 text-yellow-500 text-sm rounded-full border border-yellow-500/30 flex items-center gap-2">
                                        <span>🦐</span> Camarones Premium
                                    </span>
                                    <span
                                        class="px-4 py-2 bg-gray-800/50 text-yellow-500 text-sm rounded-full border border-yellow-500/30 flex items-center gap-2">
                                        <span>🥘</span> Cremoso
                                    </span>
                                    <span
                                        class="px-4 py-2 bg-gray-800/50 text-yellow-500 text-sm rounded-full border border-yellow-500/30 flex items-center gap-2">
                                        <span>🌿</span> Hierbas Selectas
                                    </span>
                                </div>
                            </div>
                        </div>


                        <%-- Jalea Mixta Especial --%>
                            <div
                                class="group relative overflow-hidden bg-gradient-to-br from-gray-800 to-gray-700 rounded-[2rem] border border-yellow-500/20 hover:border-yellow-500/40 transition-all duration-500 shadow-xl hover:shadow-yellow-500/10">
                                <div
                                    class="absolute top-0 left-0 w-20 h-20 border-t-2 border-l-2 border-yellow-500/20 rounded-tl-[2rem]">
                                </div>
                                <div
                                    class="absolute bottom-0 right-0 w-20 h-20 border-b-2 border-r-2 border-yellow-500/20 rounded-br-[2rem]">
                                </div>

                                <div class="relative h-80 overflow-hidden">
                                    <img src="./public/jalea-mixta.webp" alt="Jalea Mixta Especial"
                                        class="w-full h-full object-cover transform group-hover:scale-110 transition-all duration-700 ease-out" />

                                    <div
                                        class="absolute inset-0 bg-gradient-to-t from-[#0a0a0a] via-transparent to-transparent opacity-70">
                                    </div>

                                    <div class="absolute top-6 right-6 flex items-center gap-2">
                                        <div
                                            class="px-6 py-2 bg-yellow-500 backdrop-blur-sm text-black text-sm font-bold rounded-full shadow-lg transform hover:scale-105 transition-all duration-300">
                                            Para Compartir
                                        </div>
                                    </div>

                                    <div class="absolute top-6 left-6">
                                        <div
                                            class="flex items-center gap-2 px-4 py-1 bg-black/50 backdrop-blur-sm rounded-full border border-yellow-500/30">
                                            <span class="text-yellow-500">✨</span>
                                            <span class="text-yellow-500 text-sm font-medium">Favorito del Chef</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="p-10 space-y-8">
                                    <div class="space-y-6">
                                        <div class="flex justify-between items-start">
                                            <div class="space-y-2">
                                                <h3 class="text-3xl font-bold text-yellow-500 font-serif tracking-wide">
                                                    Jalea Mixta Especial
                                                </h3>
                                                <p class="text-sm text-yellow-500/70 uppercase tracking-widest">
                                                    Nautica Plus Special
                                                </p>
                                            </div>
                                            <div class="text-right">
                                                <span class="text-2xl font-bold text-yellow-500">
                                                    S/. 89.00
                                                </span>
                                                <p class="text-sm text-yellow-500/70 mt-1">
                                                    Precio incluye IGV
                                                </p>
                                            </div>
                                        </div>

                                        <p class="text-gray-300 leading-relaxed text-lg">
                                            Exquisita combinación de mariscos y pescado fresco rebozados en una
                                            masa crujiente, acompañada de yuca frita dorada, sarsa criolla,
                                            chifles y salsa tártara casera. Incluye chicharrón de pescado,
                                            calamares, langostinos y conchas crujientes.
                                        </p>
                                    </div>

                                    <div class="flex flex-wrap gap-3">
                                        <span
                                            class="px-4 py-2 bg-gray-800/50 text-yellow-500 text-sm rounded-full border border-yellow-500/30 flex items-center gap-2">
                                            <span>🍤</span> Mix de Mariscos
                                        </span>
                                        <span
                                            class="px-4 py-2 bg-gray-800/50 text-yellow-500 text-sm rounded-full border border-yellow-500/30 flex items-center gap-2">
                                            <span>🔥</span> Extra Crujiente
                                        </span>
                                        <span
                                            class="px-4 py-2 bg-gray-800/50 text-yellow-500 text-sm rounded-full border border-yellow-500/30 flex items-center gap-2">
                                            <span>👥</span> 2-3 Personas
                                        </span>
                                    </div>
                                </div>
                            </div>

            </div>

        </section>

        <div class="flex items-center justify-center mb-8">
            <div class="h-px w-12 bg-yellow-500/20"></div>
            <div class="w-3 h-3 rounded-full bg-yellow-500 mx-4"></div>
            <div class="h-px w-12 bg-yellow-500/20"></div>
        </div>

        <section class="py-20 container mx-auto px-4">
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">

                <%-- Sudado de Pescado Premium --%>
                    <div
                        class="group relative overflow-hidden bg-gradient-to-br from-gray-800 to-gray-700 rounded-[2rem] border border-yellow-500/20 hover:border-yellow-500/40 transition-all duration-500 shadow-xl hover:shadow-yellow-500/10">
                        <div
                            class="absolute top-0 left-0 w-20 h-20 border-t-2 border-l-2 border-yellow-500/20 rounded-tl-[2rem]">
                        </div>
                        <div
                            class="absolute bottom-0 right-0 w-20 h-20 border-b-2 border-r-2 border-yellow-500/20 rounded-br-[2rem]">
                        </div>

                        <div class="relative h-80 overflow-hidden">
                            <img src="./public/sudado-de-pescado.jpg" alt="Sudado de Pescado Premium"
                                class="w-full h-full object-cover transform group-hover:scale-110 transition-all duration-700 ease-out" />

                            <div
                                class="absolute inset-0 bg-gradient-to-t from-[#0a0a0a] via-transparent to-transparent opacity-70">
                            </div>

                            <div class="absolute top-6 right-6 flex items-center gap-2">
                                <div
                                    class="px-6 py-2 bg-yellow-500 backdrop-blur-sm text-black text-sm font-bold rounded-full shadow-lg transform hover:scale-105 transition-all duration-300">
                                    Del Día
                                </div>
                            </div>

                            <div class="absolute top-6 left-6">
                                <div
                                    class="flex items-center gap-2 px-4 py-1 bg-black/50 backdrop-blur-sm rounded-full border border-yellow-500/30">
                                    <span class="text-yellow-500">🐟</span>
                                    <span class="text-yellow-500 text-sm font-medium">Pescado Fresco</span>
                                </div>
                            </div>
                        </div>

                        <div class="p-10 space-y-8">
                            <div class="space-y-6">
                                <div class="flex justify-between items-start">
                                    <div class="space-y-2">
                                        <h3 class="text-3xl font-bold text-yellow-500 font-serif tracking-wide">
                                            Sudado de Pescado
                                        </h3>
                                        <p class="text-sm text-yellow-500/70 uppercase tracking-widest">
                                            Nautica Plus Premium
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

                                <p class="text-gray-300 leading-relaxed text-lg">
                                    Filete de pescado del día cocinado al vapor en una base de verduras
                                    salteadas, vino blanco y chicha de jora. Servido con yuca sancochada,
                                    arroz blanco y sarsa criolla. Aromatizado con culantro fresco y
                                    especies peruanas selectas.
                                </p>
                            </div>

                            <div class="flex flex-wrap gap-3">
                                <span
                                    class="px-4 py-2 bg-gray-800/50 text-yellow-500 text-sm rounded-full border border-yellow-500/30 flex items-center gap-2">
                                    <span>🌊</span> Pesca del Día
                                </span>
                                <span
                                    class="px-4 py-2 bg-gray-800/50 text-yellow-500 text-sm rounded-full border border-yellow-500/30 flex items-center gap-2">
                                    <span>🍷</span> Con Vino Blanco
                                </span>
                                <span
                                    class="px-4 py-2 bg-gray-800/50 text-yellow-500 text-sm rounded-full border border-yellow-500/30 flex items-center gap-2">
                                    <span>🌿</span> Hierbas Frescas
                                </span>
                            </div>
                        </div>
                    </div>

                    <%-- Sushi Peruano Nikkei --%>
                    <div
                        class="group relative overflow-hidden bg-gradient-to-br from-gray-800 to-gray-700 rounded-[2rem] border border-yellow-500/20 hover:border-yellow-500/40 transition-all duration-500 shadow-xl hover:shadow-yellow-500/10">
                        <div
                            class="absolute top-0 left-0 w-20 h-20 border-t-2 border-l-2 border-yellow-500/20 rounded-tl-[2rem]">
                        </div>
                        <div
                            class="absolute bottom-0 right-0 w-20 h-20 border-b-2 border-r-2 border-yellow-500/20 rounded-br-[2rem]">
                        </div>

                        <div class="relative h-80 overflow-hidden">
                            <img src="./public/Sushi Peruano Nikkei.jpeg" alt="Sushi Peruano Nikkei"
                                class="w-full h-full object-cover transform group-hover:scale-110 transition-all duration-700 ease-out" />

                            <div
                                class="absolute inset-0 bg-gradient-to-t from-[#0a0a0a] via-transparent to-transparent opacity-70">
                            </div>

                            <div class="absolute top-6 right-6 flex items-center gap-2">
                                <div
                                    class="px-6 py-2 bg-yellow-500 backdrop-blur-sm text-black text-sm font-bold rounded-full shadow-lg transform hover:scale-105 transition-all duration-300">
                                    Especial del Día
                                </div>
                            </div>

                            <div class="absolute top-6 left-6">
                                <div
                                    class="flex items-center gap-2 px-4 py-1 bg-black/50 backdrop-blur-sm rounded-full border border-yellow-500/30">
                                    <span class="text-yellow-500">🍣</span>
                                    <span class="text-yellow-500 text-sm font-medium">Sushi Fresco</span>
                                </div>
                            </div>
                        </div>

                        <div class="p-10 space-y-8">
                            <div class="space-y-6">
                                <div class="flex justify-between items-start">
                                    <div class="space-y-2">
                                        <h3 class="text-3xl font-bold text-yellow-500 font-serif tracking-wide">
                                            Sushi Peruano Nikkei
                                        </h3>
                                        <p class="text-sm text-yellow-500/70 uppercase tracking-widest">
                                            Fusion Nikkei Premium
                                        </p>
                                    </div>
                                    <div class="text-right">
                                        <span class="text-2xl font-bold text-yellow-500">
                                            S/. 65.00
                                        </span>
                                        <p class="text-sm text-yellow-500/70 mt-1">
                                            Precio incluye IGV
                                        </p>
                                    </div>
                                </div>

                                <p class="text-gray-300 leading-relaxed text-lg">
                                    Roll de sushi preparado con pescado fresco, arroz sazonado y un toque de ají amarillo y lima. Acompañado de salsa de soya y jengibre encurtido, creando una fusión única de sabores peruanos y japoneses.
                                </p>
                            </div>

                            <div class="flex flex-wrap gap-3">
                                <span
                                    class="px-4 py-2 bg-gray-800/50 text-yellow-500 text-sm rounded-full border border-yellow-500/30 flex items-center gap-2">
                                    <span>🍣</span> Sushi Fresco
                                </span>
                                <span
                                    class="px-4 py-2 bg-gray-800/50 text-yellow-500 text-sm rounded-full border border-yellow-500/30 flex items-center gap-2">
                                    <span>🥢</span> Toque Nikkei
                                </span>
                                <span
                                    class="px-4 py-2 bg-gray-800/50 text-yellow-500 text-sm rounded-full border border-yellow-500/30 flex items-center gap-2">
                                    <span>🌶️</span> Toque Picante
                                </span>
                            </div>
                        </div>
                    </div>

                    <%-- Pescado Frito con Yuca y Ensalada --%>
                    <div
                        class="group relative overflow-hidden bg-gradient-to-br from-gray-800 to-gray-700 rounded-[2rem] border border-yellow-500/20 hover:border-yellow-500/40 transition-all duration-500 shadow-xl hover:shadow-yellow-500/10">
                        <div
                            class="absolute top-0 left-0 w-20 h-20 border-t-2 border-l-2 border-yellow-500/20 rounded-tl-[2rem]">
                        </div>
                        <div
                            class="absolute bottom-0 right-0 w-20 h-20 border-b-2 border-r-2 border-yellow-500/20 rounded-br-[2rem]">
                        </div>

                        <div class="relative h-80 overflow-hidden">
                            <img src="./public/Pescado Frito con Yuca.jpg" alt="Pescado Frito con Yuca y Ensalada"
                                class="w-full h-full object-cover transform group-hover:scale-110 transition-all duration-700 ease-out" />

                            <div
                                class="absolute inset-0 bg-gradient-to-t from-[#0a0a0a] via-transparent to-transparent opacity-70">
                            </div>

                            <div class="absolute top-6 right-6 flex items-center gap-2">
                                <div
                                    class="px-6 py-2 bg-yellow-500 backdrop-blur-sm text-black text-sm font-bold rounded-full shadow-lg transform hover:scale-105 transition-all duration-300">
                                    Especial del Día
                                </div>
                            </div>

                            <div class="absolute top-6 left-6">
                                <div
                                    class="flex items-center gap-2 px-4 py-1 bg-black/50 backdrop-blur-sm rounded-full border border-yellow-500/30">
                                    <span class="text-yellow-500">🐟</span>
                                    <span class="text-yellow-500 text-sm font-medium">Pescado Fresco</span>
                                </div>
                            </div>
                        </div>

                        <div class="p-10 space-y-8">
                            <div class="space-y-6">
                                <div class="flex justify-between items-start">
                                    <div class="space-y-2">
                                        <h3 class="text-3xl font-bold text-yellow-500 font-serif tracking-wide">
                                            Pescado Frito con Yuca
                                        </h3>
                                        <p class="text-sm text-yellow-500/70 uppercase tracking-widest">
                                            Tradición Costeña
                                        </p>
                                    </div>
                                    <div class="text-right">
                                        <span class="text-2xl font-bold text-yellow-500">
                                            S/. 55.00
                                        </span>
                                        <p class="text-sm text-yellow-500/70 mt-1">
                                            Precio incluye IGV
                                        </p>
                                    </div>
                                </div>

                                <p class="text-gray-300 leading-relaxed text-lg">
                                    Delicioso pescado fresco frito hasta obtener una textura crujiente, acompañado de yuca dorada y una ensalada fresca de repollo, zanahoria y tomate. Un plato tradicional que combina sabores auténticos de la costa peruana.
                                </p>
                            </div>

                            <div class="flex flex-wrap gap-3">
                                <span
                                    class="px-4 py-2 bg-gray-800/50 text-yellow-500 text-sm rounded-full border border-yellow-500/30 flex items-center gap-2">
                                    <span>🍽️</span> Plato Tradicional
                                </span>
                                <span
                                    class="px-4 py-2 bg-gray-800/50 text-yellow-500 text-sm rounded-full border border-yellow-500/30 flex items-center gap-2">
                                    <span>🥗</span> Ensalada Fresca
                                </span>
                                <span
                                    class="px-4 py-2 bg-gray-800/50 text-yellow-500 text-sm rounded-full border border-yellow-500/30 flex items-center gap-2">
                                    <span>🌿</span> Ingredientes Naturales
                                </span>
                            </div>
                        </div>
                    </div>


                    <%-- Cau Cau de Mariscos --%>
                    <div
                        class="group relative overflow-hidden bg-gradient-to-br from-gray-800 to-gray-700 rounded-[2rem] border border-yellow-500/20 hover:border-yellow-500/40 transition-all duration-500 shadow-xl hover:shadow-yellow-500/10">
                        <div
                            class="absolute top-0 left-0 w-20 h-20 border-t-2 border-l-2 border-yellow-500/20 rounded-tl-[2rem]">
                        </div>
                        <div
                            class="absolute bottom-0 right-0 w-20 h-20 border-b-2 border-r-2 border-yellow-500/20 rounded-br-[2rem]">
                        </div>

                        <div class="relative h-80 overflow-hidden">
                            <img src="./public/cau-cau-mariscos.webp" alt="Cau Cau de Mariscos"
                                class="w-full h-full object-cover transform group-hover:scale-110 transition-all duration-700 ease-out" />

                            <div
                                class="absolute inset-0 bg-gradient-to-t from-[#0a0a0a] via-transparent to-transparent opacity-70">
                            </div>

                            <div class="absolute top-6 right-6 flex items-center gap-2">
                                <div
                                    class="px-6 py-2 bg-yellow-500 backdrop-blur-sm text-black text-sm font-bold rounded-full shadow-lg transform hover:scale-105 transition-all duration-300">
                                    Especial del Día
                                </div>
                            </div>

                            <div class="absolute top-6 left-6">
                                <div
                                    class="flex items-center gap-2 px-4 py-1 bg-black/50 backdrop-blur-sm rounded-full border border-yellow-500/30">
                                    <span class="text-yellow-500">🦑</span>
                                    <span class="text-yellow-500 text-sm font-medium">Mariscos Frescos</span>
                                </div>
                            </div>
                        </div>

                        <div class="p-10 space-y-8">
                            <div class="space-y-6">
                                <div class="flex justify-between items-start">
                                    <div class="space-y-2">
                                        <h3 class="text-3xl font-bold text-yellow-500 font-serif tracking-wide">
                                            Cau Cau de Mariscos
                                        </h3>
                                        <p class="text-sm text-yellow-500/70 uppercase tracking-widest">
                                            Tradición Marina
                                        </p>
                                    </div>
                                    <div class="text-right">
                                        <span class="text-2xl font-bold text-yellow-500">
                                            S/. 70.00
                                        </span>
                                        <p class="text-sm text-yellow-500/70 mt-1">
                                            Precio incluye IGV
                                        </p>
                                    </div>
                                </div>

                                <p class="text-gray-300 leading-relaxed text-lg">
                                    Delicioso guiso de mariscos frescos como calamares, camarones y mejillones, cocinados con papas y especias peruanas en una salsa de ají amarillo. Acompañado de arroz blanco y decorado con hierbabuena fresca. :contentReference[oaicite:0]{index=0}
                                </p>
                            </div>

                            <div class="flex flex-wrap gap-3">
                                <span
                                    class="px-4 py-2 bg-gray-800/50 text-yellow-500 text-sm rounded-full border border-yellow-500/30 flex items-center gap-2">
                                    <span>🦐</span> Mariscos Frescos
                                </span>
                                <span
                                    class="px-4 py-2 bg-gray-800/50 text-yellow-500 text-sm rounded-full border border-yellow-500/30 flex items-center gap-2">
                                    <span>🌶️</span> Salsa de Ají Amarillo
                                </span>
                                <span
                                    class="px-4 py-2 bg-gray-800/50 text-yellow-500 text-sm rounded-full border border-yellow-500/30 flex items-center gap-2">
                                    <span>🌿</span> Hierbabuena Fresca
                                </span>
                            </div>
                        </div>
                    </div>
                    
                                    <%-- Chilcano de Pescado --%>
                    <div
                        class="group relative overflow-hidden bg-gradient-to-br from-gray-800 to-gray-700 rounded-[2rem] border border-yellow-500/20 hover:border-yellow-500/40 transition-all duration-500 shadow-xl hover:shadow-yellow-500/10">
                        <div
                            class="absolute top-0 left-0 w-20 h-20 border-t-2 border-l-2 border-yellow-500/20 rounded-tl-[2rem]">
                        </div>
                        <div
                            class="absolute bottom-0 right-0 w-20 h-20 border-b-2 border-r-2 border-yellow-500/20 rounded-br-[2rem]">
                        </div>

                        <div class="relative h-80 overflow-hidden">
                            <img src="./public/Chilcano de Pescado.jpg" alt="Chilcano de Pescado"
                                class="w-full h-full object-cover transform group-hover:scale-110 transition-all duration-700 ease-out" />

                            <div
                                class="absolute inset-0 bg-gradient-to-t from-[#0a0a0a] via-transparent to-transparent opacity-70">
                            </div>

                            <div class="absolute top-6 right-6 flex items-center gap-2">
                                <div
                                    class="px-6 py-2 bg-yellow-500 backdrop-blur-sm text-black text-sm font-bold rounded-full shadow-lg transform hover:scale-105 transition-all duration-300">
                                    Especial del Día
                                </div>
                            </div>

                            <div class="absolute top-6 left-6">
                                <div
                                    class="flex items-center gap-2 px-4 py-1 bg-black/50 backdrop-blur-sm rounded-full border border-yellow-500/30">
                                    <span class="text-yellow-500">🍲</span>
                                    <span class="text-yellow-500 text-sm font-medium">Caldo Reconstituyente</span>
                                </div>
                            </div>
                        </div>

                        <div class="p-10 space-y-8">
                            <div class="space-y-6">
                                <div class="flex justify-between items-start">
                                    <div class="space-y-2">
                                        <h3 class="text-3xl font-bold text-yellow-500 font-serif tracking-wide">
                                            Chilcano de Pescado
                                        </h3>
                                        <p class="text-sm text-yellow-500/70 uppercase tracking-widest">
                                            Tradición Peruana
                                        </p>
                                    </div>
                                    <div class="text-right">
                                        <span class="text-2xl font-bold text-yellow-500">
                                            S/. 40.00
                                        </span>
                                        <p class="text-sm text-yellow-500/70 mt-1">
                                            Precio incluye IGV
                                        </p>
                                    </div>
                                </div>

                                <p class="text-gray-300 leading-relaxed text-lg">
                                    Reconfortante caldo preparado con espinazo de pescado, aromatizado con kion, apio y culantro fresco. Servido caliente, acompañado de cebolla china picada y un toque de limón para realzar su sabor. :contentReference[oaicite:0]{index=0}
                                </p>
                            </div>

                            <div class="flex flex-wrap gap-3">
                                <span
                                    class="px-4 py-2 bg-gray-800/50 text-yellow-500 text-sm rounded-full border border-yellow-500/30 flex items-center gap-2">
                                    <span>🧄</span> Ingredientes Frescos
                                </span>
                                <span
                                    class="px-4 py-2 bg-gray-800/50 text-yellow-500 text-sm rounded-full border border-yellow-500/30 flex items-center gap-2">
                                    <span>🍋</span> Toque de Limón
                                </span>
                                <span
                                    class="px-4 py-2 bg-gray-800/50 text-yellow-500 text-sm rounded-full border border-yellow-500/30 flex items-center gap-2">
                                    <span>🌿</span> Hierbas Aromáticas
                                </span>
                            </div>
                        </div>
                    </div>
                    
                                    <%-- Arroz Chaufa de Mariscos --%>
                    <div
                        class="group relative overflow-hidden bg-gradient-to-br from-gray-800 to-gray-700 rounded-[2rem] border border-yellow-500/20 hover:border-yellow-500/40 transition-all duration-500 shadow-xl hover:shadow-yellow-500/10">
                        <div
                            class="absolute top-0 left-0 w-20 h-20 border-t-2 border-l-2 border-yellow-500/20 rounded-tl-[2rem]">
                        </div>
                        <div
                            class="absolute bottom-0 right-0 w-20 h-20 border-b-2 border-r-2 border-yellow-500/20 rounded-br-[2rem]">
                        </div>

                        <div class="relative h-80 overflow-hidden">
                            <img src="./public/Arroz-chaufa-de-mariscos.webp" alt="Arroz Chaufa de Mariscos"
                                class="w-full h-full object-cover transform group-hover:scale-110 transition-all duration-700 ease-out" />

                            <div
                                class="absolute inset-0 bg-gradient-to-t from-[#0a0a0a] via-transparent to-transparent opacity-70">
                            </div>

                            <div class="absolute top-6 right-6 flex items-center gap-2">
                                <div
                                    class="px-6 py-2 bg-yellow-500 backdrop-blur-sm text-black text-sm font-bold rounded-full shadow-lg transform hover:scale-105 transition-all duration-300">
                                    Especial del Día
                                </div>
                            </div>

                            <div class="absolute top-6 left-6">
                                <div
                                    class="flex items-center gap-2 px-4 py-1 bg-black/50 backdrop-blur-sm rounded-full border border-yellow-500/30">
                                    <span class="text-yellow-500">🦐</span>
                                    <span class="text-yellow-500 text-sm font-medium">Mariscos Frescos</span>
                                </div>
                            </div>
                        </div>

                        <div class="p-10 space-y-8">
                            <div class="space-y-6">
                                <div class="flex justify-between items-start">
                                    <div class="space-y-2">
                                        <h3 class="text-3xl font-bold text-yellow-500 font-serif tracking-wide">
                                            Arroz Chaufa de Mariscos
                                        </h3>
                                        <p class="text-sm text-yellow-500/70 uppercase tracking-widest">
                                            Fusión Peruano-China
                                        </p>
                                    </div>
                                    <div class="text-right">
                                        <span class="text-2xl font-bold text-yellow-500">
                                            S/. 65.00
                                        </span>
                                        <p class="text-sm text-yellow-500/70 mt-1">
                                            Precio incluye IGV
                                        </p>
                                    </div>
                                </div>

                                <p class="text-gray-300 leading-relaxed text-lg">
                                    Exquisito arroz chaufa preparado al wok con una mezcla de mariscos frescos como camarones, calamares y mejillones. Salteado con sillao, kion y vegetales, servido con cebolla china y ajonjolí tostado para un toque crocante.
                                </p>
                            </div>

                            <div class="flex flex-wrap gap-3">
                                <span
                                    class="px-4 py-2 bg-gray-800/50 text-yellow-500 text-sm rounded-full border border-yellow-500/30 flex items-center gap-2">
                                    <span>🍤</span> Mariscos Frescos
                                </span>
                                <span
                                    class="px-4 py-2 bg-gray-800/50 text-yellow-500 text-sm rounded-full border border-yellow-500/30 flex items-center gap-2">
                                    <span>🔥</span> Salteado al Wok
                                </span>
                                <span
                                    class="px-4 py-2 bg-gray-800/50 text-yellow-500 text-sm rounded-full border border-yellow-500/30 flex items-center gap-2">
                                    <span>🥢</span> Fusión Chifa
                                </span>
                            </div>
                        </div>
                    </div>
                    








            </div>

        </section>

        <script>
            AOS.init({
                duration: 800,
                easing: 'ease-out-cubic',
                once: true
            });

            // Añadir efecto de hover a las tarjetas
            document.querySelectorAll('.group').forEach(card => {
                card.addEventListener('mouseenter', () => {
                    card.querySelector('img').style.transform = 'scale(1.1)';
                });

                card.addEventListener('mouseleave', () => {
                    card.querySelector('img').style.transform = 'scale(1)';
                });
            });
        </script>
    </body>

    </html>