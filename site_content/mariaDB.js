const mysql = require('mysql');

// Configuración de la conexión a la base de datos
const db = mysql.createConnection({
  host: 'db', // Cambia esto si tu base de datos se encuentra en otro host
  user: 'root', // Cambia esto si tu usuario de MySQL es diferente
  password: 'Javier10', // Cambia esto por tu contraseña de MySQL
  database: 'Fulbito' // Reemplaza esto por el nombre real de tu base de datos
});

// Conexión a la base de datos
db.connect((err) => {
  if (err) {
    console.error('Error al conectar a la base de datos:', err);
  } else {
    console.log('Conexión exitosa a la base de datos');
  }
});

// Función genérica para ejecutar consultas SQL
function executeQuery(sql, params, callback) {
  db.query(sql, params, (err, result) => {
    if (err) {
      console.error('Error al ejecutar la consulta:', err);
      callback(err, null);
    } else {
      callback(null, result);
    }
  });
}

// Función específica para obtener los datos de la tabla "Jugador"
function obtenerJugadores(callback) {
  const sql = 'SELECT JugadorID, Nombre, Apellido, Apodo, SuspensionesTotales, PartidosJugados, Valoracion FROM Jugador ORDER BY Valoracion DESC;';
  executeQuery(sql, [], callback);
}

// Función específica para obtener los datos de la tabla "Jugador" y "Avatar"
function obtenerJugador(JugadorID, callback) {
  const sql = 'SELECT JugadorID, Nombre, Apellido, Apodo, SuspensionesTotales, PartidosJugados, Valoracion, RecetaHTML FROM Jugador NATURAL JOIN Avatar WHERE JugadorID = ?;';
  executeQuery(sql, [JugadorID], callback);
}

// Función específica para obtener los datos de la tabla "Partido"
function obtenerPartidos(callback) {
  const sql = 'SELECT PartidoID, DATE_FORMAT(FechaPartido, "%d/%m/%Y") AS FechaPartido, GolesEquipo1, GolesEquipo2, PremioEquipo1, PremioEquipo2 FROM Partido ORDER BY PartidoID DESC;';
  executeQuery(sql, [], callback);
}

// Función específica para obtener los datos de la tabla "Partido" y "EquipoPartido"
function obtenerPartido(PartidoID, callback) {
  const sql = 'SELECT DATE_FORMAT(FechaPartido, "%d/%m/%Y") AS FechaPartido, GolesEquipo1, GolesEquipo2 FROM Partido p WHERE PartidoID = ?;';
  executeQuery(sql, [PartidoID], callback);
}

// Función específica para obtener los datos de la tabla "Partido" y "EquipoPartido"
function obtenerEquipo1Partido(PartidoID, callback) {
  const sql = 'SELECT Nombre AS Nombre1, Apellido AS Apellido1, Apodo AS Apodo1 FROM Partido p NATURAL JOIN EquipoPartido ep NATURAL JOIN Jugador j WHERE Equipo = 1 AND PartidoID = ?;';
  executeQuery(sql, [PartidoID], callback);
}

// Función específica para obtener los datos de la tabla "Partido" y "EquipoPartido"
function obtenerEquipo2Partido(PartidoID, callback) {
  const sql = 'SELECT Nombre AS Nombre2, Apellido AS Apellido2, Apodo AS Apodo2 FROM Partido p NATURAL JOIN EquipoPartido ep NATURAL JOIN Jugador j WHERE Equipo = 2 AND PartidoID = ?;';
  executeQuery(sql, [PartidoID], callback);
}

module.exports = {
  executeQuery,
  obtenerJugadores,
  obtenerJugador,
  obtenerPartidos,
  obtenerPartido,
  obtenerEquipo1Partido,
  obtenerEquipo2Partido,
  db,
};
