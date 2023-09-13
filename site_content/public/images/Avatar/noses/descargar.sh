#!/bin/bash

# URL base de los archivos
base_url="https://www86.hattrick.org/Img/Avatar/noses/"

# Descargar archivos desde e1a.png hasta e36a.png
for i in {1..40}; do
  filename="n${i}.png"
  wget "${base_url}${filename}"
done
