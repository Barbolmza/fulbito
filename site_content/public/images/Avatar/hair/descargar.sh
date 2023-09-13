#!/bin/bash

# URL base de los archivos
base_url="https://www86.hattrick.org/Img/Avatar/hair/"
for j in {1..6};do
# Descargar archivos desde e1a.png hasta e36a.png
for i in {1..15}; do
  filename="f${j}h${i}a.png"
  wget "${base_url}${filename}"
done

# Descargar archivos desde e1b.png hasta e36b.png
for i in {1..15}; do
  filename="f${j}h${i}b.png"
  wget "${base_url}${filename}"
done

# Descargar archivos desde e1c.png hasta e36c.png
for i in {1..15}; do
  filename="f${j}h${i}c.png"
  wget "${base_url}${filename}"
done
# Descargar archivos desde e1c.png hasta e36c.png
for i in {1..15}; do
  filename="f${j}h${i}d.png"
  wget "${base_url}${filename}"
done
done

