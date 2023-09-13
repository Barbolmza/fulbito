#!/bin/bash

# URL base de los archivos
base_url="https://res.hattrick.org/kits/30/292/2920/2919350/"

for i in {1..12}; do
  filename="body${i}.png"
  wget "${base_url}${filename}" -P "./kits/"
done
