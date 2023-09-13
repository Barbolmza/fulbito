const express = require('express');
const app = express();
const port = 3000;
const router = express.Router();


// Usar el middleware para servir archivos estáticos desde la carpeta 'public'
app.use(express.static('public'));

app.use('/', router);

//Controladores 
router.use('/partidos', require('./partidos.js'));
router.use('/partido', require('./partido.js'));
router.use('/jugadores', require('./jugadores.js'));
router.use('/jugador', require('./jugador.js'));

// Iniciar el servidor
app.listen(port, () => {
  console.log(`Servidor API escuchando en el puerto ${port}`);
});

