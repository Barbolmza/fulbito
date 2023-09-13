const express = require('express');
const db = require('./mariaDB.js'); // Importa el modelo de la base de datos
const router = express.Router();

// Define una ruta que espera un parámetro en la URL llamado "partidoID"
router.get('/:partidoID', async (req, res) => {
  const partidoID = req.params.partidoID;
  console.log('PartidoID es: ', partidoID);

  try {
    const partidoPromise = new Promise((resolve, reject) => {
      db.obtenerPartido(partidoID, (err, result) => {
        if (err) {
          console.error('Error al obtener el partido:', err);
          reject(err);
        } else {
          console.log(result);
          resolve(result);
        }
      });
    });

    const equipo1Promise = new Promise((resolve, reject) => {
      db.obtenerEquipo1Partido(partidoID, (err, result) => {
        if (err) {
          console.error('Error al obtener el equipo 1 del partido:', err);
          reject(err);
        } else {
          console.log(result);
          resolve(result);
        }
      });
    });

    const equipo2Promise = new Promise((resolve, reject) => {
      db.obtenerEquipo2Partido(partidoID, (err, result) => {
        if (err) {
          console.error('Error al obtener el equipo 2 del partido:', err);
          reject(err);
        } else {
          console.log(result);
          resolve(result);
        }
      });
    });

    const [partido, equipo1, equipo2] = await Promise.all([partidoPromise, equipo1Promise, equipo2Promise]);

    res.json({ partido, equipo1, equipo2 });
  } catch (error) {
    res.status(500).json({ error: 'Error al obtener los datos del partido' });
  }
});

module.exports = router;

