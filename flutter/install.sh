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
curl -fsSL -o tmp/flutter.zip https://storage.googleapis.com/flutter_infra/releases/stable/macos/flutter_macos_v1.12.13+hotfix.9-stable.zip
unzip tmp/flutter.zip -d /usr/local/bin/

# install vscode extensions
code \
  --install-extension dart-code.dart-code \
  --install-extension dart-code.flutter \

# initialize xcode
# sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
# sudo xcodebuild -runFirstLaunch
# sudo xcodebuild -license

echo "Finished installing flutter dev environment."
echo "Update your .bash_profile with the following:"
echo "  export ANDROID_HOME=/Users/$USER/Library/Android/sdk"
echo "  export PATH=${PATH}:/usr/local/bin/flutter/bin:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools"
