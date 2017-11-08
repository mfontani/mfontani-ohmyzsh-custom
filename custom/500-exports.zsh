export TERM=xterm-256color

# If I'm connecting via ssh from the macbook, using iTerm2, which I know comes
# with $COLORTERM=truecolor, set it inside my dev environments too:
if [[ $SSH_CLIENT =~ '^172[.]16[.]200[.]1[ ]' ]]; then
    export COLORTERM=truecolor
fi
# Same goes if I'm connecting via ssh from the macbook's VM to another vm:
if [[ $SSH_CLIENT =~ '^10[.]0[.]2[.]2[ ]' ]]; then
    export COLORTERM=truecolor
fi
