# Tom Wiltzius bash aliases

# Environment variables
#$PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH
export CLICOLOR=1
export GREP_OPTIONS='--color=auto'    # Tell grep to highlight matches
export EDITOR=vim
export LESS=-Ri

# Bash / Git completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Welkin stuff
alias pgrestart='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log restart'

# WANS
function tabname {
 printf "\e]1;$1\a"
}

function winname {
 printf "\e]2;$1\a"
}

alias koala="tabname 'koala'; ~/Documents/welkin/start_server.sh -r -t --app koala"
alias dugong="tabname 'dugong'; ~/Documents/welkin/start_server.sh -r -t --app dugong"
alias shortfin="tabname 'shortfin'; ~/Documents/welkin/start_server.sh -r -t --app shortfin"

# Bind key events from file
bind -f ~/wiltzius-preferences/inputrc.sh

# Useful aliases
alias cowville='ssh -p 23 tom@cowville.net'
alias canary='/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary --enable-impl-side-painting --enable-skia-benchmarking &'
alias ll='ls -aGlh'

# Set prompt
source ~/wiltzius-preferences/git-prompt.sh       # Load in the git branch prompt script.
GREEN='\e[0;32m'
MAGENTA='\[\033[0;35m\]'
WHITE='\[\033[m\]'
PS1="\w\[$MAGENTA\]\$(__git_ps1)\[$GREEN\] \$ $WHITE"

