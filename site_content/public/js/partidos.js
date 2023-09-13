const partidosTableBody = document.getElementById('partidos-table-body');

fetch('/partidos')
  .then(response => response.json())
  .then(data => {
    // Datos que devuelve la consulta: PartidoID, FechaPartido, GolesEquipo1, GolesEquipo2, PremioEquipo1, PremioEquipo2
    const rows = data.map(partidos => `
      <tr>
        <td><a class="player-link" href="partido.html?partidoID=${partidos.PartidoID}">${partidos.FechaPartido}</a></td>
        <td>${partidos.GolesEquipo1} - ${partidos.GolesEquipo2}</td>
        <td>${(partidos.PremioEquipo1 * 80).toFixed(2)}</td>
        <td>${(partidos.PremioEquipo2 * 80).toFixed(2)}</td>
      </tr>
    `);

    partidosTableBody.innerHTML = rows.join('');
  });
