#!/bin/bash
i=1
linea1='<div class="Avatar">'
#linea2a='<h3 style="box-shadow:grey 0px 0px 6px;float: left;left:5px;top:5px;">'
#linea2b="AvatarID: $i</h3>"
#linea2Completa=$linea2a$linea2b
linea3='<div id="faceCard" class="faceCard">'
linea4='<br>'
linea5='<br>'
linea6='</div>'
linea7='</div>'


# Especifica el nombre del archivo de entrada
archivo="todasLasRecetasHTML.txt"

# Verifica si el archivo existe
if [ -f "$archivo" ]; then
    # Lee el archivo línea por línea y llama a la función procesar_linea
    while IFS= read -r linea; do
    linea2a='<h3 style="box-shadow:grey 0px 0px 6px;float: left;left:5px;top:5px;">'
    linea2b="AvatarID: $i</h3>"
    linea2Completa=$linea2a$linea2b
        echo $linea1 >> allFaces.html
        echo $linea2Completa >> allFaces.html
        echo $linea3 >> allFaces.html
        echo $linea4 >> allFaces.html
        echo $linea5 >> allFaces.html
        echo $linea >> allFaces.html
        echo $linea6 >> allFaces.html
        echo $linea7 >> allFaces.html

        ((i++))
    done < "$archivo"
else
    echo "El archivo $archivo no existe."
fi