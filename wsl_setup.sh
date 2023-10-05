#!/bin/env bash

sudo apt install curl build-essential zsh zsh-doc fzf tmux python3 nala stow unzip zoxide thefuck -y

chsh -s `which zsh`

#install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash

# Install miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
sh ./Miniconda3-latest-Linux-x86_64.sh

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/oussama/.profile
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

brew install neovim gh

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

source "$HOME/.cargo/env"

~/.dotfiles/bin/goinstall 1.21.1

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k