# symlink vim config
ln -sF ~/Dropbox/dotfiles/.vimrc ~/.vimrc

# install homebrew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

# install brew packages
brew install htop-osx tree tmux ack elasticsearch heroku-toolbelt nginx mutt node postgresql terminal-notifier wget redis rabbitmq rbenv

# grab lucius light theme
mkdir ~/.iterm
curl https://raw.github.com/jonathanfilip/lucius/master/iterm2/LuciusLight.itermcolors ~/.iterm

# set up oh-my-znh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# install ruby 1.9.3 and jruby 1.7.11
rbenv install jruby-1.7.11
rbenv install 1.9.3-p484
rbenv global jruby-1.7.11

echo "[alias]
  gp = pull
  co = checkout
  ci = commit
  st = status
  br = branch
  hist = log --pretty=format:\"%h %ad | %s%d [%an]\" --graph --date=short
  type = cat-file -t
  dump = cat-file -p" >> ~/.gitconfig

# set up zsh
"alias be='bundle exec'

alias ls='ls -alG'
