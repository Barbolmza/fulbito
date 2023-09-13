#!/bin/bash

# URL base de los archivos
base_url="https://www86.hattrick.org/Img/Avatar/mouths/"

# Descargar archivos desde e1a.png hasta e36a.png
for i in {1..40}; do
  filename="m${i}a.png"
  wget "${base_url}${filename}"
done

# Descargar archivos desde e1b.png hasta e36b.png
for i in {1..40}; do
  filename="m${i}b.png"
  wget "${base_url}${filename}"
done

# Descargar archivos desde e1c.png hasta e36c.png
for i in {1..40}; do
  filename="m${i}c.png"
  wget "${base_url}${filename}"
done

