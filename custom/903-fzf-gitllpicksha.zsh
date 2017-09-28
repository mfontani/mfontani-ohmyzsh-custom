# add keybinding for picking a "full SHA" from something like "git ll", helpful
# if you want to git show something or things like that.
if [[ $- == *i* ]]; then
    # CTRL-S - Paste the selected SHA from "git ll" into the command line
    __gitllpicksha() {
      local cmd="git log --no-prefix --pretty='format:%H %s' --reverse --abbrev-commit master.."
      setopt localoptions pipefail 2> /dev/null
      eval "$cmd" | FZF_DEFAULT_OPTS="--height ${FZF_TMUX_HEIGHT:-40%} --reverse $FZF_DEFAULT_OPTS $FZF_CTRL_S_OPTS" $(__fzfcmd) -m "$@" | while read item; do
        echo -n "$item" | cut -d ' ' -f 1
      done
      local ret=$?
      echo
      return $ret
    }
    fzf-gitllpicksha-widget() {
      LBUFFER="${LBUFFER}$(__gitllpicksha)"
      local ret=$?
      zle redisplay
      typeset -f zle-line-init >/dev/null && zle zle-line-init
      return $ret
    }
    zle     -N   fzf-gitllpicksha-widget
    bindkey '^S' fzf-gitllpicksha-widget
fi
