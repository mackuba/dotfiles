#!/bin/bash

dir=$(dirname "$0")
cd "$dir"

path=$(pwd)

for filename in `ls *.txt`; do
  name=`basename $filename .txt`
  echo "Linking $path/$filename to $HOME/.$name..."
  ln -s $@ "$path/$filename" "$HOME/.$name"
done

echo "Done."
