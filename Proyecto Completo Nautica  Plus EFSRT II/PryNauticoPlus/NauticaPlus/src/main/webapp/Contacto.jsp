<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Contacto - Náutica Plus</title>
        <script src="https://unpkg.com/@tailwindcss/browser@4"></script>

        <style>
            .nautical-gradient {
                background: linear-gradient(135deg, #F59E0B 0%, #FCD34D 100%);
            }

            .hover-scale {
                transition: transform 0.3s ease;
            }

            .hover-scale:hover {
                transform: scale(1.02);
            }
        </style>
    </head>

    <body class="font-[Cinzel_Variable] bg-gradient-to-br from-gray-800 via-gray-900 to-gray-800">

        <jsp:include page="header.jsp" />

        <div class="min-h-screen p-4 md:p-8">
            <!-- Hero Section -->
            <div
                class="relative rounded-3xl mb-12 mt-20 overflow-hidden shadow-2xl">
                <!-- Background Pattern -->
                <div class="absolute inset-0 bg-noise opacity-20"></div>

                <div class="relative max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-24">
                    <div class="text-center">
                        <!-- Título principal -->
                        <h1
                            class="text-5xl md:text-6xl font-extrabold text-white mb-6 transform hover:scale-105 transition-transform duration-300">
                            Contacta con <span class="text-yellow-500">Náutica Plus</span>
                        </h1>
                        <!-- Subtítulo -->
                        <p class="text-xl md:text-2xl text-white/90 max-w-2xl mx-auto mb-8">
                            Tu aventura náutica comienza aquí - Estamos para ayudarte
                        </p>
                    </div>
                </div>


            </div>


            <!-- Main Content -->
            <div class="max-w-7xl mx-auto">
                <div class="grid grid-cols-1 lg:grid-cols-2 gap-8">
                    <!-- Left Column -->
                    <div class="space-y-8">
                        <!-- Contact Information Card -->
                        <div
                            class="bg-gradient-to-br from-gray-800 to-gray-700 rounded-3xl p-8 md:p-10 shadow-2xl hover:shadow-yellow-500/10 transition-all duration-300">
                            <h2 class="text-3xl font-bold text-white mb-10 flex items-center group">
                                <span
                                    class="w-10 h-10 bg-yellow-500 rounded-xl mr-4 transform group-hover:rotate-6 transition-transform duration-300"></span>
                                Información de Contacto
                            </h2>

                            <div class="space-y-8">
                                <!-- Phone -->
                                <div
                                    class="flex items-center space-x-6 group p-4 rounded-2xl hover:bg-gray-700/50 transition-all duration-300 border border-transparent hover:border-yellow-500/20">
                                    <div
                                        class="flex-shrink-0 w-16 h-16 bg-yellow-100 rounded-2xl flex items-center justify-center transition-colors group-hover:bg-yellow-500">
                                        <svg class="w-8 h-8 text-yellow-500 group-hover:text-white transition-colors"
                                            fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z" />
                                        </svg>
                                    </div>
                                    <div class="flex-1">
                                        <p
                                            class="text-sm font-medium text-gray-300 group-hover:text-yellow-500 transition-colors">
                                            Teléfono 24/7</p>
                                        <p
                                            class="text-xl font-bold text-white group-hover:text-yellow-400 transition-colors">
                                            +51 912 345 678</p>
                                    </div>
                                </div>

                                <!-- Email -->
                                <div
                                    class="flex items-center space-x-6 group p-4 rounded-2xl hover:bg-gray-700/50 transition-all duration-300 border border-transparent hover:border-yellow-500/20">
                                    <div
                                        class="flex-shrink-0 w-16 h-16 bg-yellow-100 rounded-2xl flex items-center justify-center transition-colors group-hover:bg-yellow-500">
                                        <svg class="w-8 h-8 text-yellow-500 group-hover:text-white transition-colors"
                                            fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
                                        </svg>
                                    </div>
                                    <div class="flex-1">
                                        <p
                                            class="text-sm font-medium text-gray-300 group-hover:text-yellow-500 transition-colors">
                                            Email</p>
                                        <p
                                            class="text-xl font-bold text-white group-hover:text-yellow-400 transition-colors">
                                            info@nauticaplus.com</p>
                                    </div>
                                </div>

                                <!-- Address -->
                                <div
                                    class="flex items-center space-x-6 group p-4 rounded-2xl hover:bg-gray-700/50 transition-all duration-300 border border-transparent hover:border-yellow-500/20">
                                    <div
                                        class="flex-shrink-0 w-16 h-16 bg-yellow-100 rounded-2xl flex items-center justify-center transition-colors group-hover:bg-yellow-500">
                                        <svg class="w-8 h-8 text-yellow-500 group-hover:text-white transition-colors"
                                            fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z" />
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                d="M15 11a3 3 0 11-6 0 3 3 0 016 0z" />
                                        </svg>
                                    </div>
                                    <div class="flex-1">
                                        <p
                                            class="text-sm font-medium text-gray-300 group-hover:text-yellow-500 transition-colors">
                                            Dirección</p>
                                        <p
                                            class="text-xl font-bold text-white group-hover:text-yellow-400 transition-colors">
                                            Espigón 4 Circuito de Playas</p>
                                        <p class="text-sm text-gray-400 group-hover:text-yellow-300 transition-colors">
                                            Miraflores – Lima, Perú</p>
                                    </div>
                                </div>

                                <!-- Schedule -->
                                <div
                                    class="flex items-center space-x-6 group p-4 rounded-2xl hover:bg-gray-700/50 transition-all duration-300 border border-transparent hover:border-yellow-500/20">
                                    <div
                                        class="flex-shrink-0 w-16 h-16 bg-yellow-100 rounded-2xl flex items-center justify-center transition-colors group-hover:bg-yellow-500">
                                        <svg class="w-8 h-8 text-yellow-500 group-hover:text-white transition-colors"
                                            fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z" />
                                        </svg>
                                    </div>
                                    <div class="flex-1">
                                        <p
                                            class="text-sm font-medium text-gray-300 group-hover:text-yellow-500 transition-colors">
                                            Horario</p>
                                        <p
                                            class="text-xl font-bold text-white group-hover:text-yellow-400 transition-colors">
                                            Lun - Dom: 08:00 - 20:00</p>
                                        <p class="text-sm text-gray-400 group-hover:text-yellow-300 transition-colors">
                                            Servicio de emergencias 24/7</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Map Card -->
                        <div class="bg-gradient-to-br from-gray-800 to-gray-700 rounded-3xl p-8 shadow-lg hover-scale">
                            <h2 class="text-2xl font-bold text-white mb-8 flex items-center">
                                <span class="w-8 h-8 bg-yellow-500 rounded-lg mr-3"></span>
                                Ubicación
                            </h2>
                            <div class="relative w-full h-[400px] rounded-xl overflow-hidden">
                                <iframe
                                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3900.8295470557123!2d-77.03083372393576!3d-12.131802143880761!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105b7e1a1c7a3f5%3A0x3f5f5f5f5f5f5f5f!2sCircuito%20de%20Playas%20de%20la%20Costa%20Verde!5e0!3m2!1ses!2spe!4v1708022400000!5m2!1ses!2spe"
                                    width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy"
                                    class="absolute inset-0">
                                </iframe>
                            </div>
                        </div>
                    </div>

                   <!-- Contact Form Section -->
<div class="max-w-4xl mx-auto px-4 py-12">
    <div class="bg-gradient-to-br from-gray-800 to-gray-700 rounded-3xl p-8 shadow-xl hover:shadow-2xl transition-all duration-300">
        <!-- Form Header -->
        <div class="text-center mb-8">
            <h2 class="text-3xl font-bold text-white mb-2">Contáctanos</h2>
            <p class="text-gray-100">Estamos aquí para ayudarte con cualquier consulta o problema</p>
        </div>

        <form id="contactForm" class="space-y-6">
            <!-- Personal Information -->
            <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                <div class="space-y-2">
                    <label for="name" class="block text-sm font-medium text-white">Nombre completo *</label>
                    <input type="text" id="name" name="name" required
                        class="w-full px-4 py-3 rounded-xl border-2 border-gray-600 focus:border-yellow-500 focus:ring-2 focus:ring-yellow-500/20 transition-colors bg-white/90" />
                </div>

                <div class="space-y-2">
                    <label for="email" class="block text-sm font-medium text-white">Email *</label>
                    <input type="email" id="email" name="email" required
                        class="w-full px-4 py-3 rounded-xl border-2 border-gray-600 focus:border-yellow-500 focus:ring-2 focus:ring-yellow-500/20 transition-colors bg-white/90" />
                </div>
            </div>

            <!-- Contact and Reference Number -->
            <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                <div class="space-y-2">
                    <label for="phone" class="block text-sm font-medium text-white">Teléfono *</label>
                    <input type="tel" id="phone" name="phone" required
                        class="w-full px-4 py-3 rounded-xl border-2 border-gray-600 focus:border-yellow-500 focus:ring-2 focus:ring-yellow-500/20 transition-colors bg-white/90" />
                </div>

                <div class="space-y-2">
                    <label for="reservationNumber" class="block text-sm font-medium text-white">Número de reserva (si aplica)</label>
                    <input type="text" id="reservationNumber" name="reservationNumber"
                        class="w-full px-4 py-3 rounded-xl border-2 border-gray-600 focus:border-yellow-500 focus:ring-2 focus:ring-yellow-500/20 transition-colors bg-white/90" />
                </div>
            </div>

            <!-- Inquiry Type -->
            <div class="space-y-2">
                <label for="subject" class="block text-sm font-medium text-white">Tipo de consulta *</label>
                <select id="subject" name="subject" required
                    class="w-full px-4 py-3 rounded-xl border-2 border-gray-600 focus:border-yellow-500 focus:ring-2 focus:ring-yellow-500/20 transition-colors bg-white/90">
                    <option value="">Seleccionar motivo</option>
                    <option value="reservation">Problema con reserva</option>
                    <option value="technical">Problema técnico con la web</option>
                    <option value="service">Consulta sobre servicios</option>
                    <option value="complaint">Reclamación</option>
                    <option value="suggestion">Sugerencia</option>
                    <option value="other">Otros</option>
                </select>
            </div>

            <!-- Message -->
            <div class="space-y-2">
                <label for="message" class="block text-sm font-medium text-white">Mensaje *</label>
                <textarea id="message" name="message" rows="4" required
                    class="w-full px-4 py-3 rounded-xl border-2 border-gray-600 focus:border-yellow-500 focus:ring-2 focus:ring-yellow-500/20 transition-colors bg-white/90"
                    placeholder="Describe tu consulta o problema en detalle..."></textarea>
            </div>

            <!-- Priority -->
            <div class="space-y-2">
                <label for="priority" class="block text-sm font-medium text-white">Prioridad</label>
                <select id="priority" name="priority"
                    class="w-full px-4 py-3 rounded-xl border-2 border-gray-600 focus:border-yellow-500 focus:ring-2 focus:ring-yellow-500/20 transition-colors bg-white/90">
                    <option value="normal">Normal</option>
                    <option value="urgent">Urgente</option>
                </select>
            </div>

            <!-- Terms and Newsletter -->
            <div class="space-y-4">
                <div class="flex items-center space-x-2">
                    <input type="checkbox" id="newsletter" name="newsletter"
                        class="w-4 h-4 text-yellow-500 border-gray-300 rounded focus:ring-yellow-500" />
                    <label for="newsletter" class="text-sm text-white">
                        Deseo recibir novedades y ofertas especiales de Náutica Plus
                    </label>
                </div>

                <div class="flex items-center space-x-2">
                    <input type="checkbox" id="terms" name="terms" required
                        class="w-4 h-4 text-yellow-500 border-gray-300 rounded focus:ring-yellow-500" />
                    <label for="terms" class="text-sm text-white">
                        Acepto los términos y condiciones y la política de privacidad *
                    </label>
                </div>
            </div>

            <!-- Submit Button -->
            <button type="submit"
                class="w-full px-6 py-4 bg-yellow-500 text-white font-semibold rounded-xl hover:bg-yellow-600 focus:outline-none focus:ring-2 focus:ring-yellow-500 focus:ring-offset-2 transition-all duration-200 transform hover:scale-[1.02] hover:shadow-lg">
                Enviar mensaje
            </button>

            <p class="text-sm text-gray-300 text-center">
                * Campos obligatorios
            </p>
        </form>
    </div>
    
</div>


<!-- Toast Notification -->
<div id="toast"
    class="fixed bottom-5 right-5 bg-yellow-500 text-white px-8 py-4 rounded-xl shadow-lg transform translate-y-full opacity-0 transition-all duration-500 flex items-center space-x-2">
    <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
    </svg>
    <span>Mensaje enviado con éxito</span>
</div>
 <jsp:include page="footer.jsp" />

<script>
document.addEventListener('DOMContentLoaded', function() {
    const form = document.getElementById('contactForm');
    const toast = document.getElementById('toast');

    // Phone number formatting
    const phoneInput = document.getElementById('phone');
    phoneInput.addEventListener('input', function(e) {
        let value = this.value.replace(/\D/g, '');
        if (value.length > 9) value = value.slice(0, 9);
        
        if (value.length >= 6) {
            this.value = value.slice(0, 3) + ' ' + value.slice(3, 6) + ' ' + value.slice(6);
        } else if (value.length >= 3) {
            this.value = value.slice(0, 3) + ' ' + value.slice(3);
        } else {
            this.value = value;
        }
    });

    // Email validation
    const emailInput = document.getElementById('email');
    emailInput.addEventListener('blur', function() {
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailRegex.test(this.value)) {
            showFieldError(this, 'Por favor, introduce un email válido');
        } else {
            removeFieldError(this);
        }
    });

    // Form submission
    form.addEventListener('submit', function(e) {
        e.preventDefault();
        
        if (validateForm()) {
            // Here you would typically send the data to your server
            showToast('¡Mensaje recibido! Te responderemos lo antes posible.', 'success');
            form.reset();
        }
    });

    function validateForm() {
        let isValid = true;
        const requiredFields = form.querySelectorAll('[required]');

        requiredFields.forEach(field => {
            if (!field.value.trim()) {
                showFieldError(field, 'Este campo es obligatorio');
                isValid = false;
            } else {
                removeFieldError(field);
            }
        });

        return isValid;
    }

    function showFieldError(field, message) {
        removeFieldError(field);
        field.classList.add('border-red-500');
        
        const errorDiv = document.createElement('div');
        errorDiv.className = 'text-red-400 text-sm mt-1';
        errorDiv.textContent = message;
        
        field.parentElement.appendChild(errorDiv);
    }

    function removeFieldError(field) {
        field.classList.remove('border-red-500');
        const errorDiv = field.parentElement.querySelector('.text-red-400');
        if (errorDiv) errorDiv.remove();
    }

    function showToast(message, type = 'success') {
        const bgColors = {
            success: 'bg-yellow-500',
            error: 'bg-red-500',
            warning: 'bg-yellow-600'
        };

        toast.className = `fixed bottom-5 right-5 ${bgColors[type]} text-white px-8 py-4 rounded-xl shadow-lg transform transition-all duration-500 flex items-center space-x-2`;
        toast.querySelector('span').textContent = message;

        // Show toast
        toast.style.transform = 'translateY(0)';
        toast.style.opacity = '1';

        // Hide after 3 seconds
        setTimeout(() => {
            toast.style.transform = 'translateY(100%)';
            toast.style.opacity = '0';
        }, 3000);
    }
});
</script>



    </body>
       

    </html>