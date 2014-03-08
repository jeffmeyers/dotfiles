# symlink vim config
ln -sF ~/Dropbox/dotfiles/.vimrc ~/.vimrc

# install homebrew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

# install rvm
curl -sSL https://get.rvm.io | bash -s stable

# install brew packages
brew install htop-osx tree tmux ack elasticsearch heroku-toolbelt nginx mutt node postgresql terminal-notifier wget redis rabbitmq

# grab lucius light theme
mkdir ~/.iterm
curl https://raw.github.com/jonathanfilip/lucius/master/iterm2/LuciusLight.itermcolors ~/.iterm

# set up oh-my-znh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# set up zsh
"alias be='bundle exec'

alias ls='ls -alG'

bindkey -v
bindkey '^R' history-incremental-search-backward
alias gp='git pull'

# Load RVM if it is installed,
# #  first try to load  user install
# #  then try to load root install, if user install is not there.
if [ -s \"$HOME/.rvm/scripts/rvm\" ] ; then
  . \"$HOME/.rvm/scripts/rvm\"
elif [ -s \"/usr/local/rvm/scripts/rvm\" ] ; then
  . \"/usr/local/rvm/scripts/rvm\"
fi

# tmux aliases
alias tw0='tmux select-window -t 0'
alias tw1='tmux select-window -t 1'
alias tw2='tmux select-window -t 2'
alias tw3='tmux select-window -t 3'" >> ~/.zshrc

tmux new -s default
