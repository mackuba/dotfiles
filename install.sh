#!/bin/bash

for filename in `ls $HOME/Projects/dotfiles/*.txt`; do
  name=`basename $filename .txt`
  echo "Linking $HOME/Projects/dotfiles/$filename to $HOME/.$name..."
  ln -s $@ $HOME/Projects/dotfiles/$filename $HOME/.$name
done

echo "Done."
