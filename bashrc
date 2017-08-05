echo '~/.bashrc has run'
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Colours
blink=$(tput setaf blink)
green=$(tput setaf 2)
blue=$(tput setaf 6)
bold=$(tput bold)
reset=$(tput sgr0)

PS1='\[$green\]\h\[$reset\]:\[$blue\]\w \[$reset\]\$ '

### Aliases

alias ll='ls -l'
alias c='clear'

alias gp='cd ~/Programming'
