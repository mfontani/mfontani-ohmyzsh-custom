# add keybinding for (cherry-)picking a SHA from "git llp"
if [[ $- == *i* ]]; then
    # CTRL-P - Paste the selected SHA from "git llp" into the command line
    # I don't really use CTRL+P for "previous", so that's it.
    __gitcpllpsel() {
      local cmd="git log --no-prefix --pretty=oneline --reverse --abbrev-commit ..@{-1}"
      setopt localoptions pipefail 2> /dev/null
      eval "$cmd" | FZF_DEFAULT_OPTS="--height ${FZF_TMUX_HEIGHT:-40%} --reverse $FZF_DEFAULT_OPTS $FZF_CTRL_P_OPTS" $(__fzfcmd) -m "$@" | while read item; do
        echo -n "$item" | cut -d ' ' -f 1
      done
      local ret=$?
      echo
      return $ret
    }
    fzf-gitcpllp-widget() {
      LBUFFER="${LBUFFER}$(__gitcpllpsel)"
      local ret=$?
      zle redisplay
      typeset -f zle-line-init >/dev/null && zle zle-line-init
      return $ret
    }
    zle     -N   fzf-gitcpllp-widget
    bindkey '^P' fzf-gitcpllp-widget
fi
