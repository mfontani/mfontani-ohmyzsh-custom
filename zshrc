# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster"
ZSH_THEME="mfontani3"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ~/GIT/mfontani-ohmyzsh-custom/custom/
ZSH_CUSTOM=~/GIT/mfontani-ohmyzsh-custom/custom/

HOSTNAME=$( hostname )
export HOSTNAME

# Only place where the hostname is changed; everything else uses the below
# environment variable.
if [[ $HOSTNAME == Iride.local ]]; then
    export MFONTANI_ZSH_ON_MAC=1
    alias mux=tmuxinator
else
    export MFONTANI_ZSH_ON_MAC=0
fi

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git)
if [[ "$MFONTANI_ZSH_ON_MAC" == "1" ]]; then
    plugins=(osx tmuxinator vi-mode brew rvm ruby bundler zsh-syntax-highlighting history-substring-search git git-extras go golang redis-cli rsync cpanm perl curl vagrant)
else
    plugins=(               vi-mode      rvm ruby bundler zsh-syntax-highlighting history-substring-search git git-extras go golang redis-cli rsync cpanm perl curl vagrant)
fi

source $ZSH/oh-my-zsh.sh

# 20161103 - fix for colors on dev/linux; they do work on the mac
if [[ ! -x /usr/local/bin/gls ]]; then
    alias ls='ls -G --color'
fi

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#############
# RUST
# export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$PATH:$HOME/anaconda3/bin"

# Upgrading fzf insists on placing this line here, so I'm just going to leave
# this be.
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# This needs to be at the end of everything, as syntax highlight overrides a
# ton of ZLE functions
if [[ -f /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] then
    source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi
