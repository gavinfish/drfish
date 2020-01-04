/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew cask install google-chrome
brew cask install shadowsocksx-ng
brew cask install visual-studio-code
brew cask install intellij-idea
brew cask install pycharm
brew cask install goland
brew cask install docker
brew cask install flux
brew cask install iterm2
brew cask install wechat
brew cask install neteasemusic
brew cask install qq
brew cask install sourcetree
brew cask install adoptopenjdk8

brew install maven
brew install go
brew install jq

# install GNU Command Line Tools
brew install coreutils
brew install binutils
brew install diffutils
brew install ed
brew install findutils
brew install gawk
brew install gnu-indent
brew install gnu-sed
brew install gnu-tar
brew install gnu-which
brew install gnutls
brew install grep
brew install gzip
brew install screen
brew install watch
brew install wdiff
brew install wget

# OS X ships a GNU version, but too old
brew install bash
brew install gdb  # gdb requires further actions to make it work. See `brew info gdb`.
brew install gpatch
brew install m4
brew install make
brew install nano

xcode-select --install