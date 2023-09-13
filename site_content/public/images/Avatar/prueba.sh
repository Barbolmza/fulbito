#!/bin/bash

function letra_aleatoria() { # Devuelve letra aleatoria entre la a y la f
  letras=("a" "b" "c" "d" "e" "f")
  cantidad_letras=${#letras[@]}
  indice_aleatorio=$((RANDOM % cantidad_letras))
  letra=${letras[$indice_aleatorio]}
  echo "$letra"
}


# Función para procesar cada línea
function procesar_linea() {
    linea="$1"
    cadena_acumulada=""
    # Utilizar grep para encontrar todas las etiquetas <img>
    etiquetas_img=$(echo "$linea" | grep -o '<img[^>]*>')

    # Recorrer las etiquetas encontradas
    while IFS= read -r etiqueta; do

        #######################################
        #            GUARDAR RECETA           #
        #######################################
        # Tu variable que contiene la cadena
        
   

       

        # Verificar si la cadena contiene "bodies"
        if [[ $etiqueta == *"/Img/Avatar/bodies"* ]]; then #ejemplo "/Img/Avatar/bodies/bd10_s1.png"
        letraRandom=$(letra_aleatoria)
        patron='\/bd[0-9]+_s1\.png'
        body_parcial=$(echo "$etiqueta" | grep -o -P "$patron") # body_parcial: /bd10_s1.png
        echo "body_parcial: $body_parcial"
        # me fijo que número de body es
        for i in {1..12}; do
            if [[ $body_parcial == *"bd${i}_"* ]]; then
            body="/body${i}.png"
            echo "body: $body"
            fi
        done
        source=`echo $etiqueta |  awk -F '"' '{print $2}'`
        # Si contiene la cadena, realizar el reemplazo
        cadena_modificada=$(echo "$etiqueta" | sed "s#$source#images/Avatar/kits/$letraRandom$body#g")
        echo "etiqueta: $etiqueta"
        echo "cadena modificada: $cadena_modificada"
        cadena_acumulada="$cadena_acumulada$cadena_modificada"  
        fi  

        
    
        echo "---------------------------------------------------------------------------------------------------------------------------------------"
        

    done <<< "$etiquetas_img"
    echo "cadena modificada: $cadena_acumulada"

}



###############################################################################################################
#                                            INICIO PROGRAMA                                                  #
###############################################################################################################

url=`curl https://www87.hattrick.org/Club/Players/\?TeamID\=111832 | grep https | awk -F '"' '{print $2}'`
curl $url > fuente.html
cat fuente.html | grep bg_blue.png > players.html

# Especifica el nombre del archivo de entrada
archivo="players.html"

# Verifica si el archivo existe
if [ -f "$archivo" ]; then
    # Lee el archivo línea por línea y llama a la función procesar_linea
    rm -f recetas.html
    rm -f insertsAvatares.sql
    while IFS= read -r linea; do
        procesar_linea "$linea"
    done < "$archivo"
else
    echo "El archivo $archivo no existe."
fi