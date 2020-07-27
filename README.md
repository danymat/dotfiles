# dotfiles

Daniel Mathiot personal dotfiles

<!-- TABLE OF CONTENTS -->
## Table of Contents

* [Installation Method](#installation-method)
  * [Linux](#linux)
  * [Mac Os](#mac-os)


## Installation Method 

### Linux

1. Install packages

```bash
apt-get install zsh tmux vim autojump

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

2. Install colorschemes

*If powerlevel10k starts installation, quit and do nothing. The dotfiles will do the job*

```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k

git clone https://github.com/tomasiser/vim-code-dark.git ~/.vim/
mkdir ~/.vim/colors/
cp ~/.vim/vim-code-dark/colors/codedark.vim ~/.vim/colors/
```
3. Install zsh plugins

```bash
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

4. Copy dotfiles to home directory

```bash
cp .tmux.conf .vimrc .zshrc .p10k.zsh ~/
```
### Mac Os

1. Install Brew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

2. Install packages

```bash
brew install tmux vim zsh autojump
```
* Please refer to Linux installation and do the same from 2. to end.

