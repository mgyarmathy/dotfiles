#!/bin/bash
mkdir -p tmp

# reference: https://flutter.dev/docs/get-started/install/macos

# install android studio (install the SDK and intel-haxm through Android Studio)
brew cask install \
  android-studio \

# install dart
brew tap dart-lang/dart
brew install dart

# install flutter
if ! [ -x "$(command -v brew)" ]; then
  curl -fsSL -o tmp/flutter.zip https://storage.googleapis.com/flutter_infra/releases/stable/macos/flutter_macos_v1.12.13+hotfix.9-stable.zip
  unzip tmp/flutter.zip -d /usr/local/bin/
fi

# install vscode extensions
code \
  --install-extension dart-code.dart-code \
  --install-extension dart-code.flutter \

# initialize xcode
# sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
# sudo xcodebuild -runFirstLaunch
# sudo xcodebuild -license

echo 'Updating your .bash_profile with the following:'
cat <<EOF | tee -a ~/.bash_profile

# android
export ANDROID_HOME="/Users/\$USER/Library/Android/sdk"
export PATH="\$PATH:\$ANDROID_HOME/tools:\$ANDROID_HOME/platform-tools"

# flutter
export PATH="\$PATH:/usr/local/bin/flutter/bin"
EOF

echo "Finished installing flutter dev environment."
echo "Please visit https://flutter.dev/docs/get-started/install/macos for further instructions."
