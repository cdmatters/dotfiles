#!/bin/bash

for f in *[^md]; do 
  echo "Installing... $f"
  ln -s `pwd`"/$f" "$HOME/.$f"
done

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

