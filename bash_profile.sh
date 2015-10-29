# Tom Wiltzius bash aliases

# Environment variables
export CLICOLOR=1
export GREP_OPTIONS='--color=auto'    # Tell grep to highlight matches
export EDITOR=vim
export LESS=-Ri

# Welkin stuff
alias pgrestart='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log restart'
export PYRAMID_RELOAD_TEMPLATES=1

# Welkin-related env variables
export CONFIG='dev.ini'
export WELKIN_ROOT=$HOME/Documents/welkin
export WELKIN_VIRTUALENV_PATH=$HOME/Documents/ENV
alias envactivate='source $WELKIN_VIRTUALENV_PATH/bin/activate'
alias enter_welkin_env='cd $WELKIN_ROOT; envactivate'
alias welkin=$WELKIN_ROOT/welkin
envactivate
ssh-add ~/.ssh/welkin-new-servers.pem &> /dev/null

# Bind key events from file
#bind -f ~/wiltzius-preferences/inputrc.sh

# Useful aliases
alias cowville='ssh -p 23 tom@cowville.net'
alias ll='ls -aGlh'
alias lsps='ps aux | grep'

ulimit -n 10000
