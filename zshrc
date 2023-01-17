echo '~/.zshrc has run'
source /etc/zshrc
# Prevent old terminals breaking with backspace in Vim
stty erase '^?'

### Git Completion: 
# sourcce the raw files on github.com: git/git/contrib/completion
if [ -f ~/.git-completion.zsh ]; then 
  source ~/.git-completion.zsh
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

NEWLINE=$'\n'
setopt PROMPT_SUBST
export PROMPT="%F{green}%m%f:%F{cyan}%~%f%:${NEWLINE}"'$(__git_ps1 "(%s) ")%# '
export LSCOLORS='ExgxxxxxAxxxxxxxxxxxxx' # dirs:blue; syml: cyan; exec:grey

### Source z.sh - 'jump around'
if [ -f ~/dotfiles/z.sh ]; then
  source  ~/dotfiles/z.sh 
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
alias ls='ls -G'
alias c='clear'
alias rm='rm -i'
alias rec='ls -rt'
alias dl='ls -rt ~/Downloads'



alias tree='tree -C -I venv'

alias subl='open -a "Sublime Text"'

alias gp='cd ~/Programming/Projects'
alias gw='cd ~/Programming/Work'
alias gl='cd ~/Programming/Learning'
alias gd='cd ~/Documents'
alias gu='cd ~/Documents/UCL'

alias psh='pushd'
alias pop='popd'

alias jp='jupyter notebook'
alias hog='nvidia-smi | grep "MiB |$" | sed -E "s/\|\s{4}[0-9]\s{5,6}([0-9]*).*/\1/" | xargs ps -u -p'

alias venv='source venv/bin/activate'
alias mkvenv='python3 -m venv venv'
alias mkvenvssp='python3 -m venv venv --system-site-packages'
alias mkvenv27='virtualenv --no-site-packages venv'
alias mkvenv27ssp='virtualenv --system-site-packages venv'

alias virtualenv='virtualenv --no-site-packages'
alias virtualenv3='virtualenv --no-site-packages --python=python3.6'

alias gitignore='_gitignore'

alias bashrc='vim ~/dotfiles/bashrc'
alias vimrc='vim ~/dotfiles/vimrc'
alias zshrc='vim ~/dotfiles/zshrc'
alias tmuxconf='vim ~/dotfiles/tmux.conf'

AM_PS1='%B%F{yellow}$(whoami)%b%f@%F{green}%m%f:%F{cyan}%~%f% $(__git_ps1 " (%s)") %# '
alias amps1='PS1=$AM_PS1'

alias o='open . '
alias sshet='et devfair:8080 -jpot=8080 -t "8666:8666,3000:3000,2222:22,8888:8888,8889:8889,8890:8890" -x --noratelimit'



alias cast2gif='docker run --rm -v $PWD:/data asciinema/asciicast2gif'
alias weather='curl wttr.in'
### Functions

function cpdl(){
  cp ~/Downloads/$1 .
}

function o(){
  shopt -s nocaseglob
  # Fuzzy Open
  if [ -z $1 ]; then
    open .
  else
    for i in $@; do
      open *$i*
    done
  fi
}


