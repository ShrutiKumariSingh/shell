#!/bin/bash
for file in *; do
  [ -f "$file" ] || continue
  lower=$(echo "$file" | tr 'A-Z' 'a-z')
  if test "$file" != "$lower" && ! -e "$lower"  
  then
    mv "$file" "$lower"
    echo "Renamed: $file -> $lower"
  fi
done
