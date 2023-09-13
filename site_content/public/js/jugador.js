const jugadorTableBody = document.getElementById('jugador-HTML-dinamic');
// Obtén el ID del jugador de la URL
const urlParams = new URLSearchParams(window.location.search);
const jugadorID = urlParams.get('jugadorID');
console.log('llegué al jugador.js del cliente');
// Verifica si tenemos el ID del jugador
if (jugadorID) {
    fetch(`http://localhost:3000/jugador/${jugadorID}`)
        .then(response => {
            console.log(response); // vemos que hay en response
            return response.json();
        })
        .then(data => {
            const jugador = data[0]; // Suponemos que solo se espera un jugador

            const row = `
            <div class="Avatar">
            <div id="faceCard" class="faceCard">

			${jugador.RecetaHTML}
		</div>
			</div>
            <div class="main_jugador">
            <h3>
                <span class="jugador-nombre">
                    ${jugador.Nombre} ${jugador.Apellido} ${jugador.Apodo ? '(' + jugador.Apodo + ')' : ''}
                </span>
            </h3>
            <h3>
                <span class="star-ratings-css" title="perfect">
                    <i style="width: ${(Math.min(jugador.Valoracion * 80, 100)).toFixed(2)}%"></i>
                </span>
                <span class="valoracion">
                    (${(Math.min(jugador.Valoracion * 80, 100)).toFixed(2)})
                </span>
            </h3>
            <h3>
                <span class="partidos-icon">
                    <img class="partidos" src="images/partidos.png" alt="partidos">
                </span>
                <span class="partidos-valor">
                    ${jugador.PartidosJugados}
                </span>
            </h3>
            <h3>
                <span class="tarjetas-icon">
                    <img class="tarjetas" src="images/tarjetas.png" alt="tarjetas">
                </span>
                <span class="tarjetas-valor">
                    ${jugador.SuspensionesTotales}
                </span>
            </h3>
        </div>
        
      `;

            jugadorTableBody.innerHTML = row;
        })
        .catch(error => {
            console.error('Error al obtener los datos del jugador:', error);
        });
} else {
    // Maneja el caso en el que no se proporcionó un ID de jugador válido
    console.error('ID de jugador no válido.');
}

