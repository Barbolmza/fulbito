const jugadoresTableBody = document.getElementById('jugadores-table-body');

fetch('/jugadores')
  .then(response => response.json())
  .then(data => {
    const rows = data.map(jugador => `
      <tr>
        <td><a class="player-link" href="jugador.html?jugadorID=${jugador.JugadorID}">${jugador.Nombre} ${jugador.Apellido}</a></td>
        <td>${jugador.Apodo ? jugador.Apodo : ''}</td>
        <td>${jugador.PartidosJugados}</td>
        <td>${jugador.SuspensionesTotales}</td>
        <td>${(Math.min(jugador.Valoracion * 80, 100)).toFixed(2)}</td>
      </tr>
    `);

    jugadoresTableBody.innerHTML = rows.join('');
  });
