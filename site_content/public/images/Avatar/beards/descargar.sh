#!/bin/bash

# URL base de los archivos
base_url="https://www86.hattrick.org/Img/Avatar/hair/"
for j in {1..9};do
	for k in {a..k};do
# Descargar archivos desde e1a.png hasta e36a.png
		for i in {1..4}; do
  		filename="f${j}h${i}${k}.png"
  		wget "${base_url}${filename}"
		done
	done
done

