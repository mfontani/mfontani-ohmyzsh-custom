export EDITOR=vim

if [[ -x /usr/local/bin/brew ]]; then
    export EDITOR=$(brew ls macvim | grep Contents/MacOS/Vim)
    alias vim=$(brew ls macvim | grep Contents/MacOS/Vim)
fi

# Allow me to use C-s to save in Vim
stty stop '' -ixoff

bindkey -M vicmd 'K' run-help
