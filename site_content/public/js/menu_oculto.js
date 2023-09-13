// Función para mostrar/ocultar el menú y el overlay
function toggleNav(event) {
  if (event.target.classList.contains('link')) {
    mainNav.classList.remove('show-nav');
    overlay.style.display = 'none';
  } else {
    mainNav.classList.toggle('show-nav');
    overlay.style.display = mainNav.classList.contains('show-nav') ? 'block' : 'none';
  }
}

// Obtener referencias a los elementos necesarios
var menuButton = document.getElementById('menu-button');
var mainNav = document.getElementById('main-nav');
var overlay = document.createElement('div');
overlay.className = 'overlay';

// Agregar el overlay al DOM
document.body.appendChild(overlay);

// Agregar el evento de clic al botón
menuButton.addEventListener('click', toggleNav);
overlay.addEventListener('click', toggleNav); // Ocultar el menú al hacer clic en el overlay

// Obtener referencias a los elementos del menú
var menuLinks = document.querySelectorAll('.link');

// Agregar el evento de clic a cada elemento del menú
menuLinks.forEach(function(link) {
  link.addEventListener('click', toggleNav);
});
