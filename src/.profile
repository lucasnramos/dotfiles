# Shell Variables
export ALIASES="$HOME/.config/aliases"
export EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="alacritty"
export FILEMANAGER="nnn"
export GFM="thunar"
export BROWSER="firefox"
export SCRIPTS="$HOME/.local/scripts"
export APPIMAGEDIR="$HOME/.local/AppImages"

# Android SDK and Studio
export ANDROID_BASE="$HOME/.local/Android"
export ANDROID_HOME="$ANDROID_BASE/Sdk"
export ANDROID_SDK_ROOT=$ANDROID_HOME
export ANDROID_STUDIO="$ANDROID_BASE/studio/bin"
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk/"

# set PATH so it includes user's private bin directories
PATH="$APPIMAGEDIR:/snap/bin/:$SCRIPTS:$HOME/bin:$ANDROID_STUDIO:$HOME/.local/bin:$HOME/.nvm:$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$JAVA_HOME/bin:$JAVA_HOME/lib/amd64:$PATH"
