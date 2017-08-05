echo '~/.bashrc has run'

### Git Completion: 
# sourcce the raw files on github.com: git/git/contrib/completion
if [ -f ~/.git-completion.bash ]; then 
  source ~/.git-completion.bash
else
  echo "failed launch  git-completion"
fi
if [ -f ~/.git-prompt.sh ]; then 
  source ~/.git-prompt.sh
else
  echo "failed launch  git-prompt"
fi


### Colours

blink=$(tput setaf blink)
green=$(tput setaf 2)
blue=$(tput setaf 6)
bold=$(tput bold)
reset=$(tput sgr0)

export PS1='\[$green\]\h\[$reset\]:\[$blue\]\w\[$reset\]\n$(__git_ps1 \(%s\) )\$ '
export LSCOLORS='ExgxxxxxAxxxxxxxxxxxxx' # dirs:blue; syml: cyan; exec:grey

### Aliases

alias ll='ls -lG'
alias la='ls -lGa'
alias c='clear'
alias rm='rm -i'

alias tree='tree -C'

alias subl='open -a "Sublime Text"'

alias gp='cd ~/Programming/Projects'
alias gw='cd ~/Programming/Work'
alias gd='cd ~/Documents'

