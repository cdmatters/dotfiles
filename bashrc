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

if [ -f ~/.gitignore.sh ]; then  
  source ~/.gitignore.sh
else
  echo "failed launch  git-ignore"
fi

### Colours

blink=$(tput setaf blink)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 6)
bold=$(tput bold)
reset=$(tput sgr0)

export PS1='\[$green\]\h\[$reset\]:\[$blue\]\w\[$reset\]\n$(__git_ps1 \(%s\) )\$ '
export LSCOLORS='ExgxxxxxAxxxxxxxxxxxxx' # dirs:blue; syml: cyan; exec:grey

### Source z.sh - 'jump around'
if [ -f /usr/local/Cellar/z/1.9/etc/profile.d/z.sh ]; then
  source  /usr/local/Cellar/z/1.9/etc/profile.d/z.sh 
fi # brew install z. source viewable @github.com/rupa/z

### Source coinmin
if [ -f ~/Programming/Projects/coinmin/coinmin.sh ]; then 
  source ~/Programming/Projects/coinmin/coinmin.sh
  alias coinminfinity="while True; do coinmin 7; sleep 303; done"
  alias coinminf="coinminfinity"
fi


### Aliases

alias ll='ls -lG'
alias la='ls -lGa'
alias c='clear'
alias rm='rm -i'

alias tree='tree -C -I venv'

alias subl='open -a "Sublime Text"'

alias gp='cd ~/Programming/Projects'
alias gw='cd ~/Programming/Work'
alias gl='cd ~/Programming/Learning'
alias gd='cd ~/Documents'
alias gu='cd ~/Documents/UCL'

alias psh='pushd'
alias pop='popd'

alias venv='source venv/bin/activate'
alias mkvenv='python3 -m venv venv'
alias mkvenvssp='python3 -m venv venv --system-site-packages'
alias mkvenv27='virtualenv --no-site-packages venv'
alias mkvenv27ssp='virtualenv --system-site-packages venv'

alias virtualenv='virtualenv --no-site-packages'
alias virtualenv3='virtualenv --no-site-packages --python=python3.6'

alias gitignore='_gitignore'

alias bashrc='vim ~/Programming/dotfiles/bashrc'

AM_PS1='\[$yellow\]\[$bold\]$(whoami)\[$reset\]@\[$green\]\h\[$reset\]:\[$blue\]\w\[$reset\]\n$(__git_ps1 \(%s\) )\$ '
alias amps1='PS1=$AM_PS1'


### Functions

function proj(){
  # Initialize git & virtual environment for Python3 projects
  echo "Initializing py3 project: $1"
  mkdir -p $1 && cd $1 && mkvenv && git init && gitignore python  && touch README.md
  echo "# $1" > README.md
  git add .gitignore *.md && git commit -m "initial commit"
  cd ..
  echo "done"
}

