#!/bin/bash

# install ohmyzsh
echo "installing oh my zsh..."
if [ -d ~/.oh-my-zsh ]
then
  echo "already installed"
else
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# install homebrew
echo "installing homebrow..."
if [ -x "$(command -v brew)" ]
then
  echo "already installed"
else
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# install basic utilities
brew install git htop tmux vim tree wget ag nvm postgresql fzf neovim rbenv --verbose

# install fzf shell extensions
/usr/local/opt/fzf/install --all

# set up node
mkdir -p ~/.nvm
cp $(brew --prefix nvm)/nvm-exec ~/.nvm/
source ~/.zshrc
nvm install stable
nvm alias default stable

# install ruby
rbenv install -s 2.5.1
rbenv global 2.5.1

# install vim-plug
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# set up vimrc
mkdir -p ~/.config/nvim
cp ./vimrc ~/.config/nvim/init.vim

# set up zshrc
cp ./zshrc ~/.zshrc

# set up git
cp ./gitconfig ~/.gitconfig

# set up tmux
cp ./tmux ~/.tmux.conf

# reload zshell config
source ~/.zshrc
