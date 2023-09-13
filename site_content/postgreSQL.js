const { Pool } = require('pg');

// Configuración de la conexión a la base de datos PostgreSQL
const pool = new Pool({
  host: 'ep-bold-sound-34491744.ap-southeast-1.aws.neon.tech', // Cambia esto si tu base de datos PostgreSQL se encuentra en otro host
  user: 'fl0user', // Cambia esto por tu nombre de usuario de PostgreSQL
  password: 'XcHVZJNjD14g', // Cambia esto por tu contraseña de PostgreSQL
  database: 'Fulbitopostgres', // Reemplaza esto por el nombre real de tu base de datos PostgreSQL
  port: 5432, // Puerto predeterminado de PostgreSQL
});

// Conexión a la base de datos
pool.connect()
  .then(() => {
    console.log('Conexión exitosa a la base de datos PostgreSQL');
  })
  .catch((err) => {
    console.error('Error al conectar a la base de datos:', err);
  });

// Función genérica para ejecutar consultas SQL
async function executeQuery(sql, params) {
  try {
    const result = await pool.query(sql, params);
    return result.rows;
  } catch (err) {
    console.error('Error al ejecutar la consulta:', err);
    throw err;
  }
}

// Función específica para obtener los datos de la tabla "Jugador"
async function obtenerJugadores() {
  const sql = 'SELECT JugadorID, Nombre, Apellido, Apodo, SuspensionesTotales, PartidosJugados, Valoracion FROM Jugador ORDER BY Valoracion DESC;';
  return executeQuery(sql, []);
}

// Función específica para obtener los datos de la tabla "Jugador" y "Avatar"
async function obtenerJugador(JugadorID) {
  const sql = 'SELECT JugadorID, Nombre, Apellido, Apodo, SuspensionesTotales, PartidosJugados, Valoracion, RecetaHTML FROM Jugador JOIN Avatar ON Jugador.AvatarID = Avatar.AvatarID WHERE JugadorID = $1;';
  return executeQuery(sql, [JugadorID]);
}

// Función específica para obtener los datos de la tabla "Partido"
async function obtenerPartidos() {
  const sql = 'SELECT PartidoID, TO_CHAR(FechaPartido, \'DD/MM/YYYY\') AS FechaPartido, GolesEquipo1, GolesEquipo2, PremioEquipo1, PremioEquipo2 FROM Partido ORDER BY PartidoID DESC;';
  return executeQuery(sql, []);
}

// Función específica para obtener los datos de la tabla "Partido"
async function obtenerPartido(PartidoID) {
  const sql = 'SELECT TO_CHAR(FechaPartido, \'DD/MM/YYYY\') AS FechaPartido, GolesEquipo1, GolesEquipo2 FROM Partido p WHERE PartidoID = $1;';
  return executeQuery(sql, [PartidoID]);
}

// Función específica para obtener los datos de la tabla "Partido" y "EquipoPartido"
async function obtenerEquipo1Partido(PartidoID) {
  const sql = 'SELECT Nombre AS Nombre1, Apellido AS Apellido1, Apodo AS Apodo1 FROM Partido p JOIN EquipoPartido ep ON p.PartidoID = ep.PartidoID JOIN Jugador j ON ep.JugadorID = j.JugadorID WHERE Equipo = 1 AND p.PartidoID = $1;';
  return executeQuery(sql, [PartidoID]);
}

// Función específica para obtener los datos de la tabla "Partido" y "EquipoPartido"
async function obtenerEquipo2Partido(PartidoID) {
  const sql = 'SELECT Nombre AS Nombre2, Apellido AS Apellido2, Apodo AS Apodo2 FROM Partido p JOIN EquipoPartido ep ON p.PartidoID = ep.PartidoID JOIN Jugador j ON ep.JugadorID = j.JugadorID WHERE Equipo = 2 AND p.PartidoID = $1;';
  return executeQuery(sql, [PartidoID]);
}

module.exports = {
  executeQuery,
  obtenerJugadores,
  obtenerJugador,
  obtenerPartidos,
  obtenerPartido,
  obtenerEquipo1Partido,
  obtenerEquipo2Partido,
};
