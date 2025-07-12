#!/bin/bash

dir=$(dirname "$0")
cd "$dir" || exit 1

path=$(pwd)

for filename in *.txt; do
  name=$(basename "$filename" .txt)
  echo "Linking $path/$filename → $HOME/.$name..."
  ln -s $@ "$path/$filename" "$HOME/.$name"
done

echo "Done."
