<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="es">

    <head>
        <meta charset="UTF-8">
        <title>Galería Experiencias - Náutica Plus</title>
        <script src="https://unpkg.com/@tailwindcss/browser@4"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            /* Efecto de olas en el fondo */
            body::before {
                content: '';
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background: url('data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxMjAwIDgwMCI+PHBhdGggZmlsbD0iI2Y1OWUwYiIgZD0iTTAgNjAwYzAgMTEwLjUgMTkzLjkgMjAwIDQzMy4zIDIwMFM4NjYuNyA3MTAuNSA4NjYuNyA2MDBjMC0xMTAuNS0xOTMuOS0yMDAtNDMzLjMtMjAwUzAgNDg5LjUgMCA2MDB6Ii8+PC9zdmc+') no-repeat;
                background-size: cover;
                opacity: 0.05;
                z-index: -1;
                pointer-events: none;
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
            

    </head>

    <body class="font-[Cinzel_Variable] bg-gray-100 relative overflow-x-hidden ">
        <div class="flex flex-col md:flex-row min-h-screen">
            <!-- Sidebar Elegante -->
            <aside class="bg-gray-800 w-full md:w-72 p-8 transform transition-transform duration-300 shadow-xl">
                <div class="flex items-center mb-12 space-x-4">
                    <i class="fas fa-utensils text-3xl text-yellow-500 animate-bounce"></i>
                    <span class="text-yellow-500 text-2xl font-bold tracking-wider">Náutica Plus</span>
                </div>
                <nav class="space-y-4">
                    <a href="index.jsp"
                        class="flex items-center space-x-4 p-4 rounded-xl hover:bg-gray-700/30 transition-all duration-300 group">
                        <i
                            class="fas fa-home text-yellow-500 text-xl w-6 transform group-hover:scale-110 transition-transform"></i>
                        <span class="text-gray-100 font-medium text-lg">Inicio</span>
                    </a>
                    <a href="Galeria.jsp"
                        class="flex items-center space-x-4 p-4 rounded-xl hover:bg-gray-700/30 transition-all duration-300 group">
                        <i
                            class="fas fa-th-large text-yellow-500 text-xl w-6 transform group-hover:scale-110 transition-transform"></i>
                        <span class="text-gray-100 font-medium text-lg">Ver Categorías</span>
                    </a>
                </nav>
            </aside>

            <!-- Main Content -->
            <main class="flex-1 p-8 md:p-12">
                <!-- Header con Efecto de Ola -->
                <div class="relative mb-12">
                    <div class="absolute -top-8 -left-8 w-24 h-24 bg-yellow-500 rounded-full opacity-20"></div>
                    <div class="absolute -bottom-8 -right-8 w-32 h-32 bg-yellow-500 rounded-full opacity-20"></div>
                    <div class="relative">
                        <h1 class="text-4xl font-bold text-gray-800 mb-2">Galería de Imágenes de Nuestras Experiencias</h1>
                        <p class="text-gray-600 text-lg">Explora nuestra colección náutica</p>
                    </div>
                </div>

                <!-- Botón Regresar Flotante -->
                <a href="Galeria.jsp"
                    class="fixed bottom-8 right-8 bg-yellow-500 hover:bg-yellow-600 text-white px-6 py-3 rounded-full shadow-lg transition-all transform hover:scale-105 flex items-center space-x-2 z-50">
                    <i class="fas fa-arrow-left"></i>
                    <span>Regresar</span>
                </a>

                <!-- Image Grid -->
                <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-8">
                    <!-- Image Card 1 -->
                    <div class="group relative bg-white rounded-2xl shadow-2xl hover:shadow-3xl transition-all duration-500 cursor-pointer overflow-hidden"
                        onclick="openModal('./public/categoriasGalery/experiencias/experiencias1.jpg', 'Restaurante elegante con techos altos, lámparas decorativas y vista al mar al atardecer.', '15 Julio 2023', '5.2 MB')">
                        <div class="relative aspect-video overflow-hidden">
                            <img src="./public/categoriasGalery/experiencias/experiencias1.jpg" alt="Experiencias1"
                                class="w-full h-full object-cover transform group-hover:scale-110 transition-transform duration-500">
                            <div class="absolute inset-0 bg-gradient-to-t from-black/60 to-transparent"></div>
                            <span
                                class="absolute top-4 right-4 bg-green-100 text-green-800 px-4 py-2 rounded-full text-sm font-medium shadow-md">
                                <i class="fas fa-check-circle mr-2"></i>Confirmada
                            </span>
                        </div>
                        <div class="p-6">
                            <h3 class="text-xl font-bold text-gray-800 mb-2">Restaurante elegante con techos altos, lámparas decorativas y vista al mar al atardecer.</h3>
                            <div class="flex items-center text-sm text-gray-600">
                                <i class="fas fa-calendar-alt mr-2"></i>
                                <span>15 Julio 2023</span>
                            </div>
                        </div>
                    </div>

                    <!-- Image Card 2 -->
                    <div class="group relative bg-white rounded-2xl shadow-2xl hover:shadow-3xl transition-all duration-500 cursor-pointer overflow-hidden"
                        onclick="openModal('./public/categoriasGalery/experiencias/experiencias2.png', 'Pareja disfrutando de una cena con cócteles junto al mar, con una vista panorámica de la ciudad.', '10 Diciembre 2023', '3.8 MB')">
                        <div class="relative aspect-video overflow-hidden">
                            <img src="./public/categoriasGalery/experiencias/experiencias2.png" alt="Experiencias 2"
                                class="w-full h-full object-cover transform group-hover:scale-110 transition-transform duration-500">
                            <div class="absolute inset-0 bg-gradient-to-t from-black/60 to-transparent"></div>
                            <span
                                class="absolute top-4 right-4 bg-green-100 text-green-800 px-4 py-2 rounded-full text-sm font-medium shadow-md">
                                <i class="fas fa-check-circle mr-2"></i>Confirmada
                            </span>
                        </div>
                        <div class="p-6">
                            <h3 class="text-xl font-bold text-gray-800 mb-2">Pareja disfrutando de una cena con cócteles junto al mar, con una vista panorámica de la ciudad.</h3>
                            <div class="flex items-center text-sm text-gray-600">
                                <i class="fas fa-calendar-alt mr-2"></i>
                                <span>10 Diciembre 2023</span>
                            </div>
                        </div>
                    </div>

                    <!-- Image Card 3 -->
                    <div class="group relative bg-white rounded-2xl shadow-2xl hover:shadow-3xl transition-all duration-500 cursor-pointer overflow-hidden"
                        onclick="openModal('./public/categoriasGalery/experiencias/experiencias3.jpg', 'Espacio al aire libre con mesas y sombrillas blancas, rodeado de naturaleza y un ambiente relajado.', '12 Octubre 2023', '3.8 MB')">
                        <div class="relative aspect-video overflow-hidden">
                            <img src="./public/categoriasGalery/experiencias/experiencias3.jpg" alt="Experiencias 3"
                                class="w-full h-full object-cover transform group-hover:scale-110 transition-transform duration-500">
                            <div class="absolute inset-0 bg-gradient-to-t from-black/60 to-transparent"></div>
                            <span
                                class="absolute top-4 right-4 bg-green-100 text-green-800 px-4 py-2 rounded-full text-sm font-medium shadow-md">
                                <i class="fas fa-check-circle mr-2"></i>Confirmada
                            </span>
                        </div>
                        <div class="p-6">
                            <h3 class="text-xl font-bold text-gray-800 mb-2">Espacio al aire libre con mesas y sombrillas blancas, rodeado de naturaleza y un ambiente relajado.</h3>
                            <div class="flex items-center text-sm text-gray-600">
                                <i class="fas fa-calendar-alt mr-2"></i>
                                <span>12 Octubre 2023</span>
                            </div>
                        </div>
                    </div>

                    <!-- Image Card 4 -->
                    <div class="group relative bg-white rounded-2xl shadow-2xl hover:shadow-3xl transition-all duration-500 cursor-pointer overflow-hidden"
                        onclick="openModal('./public/categoriasGalery/experiencias/experiencias4.jpg', 'Vista de una casa sobre pilotes en el mar, con gaviotas volando al atardecer.', '10 Abril 2023', '3.8 MB')">
                        <div class="relative aspect-video overflow-hidden">
                            <img src="./public/categoriasGalery/experiencias/experiencias4.jpg" alt="Experiencias 4"
                                class="w-full h-full object-cover transform group-hover:scale-110 transition-transform duration-500">
                            <div class="absolute inset-0 bg-gradient-to-t from-black/60 to-transparent"></div>
                            <span
                                class="absolute top-4 right-4 bg-green-100 text-green-800 px-4 py-2 rounded-full text-sm font-medium shadow-md">
                                <i class="fas fa-check-circle mr-2"></i>Confirmada
                            </span>
                        </div>
                        <div class="p-6">
                            <h3 class="text-xl font-bold text-gray-800 mb-2">Vista de una casa sobre pilotes en el mar, con gaviotas volando al atardecer.</h3>
                            <div class="flex items-center text-sm text-gray-600">
                                <i class="fas fa-calendar-alt mr-2"></i>
                                <span>10 Abril 2023</span>
                            </div>
                        </div>
                    </div>

                    <!-- Image Card 5 -->
                    <div class="group relative bg-white rounded-2xl shadow-2xl hover:shadow-3xl transition-all duration-500 cursor-pointer overflow-hidden"
                        onclick="openModal('./public/categoriasGalery/experiencias/experiencias5.jpg', 'Pareja cenando junto a una ventana con vista a una puesta de sol espectacular.', '12 Diciembre 2023', '3.8 MB')">
                        <div class="relative aspect-video overflow-hidden">
                            <img src="./public/categoriasGalery/experiencias/experiencias5.jpg" alt="Experiencias 5"
                                class="w-full h-full object-cover transform group-hover:scale-110 transition-transform duration-500">
                            <div class="absolute inset-0 bg-gradient-to-t from-black/60 to-transparent"></div>
                            <span
                                class="absolute top-4 right-4 bg-green-100 text-green-800 px-4 py-2 rounded-full text-sm font-medium shadow-md">
                                <i class="fas fa-check-circle mr-2"></i>Confirmada
                            </span>
                        </div>
                        <div class="p-6">
                            <h3 class="text-xl font-bold text-gray-800 mb-2">Pareja cenando junto a una ventana con vista a una puesta de sol espectacular..</h3>
                            <div class="flex items-center text-sm text-gray-600">
                                <i class="fas fa-calendar-alt mr-2"></i>
                                <span>12 Diciembre 2023</span>
                            </div>
                        </div>
                    </div>

            <!-- Image Card 6 -->
                    <div class="group relative bg-white rounded-2xl shadow-2xl hover:shadow-3xl transition-all duration-500 cursor-pointer overflow-hidden"
                        onclick="openModal('./public/categoriasGalery/experiencias/experiencias6.jpg', 'Bar animado con bartenders sirviendo bebidas y clientes disfrutando de la experiencia.', '12 Septiembre 2023', '3.8 MB')">
                        <div class="relative aspect-video overflow-hidden">
                            <img src="./public/categoriasGalery/experiencias/experiencias6.jpg" alt="Experiencias 6"
                                class="w-full h-full object-cover transform group-hover:scale-110 transition-transform duration-500">
                            <div class="absolute inset-0 bg-gradient-to-t from-black/60 to-transparent"></div>
                            <span
                                class="absolute top-4 right-4 bg-green-100 text-green-800 px-4 py-2 rounded-full text-sm font-medium shadow-md">
                                <i class="fas fa-check-circle mr-2"></i>Confirmada
                            </span>
                        </div>
                        <div class="p-6">
                            <h3 class="text-xl font-bold text-gray-800 mb-2">Bar animado con bartenders sirviendo bebidas y clientes disfrutando de la experiencia.</h3>
                            <div class="flex items-center text-sm text-gray-600">
                                <i class="fas fa-calendar-alt mr-2"></i>
                                <span>12 Septiembre 2023</span>
                            </div>
                        </div>
                    </div>

                </div>
            </main>
        </div>

        <!-- Modal Premium -->
        <div id="imageModal" class="fixed inset-0 bg-black/90 hidden z-50 transition-opacity duration-300">
            <div
                class="absolute top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2 bg-white rounded-3xl w-11/12 md:w-3/4 lg:w-2/3 overflow-hidden shadow-2xl">
                <!-- Header del Modal -->
                <div class="relative">
                    <button onclick="closeModal()"
                        class="absolute top-4 right-4 text-white hover:text-yellow-500 transition-colors z-10 bg-black/20 p-2 rounded-full backdrop-blur-sm">
                        <i class="fas fa-times text-2xl"></i>
                    </button>
                    <div class="relative h-[400px] overflow-hidden">
                        <img id="modalImage" alt="Imagen detallada"
                            class="w-full h-full object-cover transition-transform duration-500 hover:scale-105">
                        <div class="absolute inset-0 bg-gradient-to-t from-black/60 via-black/20 to-transparent"></div>
                        <h2 id="modalTitle" class="absolute bottom-6 left-8 text-3xl font-bold text-white"></h2>
                    </div>
                </div>

                <!-- Contenido del Modal -->
                <div class="p-8 bg-white">
                    <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
                        <!-- Fecha -->
                        <div class="flex items-center space-x-4 bg-gray-50 p-4 rounded-xl">
                            <div class="bg-yellow-100 p-3 rounded-lg">
                                <i class="fas fa-calendar-alt text-yellow-600 text-xl"></i>
                            </div>
                            <div>
                                <p class="text-sm text-gray-500 font-medium">Fecha</p>
                                <span id="modalDate" class="text-lg text-gray-700 font-semibold"></span>
                            </div>
                        </div>

                        <!-- Tamaño -->
                        <div class="flex items-center space-x-4 bg-gray-50 p-4 rounded-xl">
                            <div class="bg-blue-100 p-3 rounded-lg">
                                <i class="fas fa-hdd text-blue-600 text-xl"></i>
                            </div>
                            <div>
                                <p class="text-sm text-gray-500 font-medium">Tamaño</p>
                                <span id="modalSize" class="text-lg text-gray-700 font-semibold"></span>
                            </div>
                        </div>

                        <!-- Estado -->
                        <div class="flex items-center space-x-4 bg-gray-50 p-4 rounded-xl">
                            <div class="bg-green-100 p-3 rounded-lg">
                                <i class="fas fa-check-circle text-green-600 text-xl"></i>
                            </div>
                            <div>
                                <p class="text-sm text-gray-500 font-medium">Estado</p>
                                <span class="text-lg text-gray-700 font-semibold">Confirmada</span>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <script>
            function openModal(imageSrc, title, date, size) {
                const modal = document.getElementById('imageModal');
                document.getElementById('modalImage').src = imageSrc;
                document.getElementById('modalTitle').innerText = title;
                document.getElementById('modalDate').innerText = date;
                document.getElementById('modalSize').innerText = size;

                // Añadir las clases una por una para la animación
                modal.classList.remove('hidden');
                setTimeout(() => {
                    modal.classList.add('opacity-100');
                }, 10);
            }

            function closeModal() {
                const modal = document.getElementById('imageModal');
                modal.classList.remove('opacity-100');
                setTimeout(() => {
                    modal.classList.add('hidden');
                }, 300);
            }
        </script>
    </body>

    </html>