echo '~/.bashrc has run'

### Colours
blink=$(tput setaf blink)
green=$(tput setaf 2)
blue=$(tput setaf 6)
bold=$(tput bold)
reset=$(tput sgr0)

export PS1='\[$green\]\h\[$reset\]:\[$blue\]\w \[$reset\]\$ '
export LSCOLORS='ExgxxxxxAxxxxxxxxxxxxx' # dirs:blue; syml: cyan; exec:grey

### Aliases

alias ll='ls -lG'
alias la='ls -lGa'
alias c='clear'
alias rm='rm -i'

alias subl='open -a "Sublime Text"'

alias gp='cd ~/Programming'
alias gd='cd ~/Documents'

