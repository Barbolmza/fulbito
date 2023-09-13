const express = require('express');
const db = require('./mariaDB.js'); // Importa el modelo de la base de datos
const router = express.Router();


// Ruta para obtener los datos de la tabla "Jugador"
router.get('/', (req, res) => {
  db.obtenerJugadores((err, result) => {
    if (err) {
      console.error('Error al obtener los datos de la tabla "Jugador":', err);
      res.status(500).json({ error: 'Error al obtener los datos de la tabla "Jugador"' });
    } else {
      res.json(result);
    }
  });
});

module.exports = router;