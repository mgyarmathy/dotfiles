#!/bin/bash

# install flutter
if ! [ -x "$(command -v flutter)" ]; then
  brew install --cask flutter
fi

# install vscode extensions
code \
  --install-extension dart-code.dart-code \
  --install-extension dart-code.flutter \

# install android studio (install the SDK and intel-haxm through Android Studio)
brew install --cask \
  android-studio \

# install xcode
# download latest version from https://developer.apple.com/download/applications/
# sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
# sudo xcodebuild -runFirstLaunch
# sudo xcodebuild -license

# install cocoapods
sudo gem install cocoapods

echo 'Updating your .bash_profile with the following:'
cat <<EOF | tee -a ~/.bash_profile

# android
export ANDROID_HOME="/Users/\$USER/Library/Android/sdk"
export PATH="\$PATH:\$ANDROID_HOME/tools:\$ANDROID_HOME/platform-tools"
EOF

flutter doctor -v

echo "Finished installing flutter dev environment."
echo "Please visit https://flutter.dev/docs/get-started/install/macos for further instructions."
