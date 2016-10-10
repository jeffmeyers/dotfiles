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
brew install git htop vim tree tmux wget ack nvm postgresql reattach-to-user-namespace fzf --verbose

# install fzf shell extensions
/usr/local/opt/fzf/install --all

# set up node
mkdir -p ~/.nvm
cp $(brew --prefix nvm)/nvm-exec ~/.nvm/
source ~/.zshrc
nvm install stable
nvm use stable

# install rbenv
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

# install ruby
rbenv install -s 2.2.5

# set global ruby
rbenv global 2.2.5

# install tmuxinator
gem install tmuxinator

# copy tmuxinator config
mkdir ~/.tmuxinator
wget https://raw.githubusercontent.com/jeffthespasm/dotfiles/master/tmuxinator_default.yml -O ~/.tmuxinator/default.yml

# install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# install vim plugins
for plugin in https://github.com/ctrlpvim/ctrlp.vim.git https://github.com/scrooloose/nerdtree.git https://github.com/thoughtbot/vim-rspec.git https://github.com/scrooloose/nerdcommenter.git https://github.com/scrooloose/syntastic.git https://github.com/tpope/vim-endwise.git https://github.com/tpope/vim-surround.git https://github.com/tpope/vim-fugitive.git https://github.com/isRuslan/vim-es6
do
  cd ~/.vim/bundle && git clone $plugin && cd -
done

# install tomorrow-night
mkdir -p ~/.vim/colors
wget https://raw.githubusercontent.com/chriskempson/tomorrow-theme/master/vim/colors/Tomorrow-Night.vim -O ~/.vim/colors/Tomorrow-Night.vim
wget https://raw.githubusercontent.com/chriskempson/tomorrow-theme/master/OS%20X%20Terminal/Tomorrow%20Night.terminal -O ~/setup_tmp/Tomorrow-Night.terminal
open ~/setup_tmp/Tomorrow-Night.terminal

# set up vimrc
wget https://raw.githubusercontent.com/jeffthespasm/dotfiles/master/vimrc -O ~/.vimrc

# set up zshrc
wget https://raw.githubusercontent.com/jeffthespasm/dotfiles/master/zshrc -O ~/.zshrc

# set up tmux
wget https://raw.githubusercontent.com/jeffthespasm/dotfiles/master/tmux.conf -O ~/.tmux.conf

# set up git
wget https://raw.githubusercontent.com/jeffthespasm/dotfiles/master/gitconfig -O ~/.gitconfig

# set up vim temp dirs
mkdir -p ~/.vim/backups
mkdir -p ~/.vim/tmp

# install liberation mono
cd ~/tmp
wget 'https://www.dropbox.com/s/3gj31xg3z5kcvhi/liberation-mono.zip?dl=0' -O lib.zip
unzip -o lib.zip
open LiberationMono-Bold.ttf
open LiberationMono-BoldItalic.ttf
open LiberationMono-Italic.ttf
open LiberationMono-Regular.ttf

# reload zshell config
source ~/.zshrc
