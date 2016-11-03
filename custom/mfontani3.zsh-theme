local host_color='%F{154}'
if [[ "$MFONTANI_ZSH_ON_MAC" ]]; then
    host_color="$reset_color$fg[blue]"
else
    host_color="$fg[red]"
fi

# Might want to use ➤ instead of $
PROMPT='%B%F{208}%n%f%{$fg_bold[white]%}@%{$host_color%}%m%f%{$reset_color%} - %{$fg[blue]%}%~%{$fg_bold[yellow]%}$(git-radar --zsh)%{$reset_color%}
%{$fg[blue]%}$ %{$reset_color%}'
RPROMPT='%{$fg[blue]%}%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=" "
ZSH_THEME_GIT_PROMPT_SUFFIX=" "
ZSH_THEME_GIT_PROMPT_DIRTY=" ✗"
ZSH_THEME_GIT_PROMPT_CLEAN=" ✔"
