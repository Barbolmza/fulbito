const partidoTableBody = document.getElementById('partido-HTML-dinamic');
// Obtén el ID del partido de la URL
const urlParams = new URLSearchParams(window.location.search);
const partidoID = urlParams.get('partidoID');
console.log('llegué al partido.js del cliente');
// Verifica si tenemos el ID del partido
if (partidoID) {
    fetch(`http://localhost:3000/partido/${partidoID}`)
        .then(response => {
            console.log(response); // vemos que hay en response
            return response.json();
        })
        .then(data => {
            const partido = data.partido; // Accede a la propiedad 'partido' del objeto 'data'
            const equipo1 = data.equipo1; // Accede a la propiedad 'equipo1' del objeto 'data'
            const equipo2 = data.equipo2; // Accede a la propiedad 'equipo2' del objeto 'data'
            console.log(partido); // Verifica el contenido de 'partido'
            console.log(equipo1); // Verifica el contenido de 'equipo1'
            console.log(equipo2); // Verifica el contenido de 'equipo2'

            const equipo1rows = equipo1.map(jugador => `
            <tr>
            <td>${jugador.Nombre1} ${jugador.Apellido1} ${jugador.Apodo1 ? '(' + jugador.Apodo1 + ')' : ''}</td>
            </tr>
            `);

            equipo1HTML = equipo1rows.join('\n');

            const equipo2rows = equipo2.map(jugador => `
            <tr>
            <td>${jugador.Nombre2} ${jugador.Apellido2} ${jugador.Apodo2 ? '(' + jugador.Apodo2 + ')' : ''}</td>
            </tr>
            `);

            equipo2HTML = equipo2rows.join('\n');
            const row = `
            <br>
				<br>
				<br>
                <br>
				<br>
				<div class="grilla">
					<div class="cabecera"> 
						<h2 id="tituloPartido">Encuentro ${partido[0].FechaPartido}</h2>
					</div>
					<div class="subCabecera"> 
						<h2>${partido[0].GolesEquipo1} - ${partido[0].GolesEquipo2}</h2>
					</div>
					<div class="columnaIzquierda"> 
						<table class="blueTable">
							<thead>
							<tr>
							<th>Equipo 1</th>
							</tr>
							</thead>
							<tbody>
							${equipo1HTML}
							</table>
					</div>
					<div class="columnaDerecha"> 
						<table class="blueTable">
							<thead>
							<tr>
							<th>Equipo 2</th>
							</tr>
							</thead>
							<tbody>
							${equipo2HTML}
							</table>
					</div>
				</div>
				
			  </div>
        
      `;

            partidoTableBody.innerHTML = row;
        })
        .catch(error => {
            console.error('Error al obtener los datos del partido:', error);
        });
} else {
    // Maneja el caso en el que no se proporcionó un ID de partido válido
    console.error('ID de partido no válido.');

}

