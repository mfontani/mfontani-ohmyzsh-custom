# PLENV
if [[ -d $HOME/.plenv ]]; then
    # this was on dev1:
    # export PATH="$HOME/.plenv/bin:$PATH"
    # eval "$($HOME/.plenv/bin/plenv init -)"
    # Add path to our custom bins
    export PATH=$HOME/bin:$PATH:$yadr/bin:$yadr/bin/yadr:/usr/local/bin:/usr/local/sbin
    export PATH="$HOME/.plenv/bin:$HOME/.plenv/shims:$PATH"
    eval "$(plenv init -)"
fi
