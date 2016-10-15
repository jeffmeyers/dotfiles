export ZSH=/Users/jeff/.oh-my-zsh
ZSH_THEME="eastwood"
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export DISABLE_AUTO_TITLE=true
plugins=(git)
source $ZSH/oh-my-zsh.sh

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# aliases
alias w='cd ~/working'
alias ls='ls -al'
alias bake='bundle exec rake'
alias gp='git pull'

# use ag -g for fzf searches
export FZF_DEFAULT_COMMAND='ag -g ""'

export EDITOR=nvim
alias vim=nvim
