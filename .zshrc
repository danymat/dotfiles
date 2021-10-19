
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc. Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH="/usr/local/sbin:$PATH"

# ZPLUG
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug romkatv/powerlevel10k, as:theme, depth:1
zplug "zplug/zplug", hook-build:'zplug --self-manage'
zplug "skywind3000/z.lua"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2 # Should be loaded 2nd last.
zplug "zsh-users/zsh-history-substring-search", hook-load:"bindkey '^[[A' history-substring-search-up; bindkey '^[[B' history-substring-search-down"

# Supports oh-my-zsh plugins and the like
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/common-aliases", from:oh-my-zsh
zplug "lib/theme-and-appearance", from:oh-my-zsh
zplug "plugins/zsh-interactive-cd", from:oh-my-zsh


# Check for uninstalled plugins.
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

# Then, source plugins and add commands to $PATH
zplug load

# Cool stuff
export EDITOR=nvim
autoload edit-command-line; zle -N edit-command-line
bindkey '^v' edit-command-line

export JDTLS_HOME=/opt/jdt-language-server-1.4.0-202109161824

# Personal Aliases
alias vim=nvim
alias j=z
alias gs=lazygit

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[[ -s "$HOME/.xmake/profile" ]] && source "$HOME/.xmake/profile" # load xmake profile
