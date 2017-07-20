# Vim keybindings
bindkey -v

# Use Esc+E to edit the command line
autoload      edit-command-line
zle -N        edit-command-line
bindkey '\ee' edit-command-line

# Ctrl+K should kill until EOL
bindkey '^K' kill-line

# Fn-left should go to start of line
bindkey 'OH' beginning-of-line
bindkey 'OF' end-of-line

# alt+left/right should go word by word
bindkey '[D' backward-word
bindkey '[C' forward-word

# Use Ctrl-x,Ctrl-l to get the output of the last command
zmodload -i zsh/parameter
insert-last-command-output() {
LBUFFER+="$(eval $history[$((HISTCMD-1))])"
}
zle -N insert-last-command-output
bindkey "^X^L" insert-last-command-output

# http://coryklein.com/vi/2015/09/17/a-working-vi-mode-indicator-in-zsh.html
# ... with changes to support <Up> to continue to search history backwards..
function zle-keymap-select {
   VIM_PROMPT="%{$fg_bold[magenta]%} [% NORMAL]%  %{$reset_color%}"
   RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
   zle reset-prompt
}
# faster switch to <Esc>
export KEYTIMEOUT=1
