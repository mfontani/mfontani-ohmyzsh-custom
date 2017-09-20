# add keybinding for picking a file from "git fcm"
if [[ $- == *i* ]]; then
    # CTRL-F - Paste the selected file path(s) from "git fcm" into the command line
    __gitfcmfsel() {
      local cmd="git fcm"
      setopt localoptions pipefail 2> /dev/null
      eval "$cmd" | FZF_DEFAULT_OPTS="--height ${FZF_TMUX_HEIGHT:-40%} --reverse $FZF_DEFAULT_OPTS $FZF_CTRL_F_OPTS" $(__fzfcmd) -m "$@" | while read item; do
        echo -n "${(q)item} "
      done
      local ret=$?
      echo
      return $ret
    }
    fzf-gitfcm-widget() {
      LBUFFER="${LBUFFER}$(__gitfcmfsel)"
      local ret=$?
      zle redisplay
      typeset -f zle-line-init >/dev/null && zle zle-line-init
      return $ret
    }
    zle     -N   fzf-gitfcm-widget
    bindkey '^F' fzf-gitfcm-widget
fi
