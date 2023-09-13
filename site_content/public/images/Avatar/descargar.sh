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
        #          DESCARGA DE ARCHIVOS       #
        #######################################
        # Obtener el valor del atributo src
        src=$(echo "$etiqueta" | grep -oP 'src="[^"]+"' | sed 's/src=//;s/"//g') # src contiene valores del tipo /Img/Avatar/eyes/e24c.png
       
        carpeta=`echo $src | awk -F '/' '{print $4}'`
        archivo_png=`echo $src | awk -F '/' '{print $5}'`
        #echo $carpeta
        #echo $archivo_png
        if [[ $carpeta =~ (faces|eyes|mouths|noses|hair|beards|goatees) ]]; then
            if [ ! -f "./$carpeta/$archivo_png" ]; then # Si no tengo el archivo, lo descarga
                # Descargar el archivo desde la URL
                wget "https://www86.hattrick.org/Img/Avatar/$carpeta/$archivo_png" -P "./$carpeta/"
            fi
        fi

        #######################################
        #            GUARDAR RECETA           #
        #######################################
        # Tu variable que contiene la cadena
        
        # Verificar si la cadena contiene "/Img/Avatar/backgrounds/bg_blue.png"
        if [[ $etiqueta == *"/Img/Avatar/backgrounds/bg_blue.png"* ]]; then
        # Si contiene la cadena, realizar el reemplazo
        cadena_modificada=$(echo "$etiqueta" | sed 's#/Img/Avatar/backgrounds/bg_blue.png#images/Avatar/background/bg_blue.png#g')
        echo "etiqueta: $etiqueta"
        echo "cadena modificada: $cadena_modificada"
        cadena_acumulada="$cadena_acumulada$cadena_modificada"

        # Verificar si la cadena contiene "body"
        elif [[ $etiqueta == *"body"* ]]; then
        letraRandom=$(letra_aleatoria)
        patron='\/body[0-9]+\.png'
        body=$(echo "$etiqueta" | grep -o -P "$patron")
        source=`echo $etiqueta |  awk -F '"' '{print $2}'`
        # Si contiene la cadena, realizar el reemplazo
        cadena_modificada=$(echo "$etiqueta" | sed "s#$source#images/Avatar/kits/$letraRandom$body#g")
        echo "etiqueta: $etiqueta"
        echo "cadena modificada: $cadena_modificada"
        cadena_acumulada="$cadena_acumulada$cadena_modificada"

        # Verificar si la cadena contiene "bodies"
        elif [[ $etiqueta == *"/Img/Avatar/bodies"* ]]; then #ejemplo "/Img/Avatar/bodies/bd10_s1.png"
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

        # Verificar si la cadena contiene "/Img/Avatar/faces"
        elif [[ $etiqueta == *"/Img/Avatar/faces"* ]]; then
        # Si contiene la cadena, realizar el reemplazo
        cadena_modificada=$(echo "$etiqueta" | sed 's#/Img/Avatar/faces/#images/Avatar/faces/#g')
        echo "etiqueta: $etiqueta"
        echo "cadena modificada: $cadena_modificada"
        cadena_acumulada="$cadena_acumulada$cadena_modificada"
        

        # Verificar si la cadena contiene "/Img/Avatar/eyes"
        elif [[ $etiqueta == *"/Img/Avatar/eyes"* ]]; then
        # Si contiene la cadena, realizar el reemplazo
        cadena_modificada=$(echo "$etiqueta" | sed 's#/Img/Avatar/eyes/#images/Avatar/eyes/#g')
        echo "etiqueta: $etiqueta"
        echo "cadena modificada: $cadena_modificada"
        cadena_acumulada="$cadena_acumulada$cadena_modificada"
        

        # Verificar si la cadena contiene "/Img/Avatar/beards"
        elif [[ $etiqueta == *"/Img/Avatar/beards"* ]]; then
        # Si contiene la cadena, realizar el reemplazo
        cadena_modificada=$(echo "$etiqueta" | sed 's#/Img/Avatar/beards/#images/Avatar/beards/#g')
        echo "etiqueta: $etiqueta"
        echo "cadena modificada: $cadena_modificada"
        cadena_acumulada="$cadena_acumulada$cadena_modificada"
        

        # Verificar si la cadena contiene "/Img/Avatar/mouths"
        elif [[ $etiqueta == *"/Img/Avatar/mouths"* ]]; then
        # Si contiene la cadena, realizar el reemplazo
        cadena_modificada=$(echo "$etiqueta" | sed 's#/Img/Avatar/mouths/#images/Avatar/mouths/#g')
        echo "etiqueta: $etiqueta"
        echo "cadena modificada: $cadena_modificada"
        cadena_acumulada="$cadena_acumulada$cadena_modificada"
        

        # Verificar si la cadena contiene "/Img/Avatar/goatees"
        elif [[ $etiqueta == *"/Img/Avatar/goatees"* ]]; then
        # Si contiene la cadena, realizar el reemplazo
        cadena_modificada=$(echo "$etiqueta" | sed 's#/Img/Avatar/goatees/#images/Avatar/goatees/#g')
        echo "etiqueta: $etiqueta"
        echo "cadena modificada: $cadena_modificada"
        cadena_acumulada="$cadena_acumulada$cadena_modificada"
        

        # Verificar si la cadena contiene "/Img/Avatar/noses"
        elif [[ $etiqueta == *"/Img/Avatar/noses"* ]]; then
        # Si contiene la cadena, realizar el reemplazo
        cadena_modificada=$(echo "$etiqueta" | sed 's#/Img/Avatar/noses/#images/Avatar/noses/#g')
        echo "etiqueta: $etiqueta"
        echo "cadena modificada: $cadena_modificada"
        cadena_acumulada="$cadena_acumulada$cadena_modificada"
        

        # Verificar si la cadena contiene "/Img/Avatar/hair"
        elif [[ $etiqueta == *"/Img/Avatar/hair"* ]]; then
        # Si contiene la cadena, realizar el reemplazo
        cadena_modificada=$(echo "$etiqueta" | sed 's#/Img/Avatar/hair/#images/Avatar/hair/#g')
        echo "etiqueta: $etiqueta"
        echo "cadena modificada: $cadena_modificada"
        cadena_acumulada="$cadena_acumulada$cadena_modificada"
        fi

        
    
        echo "---------------------------------------------------------------------------------------------------------------------------------------"
        

    done <<< "$etiquetas_img"
    echo $cadena_acumulada >> recetas.html
    echo "insert into Fulbito.Avatar (RecetaHTML) values ('"$cadena_acumulada"');" >> insertsAvatares.sql
}



###############################################################################################################
#                                            INICIO PROGRAMA                                                  #
###############################################################################################################

#url=`curl https://www87.hattrick.org/Club/Players/\?TeamID\=3044 | grep https | awk -F '"' '{print $2}'` #para equipos
url=`curl https://www84.hattrick.org/Club/NationalTeam/NTPlayers.aspx?teamId=3006 | grep https | awk -F '"' '{print $2}'` #para selecciones
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