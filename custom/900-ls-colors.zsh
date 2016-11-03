export LSCOLORS=Fxfxcxdxbxegedabagacad

MY_LS_COLORS="di=01;35:*.do=38;5;91:*.txt=38;5;173:*.conf=38;5;42:*.PL=38;5;137:*.pl=38;5;193:*.pdf=1;38;5;140"
if [ -z "$LS_COLORS" ]; then
    export LS_COLORS="$MY_LS_COLORS"
else
    export LS_COLORS="$LS_COLORS:$MY_LS_COLORS"
fi
