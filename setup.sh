#!/bin/bash

for f in *[^md]; do 
  echo "Installing... $f"
  ln -s `pwd`"/$f" "$HOME/.$f"
done

echo "Installing... Vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo "Done. Run \":PluginInstall\" on first Vim Run"

echo "Getting... Git Prompts"
curl -o $HOME/.git-completion.bash  https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
curl -o $HOME/.git-completion.zsh  https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh
curl -o $HOME/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
echo "Getting... 'z' - jump around"
curl -o `pwd`/z.sh https://raw.githubusercontent.com/rupa/z/master/z.sh
echo "Done"
