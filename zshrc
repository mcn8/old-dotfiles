export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
export UPDATE_ZSH_DAYS=3
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
plugins=(git)

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# User configuration

# for golang
export GOPATH=$HOME/go
export GOROOT=$/usr/local/opt/go/libexec/bin
export PATH=$PATH:$GOROOT
export PATH=$PATH:$GOPATH/bin
export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"

source $ZSH/oh-my-zsh.sh
