# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    zsh-interactive-cd
    # zsh-autosuggestions
    # zsh-history-substring-search
)

fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

source $ZSH/oh-my-zsh.sh

# User configuration

# Use Ctrl-V to edit the command line in editor
autoload edit-command-line; zle -N edit-command-line
bindkey '^v' edit-command-line

#  ╔══════════════════════════════════════════════════════════╗
#  ║                      Custom Aliases                      ║
#  ╚══════════════════════════════════════════════════════════╝

alias ls=exa
alias l="ls -alh"
alias ll="ls -lh"
alias v=nvim
alias vim=nvim
alias gs=lazygit
alias j=z

#  ╔══════════════════════════════════════════════════════════╗
#  ║                            Zk                            ║
#  ╚══════════════════════════════════════════════════════════╝

# Set path to default notebook directory for ZK
export ZK_NOTEBOOK_DIR="$HOME/Developer/Brain"

#  ╔══════════════════════════════════════════════════════════╗
#  ║                           Nvim                           ║
#  ╚══════════════════════════════════════════════════════════╝

# Set nvim as default editor
export EDITOR=nvim

# Set nvim as default manpager
export MANPAGER='nvim +Man!'

#  ╔══════════════════════════════════════════════════════════╗
#  ║                          Z.LUA                           ║
#  ╚══════════════════════════════════════════════════════════╝

# Set Path to your Z.lua installation
Z_LUA_PATH="$HOME/Developer/z.lua"

# Uncomment below to use z.lua
eval "$(lua $Z_LUA_PATH/z.lua --init zsh)"

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-history-substring-search/zsh-history-substring-search.zsh

export CC=gcc-12

gpg-connect-agent /bye
export GPG_TTY=$(tty)
