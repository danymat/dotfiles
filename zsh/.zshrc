
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc. Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/opt/yabai/bin/:$PATH"
export PATH=$PATH:$(go env GOPATH)/bin

# ZPLUG
export ZPLUG_HOME=/opt/homebrew/opt/zplug
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
export MANPAGER='nvim +Man!'
autoload edit-command-line; zle -N edit-command-line
bindkey '^v' edit-command-line

export JDTLS_HOME=/opt/jdt-language-server-latest/

# Personal Aliases
alias vim=nvim
alias v=nvim
alias gs=lazygit
alias zz="z -I"
alias j=z
alias jj=zz
alias gcc=gcc-11
alias luamake=/opt/lua-language-server/3rd/luamake/luamake
alias ls=' exa --group-directories-first'
alias la='ls -al'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[[ -s "$HOME/.xmake/profile" ]] && source "$HOME/.xmake/profile" # load xmake profile

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# fa - including hidden directories
fa() {
  local dir
  dir=$(find ${1:-~} -type d 2> /dev/null | fzf +m) && cd "$dir"
}


# BEGIN_KITTY_SHELL_INTEGRATION
if test -e "/private/var/folders/n1/4279cdyx6fbf50r3cwqdf0pr0000gn/T/AppTranslocation/F49C8B63-5701-45CA-AFA7-4DE4C9380317/d/kitty.app/Contents/Resources/kitty/shell-integration/kitty.zsh"; then source "/private/var/folders/n1/4279cdyx6fbf50r3cwqdf0pr0000gn/T/AppTranslocation/F49C8B63-5701-45CA-AFA7-4DE4C9380317/d/kitty.app/Contents/Resources/kitty/shell-integration/kitty.zsh"; fi
# END_KITTY_SHELL_INTEGRATION

export PATH="/opt/homebrew/opt/curl/bin:$PATH"
export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
