#!/bin/bash
# Script para generar los íconos PNG desde el SVG
# Requiere: Inkscape o ImageMagick

# Con Inkscape:
for size in 32 72 96 128 144 152 192 384 512; do
  inkscape icon.svg -w $size -h $size -o icon-$size.png 2>/dev/null || \
  convert icon.svg -resize ${size}x${size} icon-$size.png
done

echo "Íconos generados!"
ls -la *.png
