# Effin Ruby
if [[ -e /usr/local/bin/rbenv ]]; then
    export RBENV_ROOT=/usr/local/var/rbenv

    # if which rbenv >/dev/null; then eval "$(rbenv init -)"; fi
    eval "$(rbenv init -)";

    # Gems installed via gem install --user-install NAME
    if [[ -d ~/.gem/ruby/2.0.0/bin ]]; then
        export PATH=~/.gem/ruby/2.0.0/bin:$PATH
    fi
    if [[ -d ~/.gem/ruby/2.3.0/bin ]]; then
        export PATH=~/.gem/ruby/2.3.0/bin:$PATH
    fi
fi
