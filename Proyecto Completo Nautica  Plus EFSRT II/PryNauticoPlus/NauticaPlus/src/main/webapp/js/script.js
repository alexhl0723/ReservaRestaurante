/**
 * 
 */

document.addEventListener('DOMContentLoaded', function () {
    const menuToggle = document.getElementById('menu-toggle');
    const closeMenu = document.getElementById('close-menu');
    const mobileMenu = document.getElementById('mobile-menu');
    const mobileLinks = document.querySelectorAll('.mobile-link');
    let isMenuOpen = false;

    function toggleMenu() {
        isMenuOpen = !isMenuOpen;

        if (isMenuOpen) {
            mobileMenu.classList.remove('translate-x-full');
            document.body.style.overflow = 'hidden';

            // Animar enlaces
            mobileLinks.forEach((link, index) => {
                link.style.animation = `fadeInUp 0.6s ease forwards ${index * 0.1}s`;
            });
        } else {
            mobileMenu.classList.add('translate-x-full');
            document.body.style.overflow = '';

            // Resetear animaciones
            mobileLinks.forEach(link => {
                link.style.animation = 'none';
            });
        }
    }

    menuToggle.addEventListener('click', toggleMenu);
    closeMenu.addEventListener('click', toggleMenu);

    // Cerrar menú al hacer click en enlaces
    mobileLinks.forEach(link => {
        link.addEventListener('click', toggleMenu);
    });

    // Cerrar con ESC
    document.addEventListener('keydown', (e) => {
        if (e.key === 'Escape' && isMenuOpen) {
            toggleMenu();
        }
    });


    // Nuevo código para el header transparente
    const header = document.getElementById('header');

    window.addEventListener('scroll', () => {
        if (window.scrollY > 20) {
            header.classList.add('bg-[#1a1a1a]/95', 'backdrop-blur-sm');
        } else {
            header.classList.remove('bg-[#1a1a1a]/95', 'backdrop-blur-sm');
        }
    });
});

