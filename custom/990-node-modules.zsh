if [[ -x /usr/bin/npm || -x /usr/local/bin/npm ]]; then
    if [[ -d ~/node_modules ]]; then
        export NODE_PATH=$NODE_PATH:~/node_modules
        export PATH=$PATH:$(cd ~; npm bin)
    fi
fi
