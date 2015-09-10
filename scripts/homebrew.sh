echo "Checking for homebrew"

if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew upgrade

echo "Checking for zsh"
if [ -e "/bin/zsh" ]; then
  echo "Found zsh"
else
  echo "Installing zsh..."
  brew install zsh

  echo "Changing shell to zsh"
  chsh -s /bin/zsh
fi

echo "Checking for oh-my-zsh"

if [ -d "$HOME/.oh-my-zsh" ]; then
  echo "Found oh-my-zsh"
else
  echo "No oh-my-zsh installation found"
  echo "Installing oh-my-zsh..."

  git clone https://github.com/robbyrussell/oh-my-zsh.git "$HOME/.oh-my-zsh"
fi

######### INSTALL #########

echo "Installing various homebrew packages..."
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

brew tap homebrew/dupes
brew tap caskroom/cask
brew tap caskroom/versions
brew install git
brew install mercurial
brew install z
brew install coreutils 
brew install findutils
brew install openssl
brew install wget
brew install redis
brew install mysql
brew install brew-cask
brew install ffmpeg
brew install vim --with-lua
brew install figlet
brew install jenv
brew install rethinkdb
brew install docker boot2docker

# Couchdb stuff
brew install autoconf
brew install autoconf-archive
brew install automake
brew install libtool
brew install erlang
brew install icu4c
brew install spidermonkey
brew install curl
brew install couchdb

# Cask install some stuff globally
brew cask install alfred
brew cask install caffeine
brew cask install flux
brew cask install virtualbox
brew cask install google-chrome
brew cask install iterm2
brew cask install nvalt
brew cask install slack
brew cask install atom
brew cask install dropbox
brew cask install google-drive
brew cask install firefox
brew cask install google-chrome
brew cask install spotify
brew cask install sublime-text3
brew cask install vlc
brew cask install java
brew cask install java7
brew cask install skype
brew cask install mou
brew cask install dash
brew cask install screenflick
brew cask install transmit
brew cask install mailbox
brew cask install sketch
brew cask install appcleaner
brew cask install the-unarchiver
brew cask install spectacle
brew cask install kodi
brew cask install apache-couchdb
brew cask install intellij-idea-ce
brew cask install android-studio
brew cask install authy-bluetooth
brew cask install awareness
brew cask install steam
brew cask install virtualbox

echo "Checking for GOPATH"
if [ -d $GOPATH ]; then
  echo "Found GOPATH"
else
  echo "No GOPATH found"
  echo "Creating GOPATH"
  mkdir $HOME/go
fi

brew install go
