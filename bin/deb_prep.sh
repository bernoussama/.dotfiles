#!/bin/bash

echo 'installing nala ...'
apt install nala

echo 'installing vim, kitty tmux...'
nala install vim kitty tmux

# install zsh
nala install zsh zsh-doc tldr stow

echo 'installing linux brew...'
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'adding it to path...'
(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/oussama/.profile
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

echo 'installing build-essential ...'
sudo apt-get install build-essential

echo 'installing gcc using brew'
brew install gcc

echo 'installing neovim...'
brew install neovim


echo 'changing default shell to zsh ...'
chsh -s $(which zsh)

