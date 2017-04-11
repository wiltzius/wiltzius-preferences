# Tom Wiltzius bash aliases

# Environment variables
export CLICOLOR=1
export GREP_OPTIONS='--color=auto'    # Tell grep to highlight matches
export EDITOR=vim
export LESS=-Ri

# DB stuff
alias pgrestart='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log restart'

# BTP stuff
alias btp_env_enter='cd ~/Documents/btp-lemur && source venv/bin/activate'

# Welkin stuff
export PYRAMID_RELOAD_TEMPLATES=1

# Welkin-related env variables
alias staged='git shortlog `deploy current-hash prod`..HEAD'
export CONFIG='dev.ini'
export WELKIN_ROOT=$HOME/Documents/welkin
export WELKIN_VIRTUALENV_PATH=$HOME/Documents/ENV
alias envactivate='source $WELKIN_VIRTUALENV_PATH/bin/activate'
alias enter_welkin_env='cd $WELKIN_ROOT; envactivate'
alias w=welkin
envactivate
ssh-add ~/.ssh/welkin-new-servers.pem &> /dev/null
function rmssh { sed -i ".bak" "$1d" ~/.ssh/known_hosts; }
export -f rmssh &>/dev/null

# Bind key events from file
#bind -f ~/wiltzius-preferences/inputrc.sh

# Useful aliases
alias cowville='ssh -p 23 tom@cowville.net'
alias ll='ls -aGlh'
alias lsps='ps aux | grep'

ulimit -n 10000

# paths
export PATH="/usr/local/sbin:$PATH"
export PATH="$PATH:$HOME/.config/yarn/global/node_modules/.bin"

# utils
alias ramdisk='diskutil erasevolume HFS+ "Ramdisk" `hdiutil attach -nomount ram://7812500 `'
