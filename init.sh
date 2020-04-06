#!/bin/bash

mkdir -p tmp

# copy bash configuration
cp .bash_profile ~/.bash_profile

# install Snazzy theme
curl -s -o tmp/Snazzy.terminal https://github.com/sindresorhus/terminal-snazzy/raw/master/Snazzy.terminal

# install Homebrew
if ! [ -x "$(command -v brew)" ]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# install packages
brew install \
  watch \

# install applications
brew cask install \
  aware \
  docker \
  dropbox \
  google-chrome \
  notion \
  sourcetree \ 
  spectacle \
  spotify \
  visual-studio-code \

# vscode extensions
code \
  --install-extension ms-vsliveshare.vsliveshare \

# additional utilities
curl -fsSL -o tmp/kiibohd.dmg https://github.com/kiibohd/configurator/releases/download/v1.0.2/kiibohd-configurator-1.0.2-mac.dmg
open tmp/kiibohd.dmg


