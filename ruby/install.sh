#!/bin/bash

# install rbenv
if ! [ -x "$(command -v rbenv)" ]; then
brew install rbenv

cat << 'EOF' >> ~/.bash_profile

# ruby
eval "$(rbenv init - bash)"
EOF
fi
