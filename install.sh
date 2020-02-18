#!/usr/bin/env bash

if hash brew 2>/dev/null; then
  echo "Installing brew..."
  #/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Tapping Casks..."

brew tap aws/tap
brew tap homebrew/cask
brew tap homebrew/core

echo "Starting Installations..."

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
brew install checkstyle
brew install docker 
brew install ctags
brew install python3
brew link --overwrite python3
brew install azure-cli
brew install awscli
brew cask install dotnet

npm install -g taskbook gulp-cli

echo "Finished Installations..."

echo "Starting Config..."

git config --global init.templatedir '~/.git-templates'

echo "Finished Config..."
