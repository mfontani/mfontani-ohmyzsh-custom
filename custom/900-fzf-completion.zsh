# vim ~~[TAB]
export FZF_COMPLETION_TRIGGER='~~'

# supports patterns like ^… or …$ or !… or 'foo (exactly matches "foo")
export FZF_COMPLETION_OPTS='-x'
export FZF_DEFAULT_OPTS='-x --height=100%'

# FZF https://github.com/junegunn/fzf
if [ -f ~/.fzf.zsh ]; then
    source ~/.fzf.zsh
fi
