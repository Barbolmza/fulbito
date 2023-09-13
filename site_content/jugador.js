const express = require('express');
const db = require('./mariaDB.js'); // Importa el modelo de la base de datos
//const db = require('./postgreSQL.js'); // Importa el modelo de la base de datos
const router = express.Router();

// Define una ruta que espera un parámetro en la URL llamado "jugadorID"
router.get('/:jugadorID', (req, res) => {
  const jugadorID = req.params.jugadorID;
  console.log('JugadorID es: ', jugadorID);
  db.obtenerJugador(jugadorID, (err, result) => {
    if (err) {
      console.error('Error al obtener el jugador:', err);
      res.status(500).json({ error: 'Error al obtener el jugador' });
    } else {
      res.json(result);
    }
  });
});

module.exports = router;
