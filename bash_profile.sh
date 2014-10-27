# Tom Wiltzius bash aliases

# Environment variables
#$PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH
export CLICOLOR=1
export GREP_OPTIONS='--color=auto'    # Tell grep to highlight matches
export EDITOR=vim

# Welkin-related env variables
export CONFIG='dev.ini'
export WELKIN_ROOT=$HOME/Documents/welkin
export WELKIN_VIRTUALENV_PATH=$HOME/Documents/ENV
alias envactivate='source $WELKIN_VIRTUALENV_PATH/bin/activate'
alias enter_welkin_env='cd $WELKIN_ROOT; envactivate'

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

