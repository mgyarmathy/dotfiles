#!/bin/bash

mkdir -p tmp

# copy bash configuration
cp .bash_profile ~/.bash_profile

# install Snazzy theme
curl -s -o tmp/Snazzy.terminal https://raw.githubusercontent.com/sindresorhus/terminal-snazzy/master/Snazzy.terminal
open tmp/Snazzy.terminal

# install Homebrew
if ! [ -x "$(command -v brew)" ]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.bash_profile
  source ~/.bash_profile
fi

# install applications
brew install --cask \
  aware \
  docker \
  dropbox \
  flux \
  google-chrome \
  notion \
  sourcetree \
  spectacle \
  spotify \
  tableplus \
  visual-studio-code \

# vscode extensions
code \
  --install-extension ms-vsliveshare.vsliveshare \

# git config
echo "Configuring git..."
read -p 'git config --global user.name: ' gitusername
git config --global user.name $gitusername

read -p 'git config --global user.email: ' gitemail
git config --global user.email $gitemail

echo 'git config --global pull.rebase true'
git config --global pull.rebase true

echo 'git config --global fetch.prune true'
git config --global fetch.prune true

# additional utilities
curl -fsSL -o tmp/kiibohd.dmg https://github.com/kiibohd/configurator/releases/download/v1.0.2/kiibohd-configurator-1.0.2-mac.dmg
open tmp/kiibohd.dmg


