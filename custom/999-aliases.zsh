alias org='open -a Emacs ~/org/theregister.org'
alias mail='echo USE MUTT'
alias vip='echo USE VIM'
alias vi='echo USE VIM'
alias e=emacs

# alias tf=/usr/local/bin/tf

alias ddjs="perl -Ilib -MJavaScript::HashRef::Decode=decode_js -lE'use Data::Dumper::Concise; say Dumper decode_js <>'"

alias hosts="sudo /usr/bin/vim -u NONE /etc/hosts"
alias homepage="vim ~/Documents/homepage.html"
alias wiki="vim ~/Sites/wiki/index.md"

alias R=ranger

alias todo=todo.sh

alias view='vim -R'
alias vimdiff='vim -d'

# Don't try to glob with zsh so you can do
# stuff like ga *foo* and correctly have
# git add the right stuff
alias git='noglob git'
compdef __git_branch_names GCB

alias g='PAGER= git'
alias s='git s'

# alias Tat='tmux -2u at -t'
# alias T='tmux -2u'
alias Tls='tmux -2u ls'
alias T='tmux -2u at -t'
alias TT='tmux -2u'

# ElReg stuff
if [[ -d ~/theregister ]]; then
    alias elreg="cd ~/theregister"
else
    alias elreg="cd /reg/repo"
fi
alias pub='sudo -u www-data /reg/repo/trois/bin/reg-publish -v'
