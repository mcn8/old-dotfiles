export ZSH=$HOME/.oh-my-zsh
export DOTFILES=$HOME/Dev/dotfiles
ZSH_THEME="sorin"
export UPDATE_ZSH_DAYS=3
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
plugins=(git z zsh-completions)
autoload -U compinit && compinit

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:$DOTFILES/bin"

# User configuration

# for golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# for android
export PATH=$PATH:/Users/micks/Library/Android/sdk/platform-tools

# for jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# for scala
export SCALA_HOME=/Users/micks/Dev/scala-2.11.7
export PATH=$PATH:$SCALA_HOME/bin

source $ZSH/oh-my-zsh.sh

# other
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"

# set git vim to brew's updated vim
git config --global core.editor /usr/local/bin/vim

source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
