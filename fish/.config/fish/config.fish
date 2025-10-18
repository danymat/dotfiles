if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_config theme choose "rose"
fish_add_path /opt/homebrew/bin
fish_add_path ~/.local/share/bob/nvim-bin
fish_vi_key_bindings

alias v="nvim"
alias vim="nvim"
alias n="navi"

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :

# Created by `pipx` on 2025-08-02 09:46:24
set PATH $PATH ~/.local/bin

# Added by LM Studio CLI (lms)
set -gx PATH $PATH ~/.lmstudio/bin
# End of LM Studio CLI section

set -gx ZK_NOTEBOOK_DIR ~/Developer/Brain

zoxide init fish | source

