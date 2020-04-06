#!/bin/bash

mkdir -p tmp

# install packages
brew install \
  python \

# vscode extensions
code \
  --install-extension ms-python.python \
