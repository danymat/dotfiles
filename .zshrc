# If you come from bash you might have to change your $PATH.
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"
export PATH="/Applications/VMware Fusion.app/Contents/Library:$PATH"
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

alias ls=eza
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
#
#  ╔══════════════════════════════════════════════════════════╗
#  ║                          Misc                            ║
#  ╚══════════════════════════════════════════════════════════╝

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-history-substring-search/zsh-history-substring-search.zsh

export CC=gcc-12
export VM="$HOME/Virtual Machines.localized/kali.vmwarevm/kali.vmx"
export PATH="$HOME/go/bin:$PATH"
source $HOME/.gpt_key

hh() {
  print -z $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac --query="$1" | sed -E 's/ *[0-9]*\*? *//' | sed -E 's/\\/\\\\/g')
}
export PATH="/opt/homebrew/opt/node@18/bin:$PATH"
export PATH="$HOME/.deno/bin:$PATH"

source ~/.openai_key

# Created by `pipx` on 2023-08-28 15:25:38
export PATH="$PATH:$HOME/.local/bin"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source ~/.obsidian_key


# Generated for pdtm. Do not edit.
export PATH=$PATH:/Users/danielmathiot/.pdtm/go/bin

