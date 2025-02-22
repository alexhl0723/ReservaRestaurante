<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Eventos - Naútica Plus</title>
        <script src="https://unpkg.com/@tailwindcss/browser@4"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <link rel="stylesheet" href="css/styles.css">
    </head>

    <body class="font-[Cinzel_Variable] bg-gradient-to-br from-gray-800 via-gray-900 to-gray-800">
        <jsp:include page="header.jsp" />

        <div class="container mx-auto px-4 min-h-screen">
            <!-- Hero Section -->
            <section class="flex items-center justify-center py-12 mb-20 md:py-24">
                <div class="text-center text-[#F3F4F6] max-w-4xl w-full">
                    <h1 class="text-3xl mt-15 md:text-5xl lg:text-6xl font-bold mb-8 animate-fade-in">
                        Nuevo establecimiento en <span class="text-yellow-500">San Juan de Lurigancho</span>
                    </h1>
                    <h2 class="text-lg md:text-2xl lg:text-3xl mb-8 text-gray-300">
                        Una experiencia gastronómica única frente al mar
                    </h2>

                    <!-- Countdown Section -->
                    <div
                        class="bg-[#1F2937]/80 backdrop-blur-sm p-4 mt-20 md:p-8 rounded-xl max-w-2xl mx-auto mb-8 shadow-lg border border-yellow-500/20">
                        <h3 class="text-xl md:text-2xl font-semibold mb-4 text-yellow-500" id="countDescription">
                            A pocos días
                        </h3>
                        <div class="countdown-grid grid grid-cols-4 gap-2 md:gap-4 mb-6">
                            <div
                                class="bg-yellow-500/10 hover:bg-yellow-500/20 transition-colors p-2 md:p-4 rounded-lg text-center shadow-md">
                                <span class="block text-xl md:text-3xl lg:text-4xl font-bold text-yellow-500"
                                    id="days">00</span>
                                <p class="text-xs md:text-sm text-gray-300">Días</p>
                            </div>
                            <div
                                class="bg-yellow-500/10 hover:bg-yellow-500/20 transition-colors p-2 md:p-4 rounded-lg text-center shadow-md">
                                <span class="block text-xl md:text-3xl lg:text-4xl font-bold text-yellow-500"
                                    id="hours">00</span>
                                <p class="text-xs md:text-sm text-gray-300">Horas</p>
                            </div>
                            <div
                                class="bg-yellow-500/10 hover:bg-yellow-500/20 transition-colors p-2 md:p-4 rounded-lg text-center shadow-md">
                                <span class="block text-xl md:text-3xl lg:text-4xl font-bold text-yellow-500"
                                    id="minutes">00</span>
                                <p class="text-xs md:text-sm text-gray-300">Minutos</p>
                            </div>
                            <div
                                class="bg-yellow-500/10 hover:bg-yellow-500/20 transition-colors p-2 md:p-4 rounded-lg text-center shadow-md">
                                <span class="block text-xl md:text-3xl lg:text-4xl font-bold text-yellow-500"
                                    id="seconds">00</span>
                                <p class="text-xs md:text-sm text-gray-300">Segundos</p>
                            </div>
                        </div>
                        <p class="text-sm md:text-lg mb-6 px-2 text-gray-300" id="eventDescription">
                            Disfruta de una velada inolvidable con vista al mar y fuegos artificiales
                        </p>
                        <button id="reservaBtn"
                            class="hidden w-full md:w-auto bg-yellow-500 text-[#1F2937] px-8 py-4 rounded-lg hover:bg-yellow-500/90 transition-all duration-300 shadow-lg font-semibold">
                            ¡Reserva Ahora!
                        </button>
                    </div>
                </div>
            </section>

            <!-- Características -->
            <section class="py-12 md:py-20">
                <div class="max-w-6xl mx-auto">
                    <h2 class="text-3xl md:text-4xl lg:text-5xl font-bold text-yellow-500 text-center mb-12">
                        Lo que nos hace especiales
                    </h2>

                    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                        <div
                            class="bg-[#1F2937] hover:scale-105 transition-transform rounded-xl overflow-hidden shadow-xl border border-yellow-500/20">
                            <div class="relative">
                                <img class="w-full h-48 object-cover" src="./public/local2.webp" alt="Vista al Mar">
                                <div class="absolute inset-0 bg-gradient-to-t from-[#1F2937] to-transparent"></div>
                            </div>
                            <div class="p-6">
                                <h3 class="text-lg md:text-xl font-bold mb-3 text-yellow-500">Vista al Mar</h3>
                                <p class="text-sm md:text-base text-gray-300">
                                    Disfruta de impresionantes atardeceres y la brisa marina mientras cenas.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Eventos Especiales -->
            <section class="pb-12 md:pb-20">
                <div class="max-w-6xl mx-auto">
                    <h2 class="text-3xl md:text-4xl lg:text-5xl font-bold text-yellow-500 text-center mb-12">
                        Próximos Eventos
                    </h2>

                    <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
                        <div
                            class="bg-[#1F2937] rounded-xl overflow-hidden hover:scale-105 transition-transform shadow-xl border border-yellow-500/20">
                            <div class="relative">
                                <img src="./public/local3.webp" alt="Cena romántica" class="w-full h-56 object-cover">
                                <div class="absolute inset-0 bg-gradient-to-t from-[#1F2937] to-transparent"></div>
                            </div>
                            <div class="p-6">
                                <h3 class="text-xl md:text-2xl font-bold text-yellow-500 mb-3">Cenas Románticas</h3>
                                <p class="text-sm md:text-base text-gray-300 mb-6">
                                    Todos los jueves, cena especial para parejas con música en vivo
                                </p>
                                <button
                                    class="text-yellow-500 border-2 border-yellow-500 px-6 py-3 text-sm md:text-base rounded-full hover:bg-yellow-500 hover:text-[#1F2937] transition-all duration-300">
                                    Más información
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>

        <script>
            document.addEventListener('DOMContentLoaded', function () {
                const elements = {
                    days: document.getElementById('days'),
                    hours: document.getElementById('hours'),
                    minutes: document.getElementById('minutes'),
                    seconds: document.getElementById('seconds'),
                    button: document.getElementById('reservaBtn'),
                    p: document.getElementById('eventDescription'),
                    h3: document.getElementById('countDescription')
                };

                function updateCountdown() {
                    const targetDate = new Date('2025-02-27 22:51:30');
                    const now = new Date();
                    const difference = targetDate.getTime() - now.getTime();

                    if (difference <= 0) {
                        if (elements.button) {
                            elements.button.classList.remove('hidden');
                            elements.button.classList.add('animate-fade-in');
                        }
                        if (elements.p) {
                            elements.p.innerText = '¡El evento ha comenzado!';
                        }
                        if (elements.h3) {
                            elements.h3.innerText = '¡Inicia la experiencia!';
                        }
                        ['days', 'hours', 'minutes', 'seconds'].forEach(unit => {
                            if (elements[unit]) elements[unit].innerText = '00';
                        });
                        clearInterval(countdownInterval);
                        return;
                    }

                    const days = Math.floor(difference / (1000 * 60 * 60 * 24));
                    const hours = Math.floor((difference % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
                    const minutes = Math.floor((difference % (1000 * 60 * 60)) / (1000 * 60));
                    const seconds = Math.floor((difference % (1000 * 60)) / 1000);

                    if (elements.days) elements.days.innerText = days.toString().padStart(2, '0');
                    if (elements.hours) elements.hours.innerText = hours.toString().padStart(2, '0');
                    if (elements.minutes) elements.minutes.innerText = minutes.toString().padStart(2, '0');
                    if (elements.seconds) elements.seconds.innerText = seconds.toString().padStart(2, '0');
                }

                const countdownInterval = setInterval(updateCountdown, 1000);
                updateCountdown();
            });
        </script>

        <jsp:include page="footer.jsp" />
    </body>

    </html>