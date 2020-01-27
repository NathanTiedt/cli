#!/usr/bin/env bash

echo "Installing brew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Tapping Casks..."
brew tap aws/tap
brew tap homebrew/cask
brew tap homebrew/core

echo "STarting Installations..."
# General Installs
brew install node
brew install thefuck 
brew install nnn 
brew install git-flow 
brew install tmux 
brew install telnet 
brew install jq 
brew install fzf 
brew install ack 
brew install htop 
brew install tig 
brew install typescript 
brew install terraform 
brew install postgres 
brew install docker 
brew install ctags

npm install -g taskbook gulp-cli
echo "Finished Installations..."