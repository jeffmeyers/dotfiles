#!/bin/bash

# create and navigate to setup tmp dir
mkdir -p ~/setup_tmp
cd ~/setup_tmp

# install ohmyzsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install cask
brew install caskroom/cask/brew-cask

# install basic utilities
brew install git htop vim tree wget ag nvm postgresql fzf neovim/neovim/neovim --verbose

# install fzf shell extensions
/usr/local/opt/fzf/install --all

# set up node
mkdir -p ~/.nvm
cp $(brew --prefix nvm)/nvm-exec ~/.nvm/
source ~/.zshrc
nvm install stable
nvm alias default stable

# install rbenv
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

# install ruby
rbenv install -s 2.3.1

# set global ruby
rbenv global 2.3.1

# install vim-plug
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# set up vimrc
mkdir -p ~/.config/nvim
wget https://raw.githubusercontent.com/jeffthespasm/dotfiles/master/vimrc -O ~/.config/nvim/init.vim

# set up zshrc
wget https://raw.githubusercontent.com/jeffthespasm/dotfiles/master/zshrc -O ~/.zshrc

# set up git
wget https://raw.githubusercontent.com/jeffthespasm/dotfiles/master/gitconfig -O ~/.gitconfig

# reload zshell config
source ~/.zshrc
