#!/bin/bash

for filename in `ls $HOME/Projects/dotfiles`; do
  name=`basename $filename .txt`
  echo "Linking $HOME/Projects/dotfiles/$filename to $HOME/.$name..."
  ln -fs $HOME/Projects/dotfiles/$filename $HOME/.$name
done

echo "Done."
