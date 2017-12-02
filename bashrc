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

### Aliases

alias ll='ls -lG'
alias la='ls -lGa'
alias c='clear'
alias rm='rm -i'

alias tree='tree -C'

alias subl='open -a "Sublime Text"'

alias gp='cd ~/Programming/Projects'
alias gw='cd ~/Programming/Work'
alias gl='cd ~/Programming/Learning'
alias gd='cd ~/Documents'
alias gu='cd ~/Documents/UCL'

alias mkvenv='python3 -m venv venv'
alias venv='source venv/bin/activate'
alias virtualenv='virtualenv --no-site-packages'
alias virtualenv3='virtualenv --no-site-packages --python=python3.6'


alias bashrc='vim ~/Programming/dotfiles/bashrc'


AM_PS1='\[$yellow\]\[$bold\]$(whoami)\[$reset\]@\[$green\]\h\[$reset\]:\[$blue\]\w\[$reset\]\n$ '
alias amps1='PS1=$AM_PS1'
