const express = require('express');
const db = require('./mariaDB.js'); // Importa el modelo de la base de datos
//const db = require('./postgreSQL.js'); // Importa el modelo de la base de datos
const router = express.Router();


// Ruta para obtener los datos de la tabla "Partido"
router.get('/', (req, res) => {
  db.obtenerPartidos((err, result) => {
    if (err) {
      console.error('Error al obtener los datos de la tabla "Partido":', err);
      res.status(500).json({ error: 'Error al obtener los datos de la tabla "Partido"' });
    } else {
      res.json(result);
    }
  });
});

module.exports = router;