# Use Esc+E to edit the command line
autoload      edit-command-line
zle -N        edit-command-line
bindkey '\ee' edit-command-line

# Ctrl+K should kill until EOL
bindkey '^K' kill-line

# Vim keybindings
bindkey -v

# Use Ctrl-x,Ctrl-l to get the output of the last command
zmodload -i zsh/parameter
insert-last-command-output() {
LBUFFER+="$(eval $history[$((HISTCMD-1))])"
}
zle -N insert-last-command-output
bindkey "^X^L" insert-last-command-output
