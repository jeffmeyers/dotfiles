def log(msg)
  puts '='*100
  puts msg
  puts '='*100
end

# create and navigate to setup tmp dir
log 'Creating temp directory'...
`mkdir -p ~/setup_tmp`
`cd ~/setup_tmp`

# install ohmyzsh
log 'Installing OhMyZsh...'
`sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

# install homebrew
log 'Installing Homebrew...'
`ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

# install cask
log 'Installing Cask...'
`brew install caskroom/cask/brew-cask`

# install basic utilities
log 'Installing basic utilities...'
`brew install git htop vim tree tmux wget ack nvm postgresql reattach-to-user-namespace --verbose`

# install cask utilities
log 'Installing cask utilities...'
`brew cask install virtualbox vagrant appcleaner coconutbattery --verbose`

# set up node
log 'Setting up NodeJS...'
`mkdir -p ~/.nvm`
`cp $(brew --prefix nvm)/nvm-exec ~/.nvm/`
`nvm install stable`
`nvm use stable`

# install rbenv
log 'Installing rbenv...'
`git clone https://github.com/sstephenson/rbenv.git ~/.rbenv`
`git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build`

# install ruby
log 'Installing ruby...'
`rbenv install -s 2.1.2`

# install pathogen
log 'Installing pathogen...'
`mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim`

# install vim plugins
log 'Installing vim plugins...'
plugins = [
  'https://github.com/kien/ctrlp.vim.git',
  'https://github.com/scrooloose/nerdtree.git',
  'https://github.com/thoughtbot/vim-rspec.git',
  'https://github.com/scrooloose/nerdcommenter.git',
  'https://github.com/scrooloose/syntastic.git',
  'https://github.com/tpope/vim-endwise.git',
  'https://github.com/tpope/vim-surround.git',
  'https://github.com/tpope/vim-fugitive.git'
]
plugins.each do |plugin|
  log "Installing #{plugin}..."
  %x{ cd ~/.vim/bundle && git clone #{plugin} && cd - }
end

# install tomorrow-night
log 'Installing Tomorrow-Night color theme...'
`mkdir -p ~/.vim/colors`
`wget https://raw.githubusercontent.com/chriskempson/tomorrow-theme/master/vim/colors/Tomorrow-Night.vim -O ~/.vim/colors/Tomorrow-Night.vim`
`wget https://raw.githubusercontent.com/chriskempson/tomorrow-theme/master/OS%20X%20Terminal/Tomorrow%20Night.terminal -O ~/setup_tmp/Tomorrow-Night.terminal`
`open ~/setup_tmp/Tomorrow-Night.terminal`

# configure git
`git config --global push.default simple`
`git config --global user.name "Jeff Meyers"`
`git config --global user.email "jeffreym.meyers@gmail.com"`

# set up vimrc
log 'Copying vimrc...'
`wget https://raw.githubusercontent.com/jeffthespasm/dotfiles/master/vimrc -O ~/.vimrc`

# set up zshrc
log 'Copying zshrc...'
`wget https://raw.githubusercontent.com/jeffthespasm/dotfiles/master/zshrc -O ~/.zshrc`

# set up tmux
log 'Copying tmux...'
`wget https://raw.githubusercontent.com/jeffthespasm/dotfiles/master/tmux.conf -O ~/.tmux.conf`

# set up vim temp dirs
log 'Setting up vim backup and temp directories...'
`mkdir -p ~/.vim/backups`
`mkdir -p ~/.vim/tmp`

# reload zshell config
log 'Reloading zsh config...'
`source ~/.zshrc`
