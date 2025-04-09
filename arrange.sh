#!/bin/bash

for file in files/*; do

  [ -f "$file" ] || continue

  filename=$(basename "$file")

  first_char=$(echo "${filename:0:1}" | tr '[:upper:]' '[:lower:]')

  if [[ "$first_char" =~ [a-z] ]]; then
    mv "$file" "$first_char/"
  fi
done
