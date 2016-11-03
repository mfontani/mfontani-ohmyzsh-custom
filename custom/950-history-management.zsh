# Else I end up with a HUGE file, with duplicates - and I only want a huge file
# with NO duplicates.
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt SHARE_HISTORY
export SAVEHIST=100000000
export HISTSIZE=100000000
export HISTFILESIZE=100000000
