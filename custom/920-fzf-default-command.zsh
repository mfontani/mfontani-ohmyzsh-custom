# alter FZF_DEFAULT_COMMAND depending on which programs we have which are
# better than fzf's default. Order them by worst to best, so the last (and
# best) one wins.

# If we have "ag" - https://github.com/ggreer/the_silver_searcher - use it
if [[ -x /usr/local/bin/ag || -x ~/bin/ag ]]; then
    export FZF_DEFAULT_COMMAND='ag -l -g ""'
fi

# If we have "ripgrep" - https://github.com/BurntSushi/ripgrep - use it
if [[ -x /usr/local/bin/rg || -x ~/bin/rg ]]; then
    # --files: List files that would be searched but do not search
    # --no-ignore: Do not respect .gitignore, etc...
    # --hidden: Search hidden files and folders
    # --follow: Follow symlinks
    # --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
    export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'
fi

# If we have "fd" - https://github.com/sharkdp/fd - use it
if [[ -x /usr/local/bin/fd || -x ~/bin/fd ]]; then
    export FZF_DEFAULT_COMMAND='fd --hidden --type f'
    _fzf_compgen_path() {
        fd --hidden --follow --exclude ".git" . "$1"
    }
    _fzf_compgen_dir() {
        fd --type d --hidden --follow --exclude ".git" . "$1"
    }
fi
